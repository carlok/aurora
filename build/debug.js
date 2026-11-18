async function instantiate(module, imports = {}) {
  const adaptedImports = {
    env: Object.setPrototypeOf({
      abort(message, fileName, lineNumber, columnNumber) {
        // ~lib/builtins/abort(~lib/string/String | null?, ~lib/string/String | null?, u32?, u32?) => void
        message = __liftString(message >>> 0);
        fileName = __liftString(fileName >>> 0);
        lineNumber = lineNumber >>> 0;
        columnNumber = columnNumber >>> 0;
        (() => {
          // @external.js
          throw Error(`${message} in ${fileName}:${lineNumber}:${columnNumber}`);
        })();
      },
    }, Object.assign(Object.create(globalThis), imports.env || {})),
  };
  const { exports } = await WebAssembly.instantiate(module, adaptedImports);
  const memory = exports.memory || imports.env.memory;
  const adaptedExports = Object.setPrototypeOf({
    positionsPtr() {
      // assembly/index/positionsPtr() => usize
      return exports.positionsPtr() >>> 0;
    },
    normalsPtr() {
      // assembly/index/normalsPtr() => usize
      return exports.normalsPtr() >>> 0;
    },
    uvsPtr() {
      // assembly/index/uvsPtr() => usize
      return exports.uvsPtr() >>> 0;
    },
    indicesPtr() {
      // assembly/index/indicesPtr() => usize
      return exports.indicesPtr() >>> 0;
    },
    modelPtr() {
      // assembly/index/modelPtr() => usize
      return exports.modelPtr() >>> 0;
    },
    celestialPtr() {
      // assembly/index/celestialPtr() => usize
      return exports.celestialPtr() >>> 0;
    },
    viewPtr() {
      // assembly/index/viewPtr() => usize
      return exports.viewPtr() >>> 0;
    },
    projectionPtr() {
      // assembly/index/projectionPtr() => usize
      return exports.projectionPtr() >>> 0;
    },
    auroraGridPtr() {
      // assembly/index/auroraGridPtr() => usize
      return exports.auroraGridPtr() >>> 0;
    },
    auroraTexturePtr() {
      // assembly/index/auroraTexturePtr() => usize
      return exports.auroraTexturePtr() >>> 0;
    },
    kpTimesPtr() {
      // assembly/index/kpTimesPtr() => usize
      return exports.kpTimesPtr() >>> 0;
    },
    kpValuesPtr() {
      // assembly/index/kpValuesPtr() => usize
      return exports.kpValuesPtr() >>> 0;
    },
  }, exports);
  function __liftString(pointer) {
    if (!pointer) return null;
    const
      end = pointer + new Uint32Array(memory.buffer)[pointer - 4 >>> 2] >>> 1,
      memoryU16 = new Uint16Array(memory.buffer);
    let
      start = pointer >>> 1,
      string = "";
    while (end - start > 1024) string += String.fromCharCode(...memoryU16.subarray(start, start += 1024));
    return string + String.fromCharCode(...memoryU16.subarray(start, end));
  }
  return adaptedExports;
}
export const {
  memory,
  vertexCount,
  indexCount,
  positionsPtr,
  normalsPtr,
  uvsPtr,
  indicesPtr,
  buildSphere,
  modelPtr,
  celestialPtr,
  viewPtr,
  projectionPtr,
  setRotation,
  setZoom,
  setPan,
  setSpin,
  setEarthLock,
  setViewport,
  computeMatrices,
  cameraDistanceValue,
  auroraWidth,
  auroraHeight,
  auroraGridPtr,
  auroraTexturePtr,
  auroraTextureWidth,
  auroraTextureHeight,
  smoothAuroraGrid,
  kpTimesPtr,
  kpValuesPtr,
  maxKpCount,
  setKpCount,
  setReferenceKp,
  kpAtTime,
  auroraPeakNorth,
  auroraPeakSouth,
  buildAurora,
} = await (async url => instantiate(
  await (async () => {
    const isNodeOrBun = typeof process != "undefined" && process.versions != null && (process.versions.node != null || process.versions.bun != null);
    if (isNodeOrBun) { return globalThis.WebAssembly.compile(await (await import("node:fs/promises")).readFile(url)); }
    else { return await globalThis.WebAssembly.compileStreaming(globalThis.fetch(url)); }
  })(), {
  }
))(new URL("debug.wasm", import.meta.url));
