// Earth + aurora visualisation core.
// Geometry, 3D math, Kp timeline and aurora texture generation live here.

// ---------------------------------------------------------------------------
// Sphere geometry
// ---------------------------------------------------------------------------

const SEGMENTS: i32 = 256;
const RINGS: i32 = 128;
const VERTEX_COUNT: i32 = (SEGMENTS + 1) * (RINGS + 1);
const INDEX_COUNT: i32 = SEGMENTS * RINGS * 6;

const positions = new Float32Array(VERTEX_COUNT * 3);
const normals = new Float32Array(VERTEX_COUNT * 3);
const uvs = new Float32Array(VERTEX_COUNT * 2);
const indices = new Uint16Array(INDEX_COUNT);

export function vertexCount(): i32 {
  return VERTEX_COUNT;
}

export function indexCount(): i32 {
  return INDEX_COUNT;
}

export function positionsPtr(): usize {
  return positions.dataStart;
}

export function normalsPtr(): usize {
  return normals.dataStart;
}

export function uvsPtr(): usize {
  return uvs.dataStart;
}

export function indicesPtr(): usize {
  return indices.dataStart;
}

export function buildSphere(radius: f64): void {
  let vi = 0;
  let ui = 0;

  for (let y = 0; y <= RINGS; y++) {
    const v = <f64>y / <f64>RINGS;
    const lat = (v - 0.5) * Math.PI;
    const cosLat = Math.cos(lat);
    const sinLat = Math.sin(lat);

    for (let x = 0; x <= SEGMENTS; x++) {
      const u = <f64>x / <f64>SEGMENTS;
      const lon = (u - 0.5) * Math.PI * 2.0;
      const px = cosLat * Math.sin(lon);
      const py = sinLat;
      const pz = cosLat * Math.cos(lon);

      positions[vi] = <f32>(px * radius);
      positions[vi + 1] = <f32>(py * radius);
      positions[vi + 2] = <f32>(pz * radius);

      normals[vi] = <f32>px;
      normals[vi + 1] = <f32>py;
      normals[vi + 2] = <f32>pz;

      uvs[ui] = <f32>u;
      uvs[ui + 1] = <f32>v;

      vi += 3;
      ui += 2;
    }
  }

  let ii = 0;
  for (let y = 0; y < RINGS; y++) {
    for (let x = 0; x < SEGMENTS; x++) {
      const a = y * (SEGMENTS + 1) + x;
      const b = a + 1;
      const c = a + SEGMENTS + 1;
      const d = c + 1;

      indices[ii] = <u16>a;
      indices[ii + 1] = <u16>c;
      indices[ii + 2] = <u16>b;
      indices[ii + 3] = <u16>b;
      indices[ii + 4] = <u16>c;
      indices[ii + 5] = <u16>d;
      ii += 6;
    }
  }
}

// ---------------------------------------------------------------------------
// Camera / rotation matrices (column-major, as expected by WebGL)
// ---------------------------------------------------------------------------

const model = new Float32Array(16);
const celestial = new Float32Array(16);
const view = new Float32Array(16);
const projection = new Float32Array(16);

const modelF = new Float64Array(16);
const celestialF = new Float64Array(16);
const viewF = new Float64Array(16);
const projectionF = new Float64Array(16);
const tmpA = new Float64Array(16);
const tmpB = new Float64Array(16);
const tmpC = new Float64Array(16);
const tmpD = new Float64Array(16);

let yaw: f64 = 0.6;
let pitch: f64 = 0.35;
let cameraDistance: f64 = 2.9;
let viewAspect: f64 = 1.0;
let panX: f64 = 0.0;
let panY: f64 = 0.0;
let spin: f64 = 0.0;
let earthLocked: bool = false;

export function modelPtr(): usize {
  return model.dataStart;
}

export function celestialPtr(): usize {
  return celestial.dataStart;
}

export function viewPtr(): usize {
  return view.dataStart;
}

