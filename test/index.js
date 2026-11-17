import assert from "node:assert/strict";
import { it } from "node:test";
import {
  auroraHeight,
  auroraTextureHeight,
  auroraTextureWidth,
  auroraWidth,
  buildSphere,
  indexCount,
  vertexCount
} from "../build/debug.js";

it("keeps the OVATION grid dimensions", () => {
  assert.equal(auroraWidth(), 360);
  assert.equal(auroraHeight(), 181);
});

it("uses a higher-resolution aurora texture", () => {
  assert.ok(auroraTextureWidth() >= auroraWidth() * 2);
  assert.ok(auroraTextureHeight() >= 512);
});

it("builds the high-resolution sphere", () => {
  buildSphere(1.0);
  assert.equal(vertexCount(), (256 + 1) * (128 + 1));
  assert.equal(indexCount(), 256 * 128 * 6);
});
