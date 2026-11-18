/** Exported memory */
export declare const memory: WebAssembly.Memory;
/**
 * assembly/index/vertexCount
 * @returns `i32`
 */
export declare function vertexCount(): number;
/**
 * assembly/index/indexCount
 * @returns `i32`
 */
export declare function indexCount(): number;
/**
 * assembly/index/positionsPtr
 * @returns `usize`
 */
export declare function positionsPtr(): number;
/**
 * assembly/index/normalsPtr
 * @returns `usize`
 */
export declare function normalsPtr(): number;
/**
 * assembly/index/uvsPtr
 * @returns `usize`
 */
export declare function uvsPtr(): number;
/**
 * assembly/index/indicesPtr
 * @returns `usize`
 */
export declare function indicesPtr(): number;
/**
 * assembly/index/buildSphere
 * @param radius `f64`
 */
export declare function buildSphere(radius: number): void;
/**
 * assembly/index/modelPtr
 * @returns `usize`
 */
export declare function modelPtr(): number;
/**
 * assembly/index/celestialPtr
 * @returns `usize`
 */
export declare function celestialPtr(): number;
/**
 * assembly/index/viewPtr
 * @returns `usize`
 */
export declare function viewPtr(): number;
/**
 * assembly/index/projectionPtr
 * @returns `usize`
 */
export declare function projectionPtr(): number;
/**
 * assembly/index/setRotation
 * @param yawAngle `f64`
 * @param pitchAngle `f64`
 */
export declare function setRotation(yawAngle: number, pitchAngle: number): void;
/**
 * assembly/index/setZoom
 * @param distance `f64`
 */
export declare function setZoom(distance: number): void;
/**
 * assembly/index/setPan
 * @param x `f64`
 * @param y `f64`
 */
export declare function setPan(x: number, y: number): void;
/**
 * assembly/index/setSpin
 * @param angle `f64`
 */
export declare function setSpin(angle: number): void;
/**
 * assembly/index/setEarthLock
 * @param locked `i32`
 */
export declare function setEarthLock(locked: number): void;
/**
 * assembly/index/setViewport
 * @param width `f64`
 * @param height `f64`
 */
export declare function setViewport(width: number, height: number): void;
/**
 * assembly/index/computeMatrices
 */
export declare function computeMatrices(): void;
/**
 * assembly/index/cameraDistanceValue
 * @returns `f64`
 */
export declare function cameraDistanceValue(): number;
/**
 * assembly/index/auroraWidth
 * @returns `i32`
 */
export declare function auroraWidth(): number;
/**
 * assembly/index/auroraHeight
 * @returns `i32`
 */
export declare function auroraHeight(): number;
/**
 * assembly/index/auroraGridPtr
 * @returns `usize`
 */
export declare function auroraGridPtr(): number;
/**
 * assembly/index/auroraTexturePtr
 * @returns `usize`
 */
export declare function auroraTexturePtr(): number;
/**
 * assembly/index/auroraTextureWidth
 * @returns `i32`
 */
export declare function auroraTextureWidth(): number;
/**
 * assembly/index/auroraTextureHeight
 * @returns `i32`
 */
export declare function auroraTextureHeight(): number;
/**
 * assembly/index/smoothAuroraGrid
 */
export declare function smoothAuroraGrid(): void;
/**
 * assembly/index/kpTimesPtr
 * @returns `usize`
 */
export declare function kpTimesPtr(): number;
/**
 * assembly/index/kpValuesPtr
 * @returns `usize`
 */
export declare function kpValuesPtr(): number;
/**
 * assembly/index/maxKpCount
 * @returns `i32`
 */
export declare function maxKpCount(): number;
/**
 * assembly/index/setKpCount
 * @param count `i32`
 */
export declare function setKpCount(count: number): void;
/**
 * assembly/index/setReferenceKp
 * @param value `f64`
 */
export declare function setReferenceKp(value: number): void;
/**
 * assembly/index/kpAtTime
 * @param timeMs `f64`
 * @returns `f64`
 */
export declare function kpAtTime(timeMs: number): number;
/**
 * assembly/index/auroraPeakNorth
 * @returns `f64`
 */
export declare function auroraPeakNorth(): number;
/**
 * assembly/index/auroraPeakSouth
 * @returns `f64`
 */
export declare function auroraPeakSouth(): number;
/**
 * assembly/index/buildAurora
 * @param timeMs `f64`
 */
export declare function buildAurora(timeMs: number): void;