export function projectionPtr(): usize {
  return projection.dataStart;
}

export function setRotation(yawAngle: f64, pitchAngle: f64): void {
  yaw = yawAngle;
  pitch = pitchAngle;
}

export function setZoom(distance: f64): void {
  cameraDistance = distance < 1.08 ? 1.08 : (distance > 60000.0 ? 60000.0 : distance);
}

export function setPan(x: f64, y: f64): void {
  panX = x;
  panY = y;
}

export function setSpin(angle: f64): void {
  spin = angle;
}

export function setEarthLock(locked: i32): void {
  earthLocked = locked != 0;
}

export function setViewport(width: f64, height: f64): void {
  viewAspect = height > 0.0 ? width / height : 1.0;
}

function identity(m: Float64Array): void {
  for (let i = 0; i < 16; i++) m[i] = 0.0;
  m[0] = 1.0;
  m[5] = 1.0;
  m[10] = 1.0;
  m[15] = 1.0;
}

function matMul(out: Float64Array, a: Float64Array, b: Float64Array): void {
  for (let c = 0; c < 4; c++) {
    for (let r = 0; r < 4; r++) {
      out[c * 4 + r] =
        a[r] * b[c * 4] +
        a[4 + r] * b[c * 4 + 1] +
        a[8 + r] * b[c * 4 + 2] +
        a[12 + r] * b[c * 4 + 3];
    }
  }
}

function perspective(m: Float64Array, fovY: f64, aspect: f64, near: f64, far: f64): void {
  for (let i = 0; i < 16; i++) m[i] = 0.0;
  const f = 1.0 / Math.tan(fovY * 0.5);
  m[0] = f / aspect;
  m[5] = f;
  m[10] = (far + near) / (near - far);
  m[11] = -1.0;
  m[14] = (2.0 * far * near) / (near - far);
}

function rotationY(m: Float64Array, angle: f64): void {
  for (let i = 0; i < 16; i++) m[i] = 0.0;
  const c = Math.cos(angle);
  const s = Math.sin(angle);
  m[0] = c;
  m[2] = -s;
  m[5] = 1.0;
  m[8] = s;
  m[10] = c;
  m[15] = 1.0;
}

function rotationX(m: Float64Array, angle: f64): void {
  for (let i = 0; i < 16; i++) m[i] = 0.0;
  const c = Math.cos(angle);
  const s = Math.sin(angle);
  m[0] = 1.0;
  m[5] = c;
  m[6] = s;
  m[9] = -s;
  m[10] = c;
  m[15] = 1.0;
}

function translation(m: Float64Array, x: f64, y: f64, z: f64): void {
  identity(m);
  m[12] = x;
  m[13] = y;
  m[14] = z;
}

export function computeMatrices(): void {
  perspective(projectionF, 45.0 * Math.PI / 180.0, viewAspect, 0.02, 100000.0);
  translation(viewF, -panX, -panY, -cameraDistance);
  rotationY(tmpA, yaw);
  rotationX(tmpB, pitch);
  matMul(modelF, tmpB, tmpA);

  // Normal mode: Earth/aurora spin under a fixed celestial frame.
  // Locked mode: Earth/aurora stay fixed and the celestial frame rotates
  // around them instead, so changing time does not spin the globe.
  rotationY(tmpC, spin);
  matMul(tmpD, modelF, tmpC);

  for (let i = 0; i < 16; i++) {
    projection[i] = <f32>projectionF[i];
    view[i] = <f32>viewF[i];
    if (earthLocked) {
      model[i] = <f32>modelF[i];
      celestial[i] = <f32>tmpD[i];
    } else {
      model[i] = <f32>tmpD[i];
      celestial[i] = <f32>modelF[i];
    }
  }
}

export function cameraDistanceValue(): f64 {
  return cameraDistance;
}

// ---------------------------------------------------------------------------
// OVATION grid: 360 x 181 probabilities, lon-major, 0..100 %
// ---------------------------------------------------------------------------

