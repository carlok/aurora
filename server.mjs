import http from "node:http";
import fs from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";

const root = path.dirname(fileURLToPath(import.meta.url));
const port = Number(process.env.PORT || 8081);
const host = process.env.HOST || "0.0.0.0";

const types = {
  ".html": "text/html; charset=utf-8",
  ".js": "text/javascript; charset=utf-8",
  ".mjs": "text/javascript; charset=utf-8",
  ".css": "text/css; charset=utf-8",
  ".json": "application/json; charset=utf-8",
  ".wasm": "application/wasm",
  ".wat": "text/plain; charset=utf-8",
  ".map": "application/json; charset=utf-8",
  ".ts": "text/plain; charset=utf-8",
  ".txt": "text/plain; charset=utf-8",
  ".md": "text/plain; charset=utf-8",
  ".png": "image/png",
  ".jpg": "image/jpeg",
  ".jpeg": "image/jpeg",
  ".svg": "image/svg+xml",
  ".ico": "image/x-icon"
};

function send(res, status, body, headers = {}) {
  const data = Buffer.isBuffer(body) ? body : Buffer.from(body);
  res.writeHead(status, { "Content-Length": data.length, ...headers });
  res.end(data);
}

const server = http.createServer((req, res) => {
  let pathname;
  try {
    pathname = decodeURIComponent((req.url || "/").split("?")[0]);
  } catch {
    return send(res, 400, "Bad request", { "Content-Type": "text/plain" });
  }

  pathname = pathname.replace(/\/+/g, "/");
  if (pathname === "/" || pathname === "") pathname = "/index.html";
  if (pathname === "/healthz") {
    return send(res, 200, "ok", { "Content-Type": "text/plain", "Cache-Control": "no-store" });
  }
  if (pathname.includes("\0")) return send(res, 400, "Bad request");

  // Public deployment allowlist: only the app shell and its build artifacts.
  // Source files, node_modules and tooling are not exposed.
  const allowed = pathname === "/index.html" || pathname.startsWith("/build/") || pathname.startsWith("/vendor/");
  if (!allowed) {
    return send(res, 404, "Not found", { "Content-Type": "text/plain" });
  }

  const filePath = path.resolve(root, "." + pathname);
  if (filePath !== root && !filePath.startsWith(root + path.sep)) {
    return send(res, 403, "Forbidden", { "Content-Type": "text/plain" });
  }

  fs.stat(filePath, (error, stat) => {
    if (error || !stat.isFile()) {
      return send(res, 404, "Not found", { "Content-Type": "text/plain" });
    }

    const ext = path.extname(filePath).toLowerCase();
    const cache = /\.(html|js|mjs|wasm|json|map)$/.test(filePath)
      ? "no-cache"
      : "public, max-age=3600";

    const headers = {
      "Content-Type": types[ext] || "application/octet-stream",
      "Content-Length": stat.size,
      "Cache-Control": cache,
      "X-Content-Type-Options": "nosniff",
      "Last-Modified": stat.mtime.toUTCString()
    };

    if (req.method === "HEAD") {
      res.writeHead(200, headers);
      return res.end();
    }
    if (req.method !== "GET") {
      return send(res, 405, "Method not allowed", { Allow: "GET, HEAD" });
    }

    res.writeHead(200, headers);
    fs.createReadStream(filePath).pipe(res);
  });
});

server.listen(port, host, () => {
  console.log(`Aurora static server on http://${host}:${port} (root: ${root})`);
});

for (const signal of ["SIGINT", "SIGTERM"]) {
  process.on(signal, () => {
    console.log(`Received ${signal}, shutting down`);
    server.close(() => process.exit(0));
  });
}