const AURORA_W: i32 = 360;
const AURORA_H: i32 = 181;
const AURORA_CELLS: i32 = AURORA_W * AURORA_H;

const AURORA_TEX_W: i32 = 1024;
const AURORA_TEX_H: i32 = 512;

const auroraGrid = new Float32Array(AURORA_CELLS);
const auroraGridSmooth = new Float32Array(AURORA_CELLS);
const auroraTexture = new Uint32Array(AURORA_TEX_W * AURORA_TEX_H);
const rowMean = new Float32Array(AURORA_H);
const rowMeanSmooth = new Float32Array(AURORA_H);
const lonFrac = new Float32Array(AURORA_TEX_W);
const lonRow0 = new Int32Array(AURORA_TEX_W);
const lonRow1 = new Int32Array(AURORA_TEX_W);

const LUT_N: i32 = 512;
const LUT_MAX: f64 = 64.0;
const LUT_SCALE: f64 = <f64>(LUT_N - 1) / LUT_MAX;
const paletteLUT = new Uint32Array(LUT_N);
let lookupReady = false;

function prepareLookups(): void {
  if (lookupReady) return;
  for (let tx = 0; tx < AURORA_TEX_W; tx++) {
    const u = (<f64>tx + 0.5) / <f64>AURORA_TEX_W;
    let lonF = u * 360.0 + 180.0;
    lonF -= Math.floor(lonF / 360.0) * 360.0;
    let x0 = <i32>Math.floor(lonF);
    if (x0 >= AURORA_W) x0 = AURORA_W - 1;
    const x1 = x0 < AURORA_W - 1 ? x0 + 1 : 0;
    lonFrac[tx] = <f32>clampF(lonF - <f64>x0, 0.0, 1.0);
    lonRow0[tx] = x0 * AURORA_H;
    lonRow1[tx] = x1 * AURORA_H;
  }

  for (let i = 0; i < LUT_N; i++) {
    const gated = (<f64>i / <f64>(LUT_N - 1)) * LUT_MAX;
    let r = 0.0;
    let g = 0.0;
    let bl = 0.0;
    let alpha = 0.0;
    if (gated > 1.0) {
      const t = clampF((gated - 6.0) / 22.0, 0.0, 1.0);
      if (t < 0.35) {
        const f = t / 0.35;
        r = 40.0 + 80.0 * f;
        g = 255.0;
        bl = 130.0 - 10.0 * f;
      } else if (t < 0.6) {
        const f = (t - 0.35) / 0.25;
        r = 120.0 + 135.0 * f;
        g = 255.0 - 35.0 * f;
        bl = 120.0 - 40.0 * f;
      } else if (t < 0.8) {
        const f = (t - 0.6) / 0.2;
        r = 255.0;
        g = 220.0 - 100.0 * f;
        bl = 80.0 - 20.0 * f;
      } else {
        const f = (t - 0.8) / 0.2;
        r = 255.0;
        g = 120.0 - 60.0 * f;
        bl = 60.0 + 120.0 * f;
      }
      const norm = clampF((gated - 1.5) / 20.0, 0.0, 1.0);
      alpha = Math.pow(norm, 0.65) * 0.92;
    }
    const rr = <u32><i32>clampF(r, 0.0, 255.0);
    const gg = <u32><i32>clampF(g, 0.0, 255.0);
    const bb = <u32><i32>clampF(bl, 0.0, 255.0);
    const aa = <u32><i32>clampF(alpha * 255.0, 0.0, 255.0);
    paletteLUT[i] = rr | (gg << 8) | (bb << 16) | (aa << 24);
  }
  lookupReady = true;
}

export function auroraWidth(): i32 {
  return AURORA_W;
}

export function auroraHeight(): i32 {
  return AURORA_H;
}

export function auroraGridPtr(): usize {
  return auroraGrid.dataStart;
}

export function auroraTexturePtr(): usize {
  return auroraTexture.dataStart;
}

export function auroraTextureWidth(): i32 {
  return AURORA_TEX_W;
}

export function auroraTextureHeight(): i32 {
  return AURORA_TEX_H;
}

// Apply a gentle longitude blur only near the poles. The 1-degree OVATION
// grid otherwise produces a visibly stepped inner edge when the globe is
// viewed from above the auroral oval.
export function smoothAuroraGrid(): void {
  for (let gy = 0; gy < AURORA_H; gy++) {
    const absLat = Math.abs(<f64>gy - 90.0);
    const weight = smoothstep(60.0, 80.0, absLat) * 0.8;
    const base = gy;
    if (weight <= 0.0) {
      for (let lon = 0; lon < AURORA_W; lon++) {
        auroraGridSmooth[lon * AURORA_H + base] = auroraGrid[lon * AURORA_H + base];
      }
      continue;
    }
    for (let lon = 0; lon < AURORA_W; lon++) {
      const prev = (lon + AURORA_W - 1) % AURORA_W;
      const next = (lon + 1) % AURORA_W;
      const current = auroraGrid[lon * AURORA_H + base];
      const average = (
        auroraGrid[prev * AURORA_H + base] +
        2.0 * current +
        auroraGrid[next * AURORA_H + base]
      ) * 0.25;
      auroraGridSmooth[lon * AURORA_H + base] = <f32>(current + (average - current) * weight);
    }
  }
  for (let i = 0; i < AURORA_CELLS; i++) auroraGrid[i] = auroraGridSmooth[i];
}

// ---------------------------------------------------------------------------
// Kp timeline (observed history + predicted future)
// ---------------------------------------------------------------------------

const MAX_KP: i32 = 512;
const kpTimes = new Float64Array(MAX_KP);
const kpValues = new Float64Array(MAX_KP);

let kpCount: i32 = 0;
let referenceKp: f64 = 3.0;

export function kpTimesPtr(): usize {
  return kpTimes.dataStart;
}

export function kpValuesPtr(): usize {
  return kpValues.dataStart;
}

export function maxKpCount(): i32 {
  return MAX_KP;
}

export function setKpCount(count: i32): void {
  kpCount = count < 0 ? 0 : (count > MAX_KP ? MAX_KP : count);
}

export function setReferenceKp(value: f64): void {
  referenceKp = value;
}

function clampF(value: f64, low: f64, high: f64): f64 {
  return value < low ? low : (value > high ? high : value);
}

function interpolateKp(timeMs: f64): f64 {
  if (kpCount == 0) return referenceKp;
  if (timeMs <= kpTimes[0]) return kpValues[0];
  if (timeMs >= kpTimes[kpCount - 1]) return kpValues[kpCount - 1];

  let lo = 0;
  let hi = kpCount - 1;
  while (hi - lo > 1) {
    const mid = (lo + hi) >> 1;
    if (kpTimes[mid] <= timeMs) lo = mid;
    else hi = mid;
  }

  const span = kpTimes[hi] - kpTimes[lo];
  if (span <= 0.0) return kpValues[lo];
  const f = (timeMs - kpTimes[lo]) / span;
  return kpValues[lo] + (kpValues[hi] - kpValues[lo]) * f;
}

export function kpAtTime(timeMs: f64): f64 {
  return interpolateKp(timeMs);
}

let peakNorth: f64 = 0.0;
let peakSouth: f64 = 0.0;

export function auroraPeakNorth(): f64 {
  return peakNorth;
}

export function auroraPeakSouth(): f64 {
  return peakSouth;
}

function smoothstep(edge0: f64, edge1: f64, x: f64): f64 {
  const t = clampF((x - edge0) / (edge1 - edge0), 0.0, 1.0);
  return t * t * (3.0 - 2.0 * t);
}

// Rebuilds the RGBA aurora texture for the given instant.
// Spatial pattern: latest OVATION snapshot. Position/intensity of the oval is
// scaled by the Kp difference versus the snapshot's reference Kp.
export function buildAurora(timeMs: f64): void {
  prepareLookups();
  const kp = interpolateKp(timeMs);
  const deltaKp = kp - referenceKp;
  const deltaLat = clampF(deltaKp * 2.5, -12.0, 12.0);
  const gain = clampF(1.0 + deltaKp * 0.25, 0.15, 3.0);

  peakNorth = 0.0;
  peakSouth = 0.0;

  // Longitude-averaged profile, used to smooth the equirectangular pole
  // singularity (prevents pinwheel streaks at +/-90 deg).
  for (let gy = 0; gy < AURORA_H; gy++) {
    let sum = 0.0;
    for (let lon = 0; lon < AURORA_W; lon++) sum += auroraGrid[lon * AURORA_H + gy];
    rowMean[gy] = <f32>(sum / <f64>AURORA_W);
  }

  // The OVATION grid has a zero row at -89 deg which would otherwise punch a
  // dark ring into the south polar cap. Smooth the profile along latitude.
  for (let gy = 0; gy < AURORA_H; gy++) {
    let sum = 0.0;
    let n = 0.0;
    for (let k = -2; k <= 2; k++) {
      const yy = gy + k;
      if (yy >= 0 && yy < AURORA_H) {
        sum += rowMean[yy];
        n += 1.0;
      }
    }
    rowMeanSmooth[gy] = <f32>(sum / n);
  }
  for (let gy = 0; gy < AURORA_H; gy++) rowMean[gy] = rowMeanSmooth[gy];

  for (let ty = 0; ty < AURORA_TEX_H; ty++) {
    const v = (<f64>ty + 0.5) / <f64>AURORA_TEX_H;
    const lat = 90.0 - v * 180.0;
    let srcLat = lat >= 0.0 ? lat + deltaLat : lat - deltaLat;
    srcLat = clampF(srcLat, -90.0, 90.0);

    const fy = srcLat + 90.0;
    let y0 = <i32>Math.floor(fy);
    if (y0 < 0) y0 = 0;
    if (y0 > AURORA_H - 1) y0 = AURORA_H - 1;
    const y1 = y0 < AURORA_H - 1 ? y0 + 1 : y0;
    const tyF = clampF(fy - <f64>y0, 0.0, 1.0);

    // The OVATION grid contains a thin artificial line at the geographic
    // equator; real aurora never reaches it. Fade everything below ~30 deg.
    const gate = smoothstep(15.0, 30.0, Math.abs(lat));
    const polarBlend = smoothstep(72.0, 87.0, Math.abs(lat));
    const rowAverage = rowMean[y0] + (rowMean[y1] - rowMean[y0]) * tyF;
    const rowGain = gain * gate;
    const north = lat >= 0.0;
    let idx = ty * AURORA_TEX_W;

    for (let tx = 0; tx < AURORA_TEX_W; tx++) {
      const row0 = lonRow0[tx];
      const row1 = lonRow1[tx];
      const txF = lonFrac[tx];
      const p00 = auroraGrid[row0 + y0];
      const p01 = auroraGrid[row0 + y1];
      const p10 = auroraGrid[row1 + y0];
      const p11 = auroraGrid[row1 + y1];

      const a = p00 + (p10 - p00) * txF;
      const b = p01 + (p11 - p01) * txF;
      const sampled = a + (b - a) * tyF;
      const baseProbability = sampled + (rowAverage - sampled) * polarBlend;
      const gated = baseProbability * rowGain;

      if (north) {
        if (gated > peakNorth) peakNorth = gated;
      } else {
        if (gated > peakSouth) peakSouth = gated;
      }

      let li = <i32>(gated * LUT_SCALE);
      if (li < 0) li = 0;
      else if (li >= LUT_N) li = LUT_N - 1;
      auroraTexture[idx] = paletteLUT[li];
      idx += 1;
    }
  }
}
