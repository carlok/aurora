(module
 (type $0 (func (param i32 i32)))
 (type $1 (func (param i32) (result i32)))
 (type $2 (func (result i32)))
 (type $3 (func (param i32)))
 (type $4 (func (param i32 i32) (result i32)))
 (type $5 (func))
 (type $6 (func (param i32 i32 i32)))
 (type $7 (func (param f64) (result f64)))
 (type $8 (func (param f64)))
 (type $9 (func (param f64 f64)))
 (type $10 (func (result f64)))
 (type $11 (func (param f64 f64 f64) (result f64)))
 (type $12 (func (param i32 f64)))
 (type $13 (func (param i32 i32 i32 i32)))
 (type $14 (func (param i32 i32 i64) (result i32)))
 (type $15 (func (param f64 i64) (result i32)))
 (type $16 (func (param f64 f64 i32) (result f64)))
 (type $17 (func (param f64 f64) (result f64)))
 (type $18 (func (param i32 i32 i32) (result i32)))
 (type $19 (func (param i32 i32 f32)))
 (type $20 (func (param i32 i32 f64)))
 (type $21 (func (param i32 f64 f64 f64 f64)))
 (type $22 (func (param i32 f64 f64 f64)))
 (type $23 (func (param i32 i32) (result f64)))
 (type $24 (func (param i32 i32) (result f32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $assembly/index/SEGMENTS i32 (i32.const 256))
 (global $assembly/index/RINGS i32 (i32.const 128))
 (global $assembly/index/VERTEX_COUNT i32 (i32.const 33153))
 (global $assembly/index/INDEX_COUNT i32 (i32.const 196608))
 (global $~lib/shared/runtime/Runtime.Stub i32 (i32.const 0))
 (global $~lib/shared/runtime/Runtime.Minimal i32 (i32.const 1))
 (global $~lib/shared/runtime/Runtime.Incremental i32 (i32.const 2))
 (global $~lib/rt/itcms/total (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/threshold (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/state (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/visitCount (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/pinSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/iter (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/toSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/white (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/fromSpace (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/native/ASC_LOW_MEMORY_LIMIT i32 (i32.const 0))
 (global $~lib/native/ASC_RUNTIME i32 (i32.const 2))
 (global $assembly/index/positions (mut i32) (i32.const 0))
 (global $assembly/index/normals (mut i32) (i32.const 0))
 (global $assembly/index/uvs (mut i32) (i32.const 0))
 (global $assembly/index/indices (mut i32) (i32.const 0))
 (global $assembly/index/model (mut i32) (i32.const 0))
 (global $assembly/index/celestial (mut i32) (i32.const 0))
 (global $assembly/index/view (mut i32) (i32.const 0))
 (global $assembly/index/projection (mut i32) (i32.const 0))
 (global $assembly/index/modelF (mut i32) (i32.const 0))
 (global $assembly/index/celestialF (mut i32) (i32.const 0))
 (global $assembly/index/viewF (mut i32) (i32.const 0))
 (global $assembly/index/projectionF (mut i32) (i32.const 0))
 (global $assembly/index/tmpA (mut i32) (i32.const 0))
 (global $assembly/index/tmpB (mut i32) (i32.const 0))
 (global $assembly/index/tmpC (mut i32) (i32.const 0))
 (global $assembly/index/tmpD (mut i32) (i32.const 0))
 (global $assembly/index/yaw (mut f64) (f64.const 0.6))
 (global $assembly/index/pitch (mut f64) (f64.const 0.35))
 (global $assembly/index/cameraDistance (mut f64) (f64.const 2.9))
 (global $assembly/index/viewAspect (mut f64) (f64.const 1))
 (global $assembly/index/panX (mut f64) (f64.const 0))
 (global $assembly/index/panY (mut f64) (f64.const 0))
 (global $assembly/index/spin (mut f64) (f64.const 0))
 (global $assembly/index/earthLocked (mut i32) (i32.const 0))
 (global $assembly/index/AURORA_W i32 (i32.const 360))
 (global $assembly/index/AURORA_H i32 (i32.const 181))
 (global $assembly/index/AURORA_CELLS i32 (i32.const 65160))
 (global $assembly/index/AURORA_TEX_W i32 (i32.const 1024))
 (global $assembly/index/AURORA_TEX_H i32 (i32.const 512))
 (global $assembly/index/auroraGrid (mut i32) (i32.const 0))
 (global $assembly/index/auroraGridSmooth (mut i32) (i32.const 0))
 (global $assembly/index/auroraTexture (mut i32) (i32.const 0))
 (global $assembly/index/rowMean (mut i32) (i32.const 0))
 (global $assembly/index/rowMeanSmooth (mut i32) (i32.const 0))
 (global $assembly/index/lonFrac (mut i32) (i32.const 0))
 (global $assembly/index/lonRow0 (mut i32) (i32.const 0))
 (global $assembly/index/lonRow1 (mut i32) (i32.const 0))
 (global $assembly/index/LUT_N i32 (i32.const 512))
 (global $assembly/index/LUT_MAX f64 (f64.const 64))
 (global $assembly/index/LUT_SCALE f64 (f64.const 7.984375))
 (global $assembly/index/paletteLUT (mut i32) (i32.const 0))
 (global $assembly/index/lookupReady (mut i32) (i32.const 0))
 (global $assembly/index/MAX_KP i32 (i32.const 512))
 (global $assembly/index/kpTimes (mut i32) (i32.const 0))
 (global $assembly/index/kpValues (mut i32) (i32.const 0))
 (global $assembly/index/kpCount (mut i32) (i32.const 0))
 (global $assembly/index/referenceKp (mut f64) (f64.const 3))
 (global $assembly/index/peakNorth (mut f64) (f64.const 0))
 (global $assembly/index/peakSouth (mut f64) (f64.const 0))
 (global $~lib/math/NativeMath.PI f64 (f64.const 3.141592653589793))
 (global $~lib/native/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $~lib/math/rempio2_y0 (mut f64) (f64.const 0))
 (global $~lib/math/rempio2_y1 (mut f64) (f64.const 0))
 (global $~lib/math/res128_hi (mut i64) (i64.const 0))
 (global $~lib/util/math/log_tail (mut f64) (f64.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 6944))
 (global $~lib/memory/__data_end i32 (i32.const 6984))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 39752))
 (global $~lib/memory/__heap_base i32 (i32.const 39752))
 (memory $0 1)
 (data $0 (i32.const 12) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h\00")
 (data $1 (i32.const 60) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00\00\00\00\00\00\00")
 (data $2 (i32.const 124) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e\00\00\00\00\00")
 (data $3 (i32.const 188) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $4 (i32.const 256) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $5 (i32.const 288) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $6 (i32.const 316) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00\00\00\00\00\00\00\00\00")
 (data $7 (i32.const 380) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s\00\00\00\00\00\00\00\00\00")
 (data $8 (i32.const 432) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $9 (i32.const 460) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $10 (i32.const 528) "n\83\f9\a2\00\00\00\00\d1W\'\fc)\15DN\99\95b\db\c0\dd4\f5\abcQ\feA\90C<:n$\b7a\c5\bb\de\ea.I\06\e0\d2MB\1c\eb\1d\fe\1c\92\d1\t\f55\82\e8>\a7)\b1&p\9c\e9\84D\bb.9\d6\919A~_\b4\8b_\84\9c\f49S\83\ff\97\f8\1f;(\f9\bd\8b\11/\ef\0f\98\05\de\cf~6m\1fm\nZf?FO\b7\t\cb\'\c7\ba\'u-\ea_\9e\f79\07={\f1\e5\eb\b1_\fbk\ea\92R\8aF0\03V\08]\8d\1f \bc\cf\f0\abk{\fca\91\e3\a9\1d6\f4\9a_\85\99e\08\1b\e6^\80\d8\ff\8d@h\a0\14W\15\06\061\'sM")
 (data $11 (i32.const 732) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00$\00\00\00~\00l\00i\00b\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s\00\00\00\00\00\00\00\00\00")
 (data $12 (i32.const 800) "\00\00\00\00\00\a0\f6?\00\00\00\00\00\00\00\00\00\c8\b9\f2\82,\d6\bf\80V7($\b4\fa<\00\00\00\00\00\80\f6?\00\00\00\00\00\00\00\00\00\08X\bf\bd\d1\d5\bf \f7\e0\d8\08\a5\1c\bd\00\00\00\00\00`\f6?\00\00\00\00\00\00\00\00\00XE\17wv\d5\bfmP\b6\d5\a4b#\bd\00\00\00\00\00@\f6?\00\00\00\00\00\00\00\00\00\f8-\87\ad\1a\d5\bf\d5g\b0\9e\e4\84\e6\bc\00\00\00\00\00 \f6?\00\00\00\00\00\00\00\00\00xw\95_\be\d4\bf\e0>)\93i\1b\04\bd\00\00\00\00\00\00\f6?\00\00\00\00\00\00\00\00\00`\1c\c2\8ba\d4\bf\cc\84LH/\d8\13=\00\00\00\00\00\e0\f5?\00\00\00\00\00\00\00\00\00\a8\86\860\04\d4\bf:\0b\82\ed\f3B\dc<\00\00\00\00\00\c0\f5?\00\00\00\00\00\00\00\00\00HiUL\a6\d3\bf`\94Q\86\c6\b1 =\00\00\00\00\00\a0\f5?\00\00\00\00\00\00\00\00\00\80\98\9a\ddG\d3\bf\92\80\c5\d4MY%=\00\00\00\00\00\80\f5?\00\00\00\00\00\00\00\00\00 \e1\ba\e2\e8\d2\bf\d8+\b7\99\1e{&=\00\00\00\00\00`\f5?\00\00\00\00\00\00\00\00\00\88\de\13Z\89\d2\bf?\b0\cf\b6\14\ca\15=\00\00\00\00\00`\f5?\00\00\00\00\00\00\00\00\00\88\de\13Z\89\d2\bf?\b0\cf\b6\14\ca\15=\00\00\00\00\00@\f5?\00\00\00\00\00\00\00\00\00x\cf\fbA)\d2\bfv\daS($Z\16\bd\00\00\00\00\00 \f5?\00\00\00\00\00\00\00\00\00\98i\c1\98\c8\d1\bf\04T\e7h\bc\af\1f\bd\00\00\00\00\00\00\f5?\00\00\00\00\00\00\00\00\00\a8\ab\ab\\g\d1\bf\f0\a8\823\c6\1f\1f=\00\00\00\00\00\e0\f4?\00\00\00\00\00\00\00\00\00H\ae\f9\8b\05\d1\bffZ\05\fd\c4\a8&\bd\00\00\00\00\00\c0\f4?\00\00\00\00\00\00\00\00\00\90s\e2$\a3\d0\bf\0e\03\f4~\eek\0c\bd\00\00\00\00\00\a0\f4?\00\00\00\00\00\00\00\00\00\d0\b4\94%@\d0\bf\7f-\f4\9e\b86\f0\bc\00\00\00\00\00\a0\f4?\00\00\00\00\00\00\00\00\00\d0\b4\94%@\d0\bf\7f-\f4\9e\b86\f0\bc\00\00\00\00\00\80\f4?\00\00\00\00\00\00\00\00\00@^m\18\b9\cf\bf\87<\99\ab*W\r=\00\00\00\00\00`\f4?\00\00\00\00\00\00\00\00\00`\dc\cb\ad\f0\ce\bf$\af\86\9c\b7&+=\00\00\00\00\00@\f4?\00\00\00\00\00\00\00\00\00\f0*n\07\'\ce\bf\10\ff?TO/\17\bd\00\00\00\00\00 \f4?\00\00\00\00\00\00\00\00\00\c0Ok!\\\cd\bf\1bh\ca\bb\91\ba!=\00\00\00\00\00\00\f4?\00\00\00\00\00\00\00\00\00\a0\9a\c7\f7\8f\cc\bf4\84\9fhOy\'=\00\00\00\00\00\00\f4?\00\00\00\00\00\00\00\00\00\a0\9a\c7\f7\8f\cc\bf4\84\9fhOy\'=\00\00\00\00\00\e0\f3?\00\00\00\00\00\00\00\00\00\90-t\86\c2\cb\bf\8f\b7\8b1\b0N\19=\00\00\00\00\00\c0\f3?\00\00\00\00\00\00\00\00\00\c0\80N\c9\f3\ca\bff\90\cd?cN\ba<\00\00\00\00\00\a0\f3?\00\00\00\00\00\00\00\00\00\b0\e2\1f\bc#\ca\bf\ea\c1F\dcd\8c%\bd\00\00\00\00\00\a0\f3?\00\00\00\00\00\00\00\00\00\b0\e2\1f\bc#\ca\bf\ea\c1F\dcd\8c%\bd\00\00\00\00\00\80\f3?\00\00\00\00\00\00\00\00\00P\f4\9cZR\c9\bf\e3\d4\c1\04\d9\d1*\bd\00\00\00\00\00`\f3?\00\00\00\00\00\00\00\00\00\d0 e\a0\7f\c8\bf\t\fa\db\7f\bf\bd+=\00\00\00\00\00@\f3?\00\00\00\00\00\00\00\00\00\e0\10\02\89\ab\c7\bfXJSr\90\db+=\00\00\00\00\00@\f3?\00\00\00\00\00\00\00\00\00\e0\10\02\89\ab\c7\bfXJSr\90\db+=\00\00\00\00\00 \f3?\00\00\00\00\00\00\00\00\00\d0\19\e7\0f\d6\c6\bff\e2\b2\a3j\e4\10\bd\00\00\00\00\00\00\f3?\00\00\00\00\00\00\00\00\00\90\a7p0\ff\c5\bf9P\10\9fC\9e\1e\bd\00\00\00\00\00\00\f3?\00\00\00\00\00\00\00\00\00\90\a7p0\ff\c5\bf9P\10\9fC\9e\1e\bd\00\00\00\00\00\e0\f2?\00\00\00\00\00\00\00\00\00\b0\a1\e3\e5&\c5\bf\8f[\07\90\8b\de \bd\00\00\00\00\00\c0\f2?\00\00\00\00\00\00\00\00\00\80\cbl+M\c4\bf<x5a\c1\0c\17=\00\00\00\00\00\c0\f2?\00\00\00\00\00\00\00\00\00\80\cbl+M\c4\bf<x5a\c1\0c\17=\00\00\00\00\00\a0\f2?\00\00\00\00\00\00\00\00\00\90\1e \fcq\c3\bf:T\'M\86x\f1<\00\00\00\00\00\80\f2?\00\00\00\00\00\00\00\00\00\f0\1f\f8R\95\c2\bf\08\c4q\170\8d$\bd\00\00\00\00\00`\f2?\00\00\00\00\00\00\00\00\00`/\d5*\b7\c1\bf\96\a3\11\18\a4\80.\bd\00\00\00\00\00`\f2?\00\00\00\00\00\00\00\00\00`/\d5*\b7\c1\bf\96\a3\11\18\a4\80.\bd\00\00\00\00\00@\f2?\00\00\00\00\00\00\00\00\00\90\d0|~\d7\c0\bf\f4[\e8\88\96i\n=\00\00\00\00\00@\f2?\00\00\00\00\00\00\00\00\00\90\d0|~\d7\c0\bf\f4[\e8\88\96i\n=\00\00\00\00\00 \f2?\00\00\00\00\00\00\00\00\00\e0\db1\91\ec\bf\bf\f23\a3\\Tu%\bd\00\00\00\00\00\00\f2?\00\00\00\00\00\00\00\00\00\00+n\07\'\be\bf<\00\f0*,4*=\00\00\00\00\00\00\f2?\00\00\00\00\00\00\00\00\00\00+n\07\'\be\bf<\00\f0*,4*=\00\00\00\00\00\e0\f1?\00\00\00\00\00\00\00\00\00\c0[\8fT^\bc\bf\06\be_XW\0c\1d\bd\00\00\00\00\00\c0\f1?\00\00\00\00\00\00\00\00\00\e0J:m\92\ba\bf\c8\aa[\e859%=\00\00\00\00\00\c0\f1?\00\00\00\00\00\00\00\00\00\e0J:m\92\ba\bf\c8\aa[\e859%=\00\00\00\00\00\a0\f1?\00\00\00\00\00\00\00\00\00\a01\d6E\c3\b8\bfhV/M)|\13=\00\00\00\00\00\a0\f1?\00\00\00\00\00\00\00\00\00\a01\d6E\c3\b8\bfhV/M)|\13=\00\00\00\00\00\80\f1?\00\00\00\00\00\00\00\00\00`\e5\8a\d2\f0\b6\bf\das3\c97\97&\bd\00\00\00\00\00`\f1?\00\00\00\00\00\00\00\00\00 \06?\07\1b\b5\bfW^\c6a[\02\1f=\00\00\00\00\00`\f1?\00\00\00\00\00\00\00\00\00 \06?\07\1b\b5\bfW^\c6a[\02\1f=\00\00\00\00\00@\f1?\00\00\00\00\00\00\00\00\00\e0\1b\96\d7A\b3\bf\df\13\f9\cc\da^,=\00\00\00\00\00@\f1?\00\00\00\00\00\00\00\00\00\e0\1b\96\d7A\b3\bf\df\13\f9\cc\da^,=\00\00\00\00\00 \f1?\00\00\00\00\00\00\00\00\00\80\a3\ee6e\b1\bf\t\a3\8fv^|\14=\00\00\00\00\00\00\f1?\00\00\00\00\00\00\00\00\00\80\11\c00\n\af\bf\91\8e6\83\9eY-=\00\00\00\00\00\00\f1?\00\00\00\00\00\00\00\00\00\80\11\c00\n\af\bf\91\8e6\83\9eY-=\00\00\00\00\00\e0\f0?\00\00\00\00\00\00\00\00\00\80\19q\ddB\ab\bfLp\d6\e5z\82\1c=\00\00\00\00\00\e0\f0?\00\00\00\00\00\00\00\00\00\80\19q\ddB\ab\bfLp\d6\e5z\82\1c=\00\00\00\00\00\c0\f0?\00\00\00\00\00\00\00\00\00\c02\f6Xt\a7\bf\ee\a1\f24F\fc,\bd\00\00\00\00\00\c0\f0?\00\00\00\00\00\00\00\00\00\c02\f6Xt\a7\bf\ee\a1\f24F\fc,\bd\00\00\00\00\00\a0\f0?\00\00\00\00\00\00\00\00\00\c0\fe\b9\87\9e\a3\bf\aa\fe&\f5\b7\02\f5<\00\00\00\00\00\a0\f0?\00\00\00\00\00\00\00\00\00\c0\fe\b9\87\9e\a3\bf\aa\fe&\f5\b7\02\f5<\00\00\00\00\00\80\f0?\00\00\00\00\00\00\00\00\00\00x\0e\9b\82\9f\bf\e4\t~|&\80)\bd\00\00\00\00\00\80\f0?\00\00\00\00\00\00\00\00\00\00x\0e\9b\82\9f\bf\e4\t~|&\80)\bd\00\00\00\00\00`\f0?\00\00\00\00\00\00\00\00\00\80\d5\07\1b\b9\97\bf9\a6\fa\93T\8d(\bd\00\00\00\00\00@\f0?\00\00\00\00\00\00\00\00\00\00\fc\b0\a8\c0\8f\bf\9c\a6\d3\f6|\1e\df\bc\00\00\00\00\00@\f0?\00\00\00\00\00\00\00\00\00\00\fc\b0\a8\c0\8f\bf\9c\a6\d3\f6|\1e\df\bc\00\00\00\00\00 \f0?\00\00\00\00\00\00\00\00\00\00\10k*\e0\7f\bf\e4@\da\r?\e2\19\bd\00\00\00\00\00 \f0?\00\00\00\00\00\00\00\00\00\00\10k*\e0\7f\bf\e4@\da\r?\e2\19\bd\00\00\00\00\00\00\f0?\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\f0?\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\c0\ef?\00\00\00\00\00\00\00\00\00\00\89u\15\10\80?\e8+\9d\99k\c7\10\bd\00\00\00\00\00\80\ef?\00\00\00\00\00\00\00\00\00\80\93XV \90?\d2\f7\e2\06[\dc#\bd\00\00\00\00\00@\ef?\00\00\00\00\00\00\00\00\00\00\c9(%I\98?4\0cZ2\ba\a0*\bd\00\00\00\00\00\00\ef?\00\00\00\00\00\00\00\00\00@\e7\89]A\a0?S\d7\f1\\\c0\11\01=\00\00\00\00\00\c0\ee?\00\00\00\00\00\00\00\00\00\00.\d4\aef\a4?(\fd\bdus\16,\bd\00\00\00\00\00\80\ee?\00\00\00\00\00\00\00\00\00\c0\9f\14\aa\94\a8?}&Z\d0\95y\19\bd\00\00\00\00\00@\ee?\00\00\00\00\00\00\00\00\00\c0\dd\cds\cb\ac?\07(\d8G\f2h\1a\bd\00\00\00\00\00 \ee?\00\00\00\00\00\00\00\00\00\c0\06\c01\ea\ae?{;\c9O>\11\0e\bd\00\00\00\00\00\e0\ed?\00\00\00\00\00\00\00\00\00`F\d1;\97\b1?\9b\9e\rV]2%\bd\00\00\00\00\00\a0\ed?\00\00\00\00\00\00\00\00\00\e0\d1\a7\f5\bd\b3?\d7N\db\a5^\c8,=\00\00\00\00\00`\ed?\00\00\00\00\00\00\00\00\00\a0\97MZ\e9\b5?\1e\1d]<\06i,\bd\00\00\00\00\00@\ed?\00\00\00\00\00\00\00\00\00\c0\ea\n\d3\00\b7?2\ed\9d\a9\8d\1e\ec<\00\00\00\00\00\00\ed?\00\00\00\00\00\00\00\00\00@Y]^3\b9?\daG\bd:\\\11#=\00\00\00\00\00\c0\ec?\00\00\00\00\00\00\00\00\00`\ad\8d\c8j\bb?\e5h\f7+\80\90\13\bd\00\00\00\00\00\a0\ec?\00\00\00\00\00\00\00\00\00@\bc\01X\88\bc?\d3\acZ\c6\d1F&=\00\00\00\00\00`\ec?\00\00\00\00\00\00\00\00\00 \n\839\c7\be?\e0E\e6\afh\c0-\bd\00\00\00\00\00@\ec?\00\00\00\00\00\00\00\00\00\e0\db9\91\e8\bf?\fd\n\a1O\d64%\bd\00\00\00\00\00\00\ec?\00\00\00\00\00\00\00\00\00\e0\'\82\8e\17\c1?\f2\07-\cex\ef!=\00\00\00\00\00\e0\eb?\00\00\00\00\00\00\00\00\00\f0#~+\aa\c1?4\998D\8e\a7,=\00\00\00\00\00\a0\eb?\00\00\00\00\00\00\00\00\00\80\86\0ca\d1\c2?\a1\b4\81\cbl\9d\03=\00\00\00\00\00\80\eb?\00\00\00\00\00\00\00\00\00\90\15\b0\fce\c3?\89rK#\a8/\c6<\00\00\00\00\00@\eb?\00\00\00\00\00\00\00\00\00\b03\83=\91\c4?x\b6\fdTy\83%=\00\00\00\00\00 \eb?\00\00\00\00\00\00\00\00\00\b0\a1\e4\e5\'\c5?\c7}i\e5\e83&=\00\00\00\00\00\e0\ea?\00\00\00\00\00\00\00\00\00\10\8c\beNW\c6?x.<,\8b\cf\19=\00\00\00\00\00\c0\ea?\00\00\00\00\00\00\00\00\00pu\8b\12\f0\c6?\e1!\9c\e5\8d\11%\bd\00\00\00\00\00\a0\ea?\00\00\00\00\00\00\00\00\00PD\85\8d\89\c7?\05C\91p\10f\1c\bd\00\00\00\00\00`\ea?\00\00\00\00\00\00\00\00\00\009\eb\af\be\c8?\d1,\e9\aaT=\07\bd\00\00\00\00\00@\ea?\00\00\00\00\00\00\00\00\00\00\f7\dcZZ\c9?o\ff\a0X(\f2\07=\00\00\00\00\00\00\ea?\00\00\00\00\00\00\00\00\00\e0\8a<\ed\93\ca?i!VPCr(\bd\00\00\00\00\00\e0\e9?\00\00\00\00\00\00\00\00\00\d0[W\d81\cb?\aa\e1\acN\8d5\0c\bd\00\00\00\00\00\c0\e9?\00\00\00\00\00\00\00\00\00\e0;8\87\d0\cb?\b6\12TY\c4K-\bd\00\00\00\00\00\a0\e9?\00\00\00\00\00\00\00\00\00\10\f0\c6\fbo\cc?\d2+\96\c5r\ec\f1\bc\00\00\00\00\00`\e9?\00\00\00\00\00\00\00\00\00\90\d4\b0=\b1\cd?5\b0\15\f7*\ff*\bd\00\00\00\00\00@\e9?\00\00\00\00\00\00\00\00\00\10\e7\ff\0eS\ce?0\f4A`\'\12\c2<\00\00\00\00\00 \e9?\00\00\00\00\00\00\00\00\00\00\dd\e4\ad\f5\ce?\11\8e\bbe\15!\ca\bc\00\00\00\00\00\00\e9?\00\00\00\00\00\00\00\00\00\b0\b3l\1c\99\cf?0\df\0c\ca\ec\cb\1b=\00\00\00\00\00\c0\e8?\00\00\00\00\00\00\00\00\00XM`8q\d0?\91N\ed\16\db\9c\f8<\00\00\00\00\00\a0\e8?\00\00\00\00\00\00\00\00\00`ag-\c4\d0?\e9\ea<\16\8b\18\'=\00\00\00\00\00\80\e8?\00\00\00\00\00\00\00\00\00\e8\'\82\8e\17\d1?\1c\f0\a5c\0e!,\bd\00\00\00\00\00`\e8?\00\00\00\00\00\00\00\00\00\f8\ac\cb\\k\d1?\81\16\a5\f7\cd\9a+=\00\00\00\00\00@\e8?\00\00\00\00\00\00\00\00\00hZc\99\bf\d1?\b7\bdGQ\ed\a6,=\00\00\00\00\00 \e8?\00\00\00\00\00\00\00\00\00\b8\0emE\14\d2?\ea\baF\ba\de\87\n=\00\00\00\00\00\e0\e7?\00\00\00\00\00\00\00\00\00\90\dc|\f0\be\d2?\f4\04PJ\fa\9c*=\00\00\00\00\00\c0\e7?\00\00\00\00\00\00\00\00\00`\d3\e1\f1\14\d3?\b8<!\d3z\e2(\bd\00\00\00\00\00\a0\e7?\00\00\00\00\00\00\00\00\00\10\bevgk\d3?\c8w\f1\b0\cdn\11=\00\00\00\00\00\80\e7?\00\00\00\00\00\00\00\00\0003wR\c2\d3?\\\bd\06\b6T;\18=\00\00\00\00\00`\e7?\00\00\00\00\00\00\00\00\00\e8\d5#\b4\19\d4?\9d\e0\90\ec6\e4\08=\00\00\00\00\00@\e7?\00\00\00\00\00\00\00\00\00\c8q\c2\8dq\d4?u\d6g\t\ce\'/\bd\00\00\00\00\00 \e7?\00\00\00\00\00\00\00\00\000\17\9e\e0\c9\d4?\a4\d8\n\1b\89 .\bd\00\00\00\00\00\00\e7?\00\00\00\00\00\00\00\00\00\a08\07\ae\"\d5?Y\c7d\81p\be.=\00\00\00\00\00\e0\e6?\00\00\00\00\00\00\00\00\00\d0\c8S\f7{\d5?\ef@]\ee\ed\ad\1f=\00\00\00\00\00\c0\e6?\00\00\00\00\00\00\00\00\00`Y\df\bd\d5\d5?\dce\a4\08*\0b\n\bd")
 (data $13 (i32.const 4896) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\f0?n\bf\88\1aO;\9b<53\fb\a9=\f6\ef?]\dc\d8\9c\13`q\bca\80w>\9a\ec\ef?\d1f\87\10z^\90\bc\85\7fn\e8\15\e3\ef?\13\f6g5R\d2\8c<t\85\15\d3\b0\d9\ef?\fa\8e\f9#\80\ce\8b\bc\de\f6\dd)k\d0\ef?a\c8\e6aN\f7`<\c8\9bu\18E\c7\ef?\99\d33[\e4\a3\90<\83\f3\c6\ca>\be\ef?m{\83]\a6\9a\97<\0f\89\f9lX\b5\ef?\fc\ef\fd\92\1a\b5\8e<\f7Gr+\92\ac\ef?\d1\9c/p=\be><\a2\d1\d32\ec\a3\ef?\0bn\90\894\03j\bc\1b\d3\fe\aff\9b\ef?\0e\bd/*RV\95\bcQ[\12\d0\01\93\ef?U\eaN\8c\ef\80P\bc\cc1l\c0\bd\8a\ef?\16\f4\d5\b9#\c9\91\bc\e0-\a9\ae\9a\82\ef?\afU\\\e9\e3\d3\80<Q\8e\a5\c8\98z\ef?H\93\a5\ea\15\1b\80\bc{Q}<\b8r\ef?=2\deU\f0\1f\8f\bc\ea\8d\8c8\f9j\ef?\bfS\13?\8c\89\8b<u\cbo\eb[c\ef?&\eb\11v\9c\d9\96\bc\d4\\\04\84\e0[\ef?`/:>\f7\ec\9a<\aa\b9h1\87T\ef?\9d8\86\cb\82\e7\8f\bc\1d\d9\fc\"PM\ef?\8d\c3\a6DAo\8a<\d6\8cb\88;F\ef?}\04\e4\b0\05z\80<\96\dc}\91I?\ef?\94\a8\a8\e3\fd\8e\96<8bunz8\ef?}Ht\f2\18^\87<?\a6\b2O\ce1\ef?\f2\e7\1f\98+G\80<\dd|\e2eE+\ef?^\08q?{\b8\96\bc\81c\f5\e1\df$\ef?1\ab\tm\e1\f7\82<\e1\de\1f\f5\9d\1e\ef?\fa\bfo\1a\9b!=\bc\90\d9\da\d0\7f\18\ef?\b4\n\0cr\827\8b<\0b\03\e4\a6\85\12\ef?\8f\cb\ce\89\92\14n<V/>\a9\af\0c\ef?\b6\ab\b0MuM\83<\15\b71\n\fe\06\ef?Lt\ac\e2\01B\86<1\d8L\fcp\01\ef?J\f8\d3]9\dd\8f<\ff\16d\b2\08\fc\ee?\04[\8e;\80\a3\86\bc\f1\9f\92_\c5\f6\ee?hPK\cc\edJ\92\bc\cb\a9:7\a7\f1\ee?\8e-Q\1b\f8\07\99\bcf\d8\05m\ae\ec\ee?\d26\94>\e8\d1q\bc\f7\9f\e54\db\e7\ee?\15\1b\ce\b3\19\19\99\bc\e5\a8\13\c3-\e3\ee?mL*\a7H\9f\85<\"4\12L\a6\de\ee?\8ai(z`\12\93\bc\1c\80\ac\04E\da\ee?[\89\17H\8f\a7X\bc*.\f7!\n\d6\ee?\1b\9aIg\9b,|\bc\97\a8P\d9\f5\d1\ee?\11\ac\c2`\edcC<-\89a`\08\ce\ee?\efd\06;\tf\96<W\00\1d\edA\ca\ee?y\03\a1\da\e1\ccn<\d0<\c1\b5\a2\c6\ee?0\12\0f?\8e\ff\93<\de\d3\d7\f0*\c3\ee?\b0\afz\bb\ce\90v<\'*6\d5\da\bf\ee?w\e0T\eb\bd\1d\93<\r\dd\fd\99\b2\bc\ee?\8e\a3q\004\94\8f\bc\a7,\9dv\b2\b9\ee?I\a3\93\dc\cc\de\87\bcBf\cf\a2\da\b6\ee?_8\0f\bd\c6\dex\bc\82O\9dV+\b4\ee?\f6\\{\ecF\12\86\bc\0f\92]\ca\a4\b1\ee?\8e\d7\fd\18\055\93<\da\'\b56G\af\ee?\05\9b\8a/\b7\98{<\fd\c7\97\d4\12\ad\ee?\tT\1c\e2\e1c\90<)TH\dd\07\ab\ee?\ea\c6\19P\85\c74<\b7FY\8a&\a9\ee?5\c0d+\e62\94<H!\ad\15o\a7\ee?\9fv\99aJ\e4\8c\bc\t\dcv\b9\e1\a5\ee?\a8M\ef;\c53\8c\bc\85U:\b0~\a4\ee?\ae\e9+\89xS\84\bc \c3\cc4F\a3\ee?XXVx\dd\ce\93\bc%\"U\828\a2\ee?d\19~\80\aa\10W<s\a9L\d4U\a1\ee?(\"^\bf\ef\b3\93\bc\cd;\7ff\9e\a0\ee?\82\b94\87\ad\12j\bc\bf\da\0bu\12\a0\ee?\ee\a9m\b8\efgc\bc/\1ae<\b2\9f\ee?Q\88\e0T=\dc\80\bc\84\94Q\f9}\9f\ee?\cf>Z~d\1fx\bct_\ec\e8u\9f\ee?\b0}\8b\c0J\ee\86\bct\81\a5H\9a\9f\ee?\8a\e6U\1e2\19\86\bc\c9gBV\eb\9f\ee?\d3\d4\t^\cb\9c\90<?]\deOi\a0\ee?\1d\a5M\b9\dc2{\bc\87\01\ebs\14\a1\ee?k\c0gT\fd\ec\94<2\c10\01\ed\a1\ee?Ul\d6\ab\e1\ebe<bN\cf6\f3\a2\ee?B\cf\b3/\c5\a1\88\bc\12\1a>T\'\a4\ee?47;\f1\b6i\93\bc\13\ceL\99\89\a5\ee?\1e\ff\19:\84^\80\bc\ad\c7#F\1a\a7\ee?nWr\d8P\d4\94\bc\ed\92D\9b\d9\a8\ee?\00\8a\0e[g\ad\90<\99f\8a\d9\c7\aa\ee?\b4\ea\f0\c1/\b7\8d<\db\a0*B\e5\ac\ee?\ff\e7\c5\9c`\b6e\bc\8cD\b5\162\af\ee?D_\f3Y\83\f6{<6w\15\99\ae\b1\ee?\83=\1e\a7\1f\t\93\bc\c6\ff\91\0b[\b4\ee?)\1el\8b\b8\a9]\bc\e5\c5\cd\b07\b7\ee?Y\b9\90|\f9#l\bc\0fR\c8\cbD\ba\ee?\aa\f9\f4\"CC\92\bcPN\de\9f\82\bd\ee?K\8ef\d7l\ca\85\bc\ba\07\cap\f1\c0\ee?\'\ce\91+\fc\afq<\90\f0\a3\82\91\c4\ee?\bbs\n\e15\d2m<##\e3\19c\c8\ee?c\"b\"\04\c5\87\bce\e5]{f\cc\ee?\d51\e2\e3\86\1c\8b<3-J\ec\9b\d0\ee?\15\bb\bc\d3\d1\bb\91\bc]%>\b2\03\d5\ee?\d21\ee\9c1\cc\90<X\b30\13\9e\d9\ee?\b3Zsn\84i\84<\bf\fdyUk\de\ee?\b4\9d\8e\97\cd\df\82\bcz\f3\d3\bfk\e3\ee?\873\cb\92w\1a\8c<\ad\d3Z\99\9f\e8\ee?\fa\d9\d1J\8f{\90\bcf\b6\8d)\07\ee\ee?\ba\ae\dcV\d9\c3U\bc\fb\15O\b8\a2\f3\ee?@\f6\a6=\0e\a4\90\bc:Y\e5\8dr\f9\ee?4\93\ad8\f4\d6h\bcG^\fb\f2v\ff\ee?5\8aXk\e2\ee\91\bcJ\06\a10\b0\05\ef?\cd\dd_\n\d7\fft<\d2\c1K\90\1e\0c\ef?\ac\98\92\fa\fb\bd\91\bc\t\1e\d7[\c2\12\ef?\b3\0c\af0\aens<\9cR\85\dd\9b\19\ef?\94\fd\9f\\2\e3\8e<z\d0\ff_\ab \ef?\acY\t\d1\8f\e0\84<K\d1W.\f1\'\ef?g\1aN8\af\cdc<\b5\e7\06\94m/\ef?h\19\92l,kg<i\90\ef\dc 7\ef?\d2\b5\cc\83\18\8a\80\bc\fa\c3]U\0b?\ef?o\fa\ff?]\ad\8f\bc|\89\07J-G\ef?I\a9u8\ae\r\90\bc\f2\89\r\08\87O\ef?\a7\07=\a6\85\a3t<\87\a4\fb\dc\18X\ef?\0f\"@ \9e\91\82\bc\98\83\c9\16\e3`\ef?\ac\92\c1\d5PZ\8e<\852\db\03\e6i\ef?Kk\01\acY:\84<`\b4\01\f3!s\ef?\1f>\b4\07!\d5\82\bc_\9b{3\97|\ef?\c9\rG;\b9*\89\bc)\a1\f5\14F\86\ef?\d3\88:`\04\b6t<\f6?\8b\e7.\90\ef?qr\9dQ\ec\c5\83<\83L\c7\fbQ\9a\ef?\f0\91\d3\8f\12\f7\8f\bc\da\90\a4\a2\af\a4\ef?}t#\e2\98\ae\8d\bc\f1g\8e-H\af\ef?\08 \aaA\bc\c3\8e<\'Za\ee\1b\ba\ef?2\eb\a9\c3\94+\84<\97\bak7+\c5\ef?\ee\85\d11\a9d\8a<@En[v\d0\ef?\ed\e3;\e4\ba7\8e\bc\14\be\9c\ad\fd\db\ef?\9d\cd\91M;\89w<\d8\90\9e\81\c1\e7\ef?\89\cc`A\c1\05S<\f1q\8f+\c2\f3\ef?")
 (data $14 (i32.const 6944) "\t\00\00\00 \00\00\00 \00\00\00 \00\00\00\00\00\00\00\01\19\00\00\81\00\00\00\01\1a\00\00\01\01\00\00\01\t\00\00")
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "vertexCount" (func $assembly/index/vertexCount))
 (export "indexCount" (func $assembly/index/indexCount))
 (export "positionsPtr" (func $assembly/index/positionsPtr))
 (export "normalsPtr" (func $assembly/index/normalsPtr))
 (export "uvsPtr" (func $assembly/index/uvsPtr))
 (export "indicesPtr" (func $assembly/index/indicesPtr))
 (export "buildSphere" (func $assembly/index/buildSphere))
 (export "modelPtr" (func $assembly/index/modelPtr))
 (export "celestialPtr" (func $assembly/index/celestialPtr))
 (export "viewPtr" (func $assembly/index/viewPtr))
 (export "projectionPtr" (func $assembly/index/projectionPtr))
 (export "setRotation" (func $assembly/index/setRotation))
 (export "setZoom" (func $assembly/index/setZoom))
 (export "setPan" (func $assembly/index/setPan))
 (export "setSpin" (func $assembly/index/setSpin))
 (export "setEarthLock" (func $assembly/index/setEarthLock))
 (export "setViewport" (func $assembly/index/setViewport))
 (export "computeMatrices" (func $assembly/index/computeMatrices))
 (export "cameraDistanceValue" (func $assembly/index/cameraDistanceValue))
 (export "auroraWidth" (func $assembly/index/auroraWidth))
 (export "auroraHeight" (func $assembly/index/auroraHeight))
 (export "auroraGridPtr" (func $assembly/index/auroraGridPtr))
 (export "auroraTexturePtr" (func $assembly/index/auroraTexturePtr))
 (export "auroraTextureWidth" (func $assembly/index/auroraTextureWidth))
 (export "auroraTextureHeight" (func $assembly/index/auroraTextureHeight))
 (export "smoothAuroraGrid" (func $assembly/index/smoothAuroraGrid))
 (export "kpTimesPtr" (func $assembly/index/kpTimesPtr))
 (export "kpValuesPtr" (func $assembly/index/kpValuesPtr))
 (export "maxKpCount" (func $assembly/index/maxKpCount))
 (export "setKpCount" (func $assembly/index/setKpCount))
 (export "setReferenceKp" (func $assembly/index/setReferenceKp))
 (export "kpAtTime" (func $assembly/index/kpAtTime))
 (export "auroraPeakNorth" (func $assembly/index/auroraPeakNorth))
 (export "auroraPeakSouth" (func $assembly/index/auroraPeakSouth))
 (export "buildAurora" (func $assembly/index/buildAurora))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/rt/itcms/Object#set:nextWithColor (param $this i32) (param $nextWithColor i32)
  local.get $this
  local.get $nextWithColor
  i32.store offset=4
 )
 (func $~lib/rt/itcms/Object#set:prev (param $this i32) (param $prev i32)
  local.get $this
  local.get $prev
  i32.store offset=8
 )
 (func $~lib/rt/itcms/initLazy (param $space i32) (result i32)
  local.get $space
  local.get $space
  call $~lib/rt/itcms/Object#set:nextWithColor
  local.get $space
  local.get $space
  call $~lib/rt/itcms/Object#set:prev
  local.get $space
  return
 )
 (func $~lib/rt/itcms/Object#get:nextWithColor (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/rt/itcms/Object#get:next (param $this i32) (result i32)
  local.get $this
  call $~lib/rt/itcms/Object#get:nextWithColor
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  return
 )
 (func $~lib/rt/itcms/Object#get:color (param $this i32) (result i32)
  local.get $this
  call $~lib/rt/itcms/Object#get:nextWithColor
  i32.const 3
  i32.and
  return
 )
 (func $~lib/rt/itcms/visitRoots (param $cookie i32)
  (local $pn i32)
  (local $iter i32)
  local.get $cookie
  call $~lib/rt/__visit_globals
  global.get $~lib/rt/itcms/pinSpace
  local.set $pn
  local.get $pn
  call $~lib/rt/itcms/Object#get:next
  local.set $iter
  loop $while-continue|0
   local.get $iter
   local.get $pn
   i32.ne
   if
    i32.const 1
    drop
    local.get $iter
    call $~lib/rt/itcms/Object#get:color
    i32.const 3
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 208
     i32.const 160
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
    local.get $iter
    i32.const 20
    i32.add
    local.get $cookie
    call $~lib/rt/__visit_members
    local.get $iter
    call $~lib/rt/itcms/Object#get:next
    local.set $iter
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/itcms/Object#set:color (param $this i32) (param $color i32)
  local.get $this
  local.get $this
  call $~lib/rt/itcms/Object#get:nextWithColor
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $color
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
 )
 (func $~lib/rt/itcms/Object#get:prev (param $this i32) (result i32)
  local.get $this
  i32.load offset=8
 )
 (func $~lib/rt/itcms/Object#set:next (param $this i32) (param $obj i32)
  local.get $this
  local.get $obj
  local.get $this
  call $~lib/rt/itcms/Object#get:nextWithColor
  i32.const 3
  i32.and
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
 )
 (func $~lib/rt/itcms/Object#unlink (param $this i32)
  (local $next i32)
  (local $prev i32)
  local.get $this
  call $~lib/rt/itcms/Object#get:next
  local.set $next
  local.get $next
  i32.const 0
  i32.eq
  if
   i32.const 1
   drop
   local.get $this
   call $~lib/rt/itcms/Object#get:prev
   i32.const 0
   i32.eq
   if (result i32)
    local.get $this
    global.get $~lib/memory/__heap_base
    i32.lt_u
   else
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 208
    i32.const 128
    i32.const 18
    call $~lib/builtins/abort
    unreachable
   end
   return
  end
  local.get $this
  call $~lib/rt/itcms/Object#get:prev
  local.set $prev
  i32.const 1
  drop
  local.get $prev
  i32.eqz
  if
   i32.const 0
   i32.const 208
   i32.const 132
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $next
  local.get $prev
  call $~lib/rt/itcms/Object#set:prev
  local.get $prev
  local.get $next
  call $~lib/rt/itcms/Object#set:next
 )
 (func $~lib/rt/itcms/Object#get:rtId (param $this i32) (result i32)
  local.get $this
  i32.load offset=12
 )
 (func $~lib/shared/typeinfo/Typeinfo#get:flags (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/rt/__typeinfo (param $id i32) (result i32)
  (local $ptr i32)
  global.get $~lib/rt/__rtti_base
  local.set $ptr
  local.get $id
  local.get $ptr
  i32.load
  i32.gt_u
  if
   i32.const 336
   i32.const 400
   i32.const 21
   i32.const 28
   call $~lib/builtins/abort
   unreachable
  end
  local.get $ptr
  i32.const 4
  i32.add
  local.get $id
  i32.const 4
  i32.mul
  i32.add
  call $~lib/shared/typeinfo/Typeinfo#get:flags
  return
 )
 (func $~lib/rt/itcms/Object#get:isPointerfree (param $this i32) (result i32)
  (local $rtId i32)
  local.get $this
  call $~lib/rt/itcms/Object#get:rtId
  local.set $rtId
  local.get $rtId
  i32.const 2
  i32.le_u
  if (result i32)
   i32.const 1
  else
   local.get $rtId
   call $~lib/rt/__typeinfo
   i32.const 32
   i32.and
   i32.const 0
   i32.ne
  end
  return
 )
 (func $~lib/rt/itcms/Object#linkTo (param $this i32) (param $list i32) (param $withColor i32)
  (local $prev i32)
  local.get $list
  call $~lib/rt/itcms/Object#get:prev
  local.set $prev
  local.get $this
  local.get $list
  local.get $withColor
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
  local.get $this
  local.get $prev
  call $~lib/rt/itcms/Object#set:prev
  local.get $prev
  local.get $this
  call $~lib/rt/itcms/Object#set:next
  local.get $list
  local.get $this
  call $~lib/rt/itcms/Object#set:prev
 )
 (func $~lib/rt/itcms/Object#makeGray (param $this i32)
  (local $1 i32)
  local.get $this
  global.get $~lib/rt/itcms/iter
  i32.eq
  if
   local.get $this
   call $~lib/rt/itcms/Object#get:prev
   local.tee $1
   i32.eqz
   if (result i32)
    i32.const 0
    i32.const 208
    i32.const 148
    i32.const 30
    call $~lib/builtins/abort
    unreachable
   else
    local.get $1
   end
   global.set $~lib/rt/itcms/iter
  end
  local.get $this
  call $~lib/rt/itcms/Object#unlink
  local.get $this
  global.get $~lib/rt/itcms/toSpace
  local.get $this
  call $~lib/rt/itcms/Object#get:isPointerfree
  if (result i32)
   global.get $~lib/rt/itcms/white
   i32.eqz
  else
   i32.const 2
  end
  call $~lib/rt/itcms/Object#linkTo
 )
 (func $~lib/rt/itcms/__visit (param $ptr i32) (param $cookie i32)
  (local $obj i32)
  local.get $ptr
  i32.eqz
  if
   return
  end
  local.get $ptr
  i32.const 20
  i32.sub
  local.set $obj
  i32.const 0
  drop
  local.get $obj
  call $~lib/rt/itcms/Object#get:color
  global.get $~lib/rt/itcms/white
  i32.eq
  if
   local.get $obj
   call $~lib/rt/itcms/Object#makeGray
   global.get $~lib/rt/itcms/visitCount
   i32.const 1
   i32.add
   global.set $~lib/rt/itcms/visitCount
  end
 )
 (func $~lib/rt/itcms/visitStack (param $cookie i32)
  (local $ptr i32)
  global.get $~lib/memory/__stack_pointer
  local.set $ptr
  loop $while-continue|0
   local.get $ptr
   global.get $~lib/memory/__heap_base
   i32.lt_u
   if
    local.get $ptr
    i32.load
    local.get $cookie
    call $~lib/rt/itcms/__visit
    local.get $ptr
    i32.const 4
    i32.add
    local.set $ptr
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/common/BLOCK#get:mmInfo (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/rt/itcms/Object#get:size (param $this i32) (result i32)
  i32.const 4
  local.get $this
  call $~lib/rt/common/BLOCK#get:mmInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.add
  return
 )
 (func $~lib/rt/tlsf/Root#set:flMap (param $this i32) (param $flMap i32)
  local.get $this
  local.get $flMap
  i32.store
 )
 (func $~lib/rt/common/BLOCK#set:mmInfo (param $this i32) (param $mmInfo i32)
  local.get $this
  local.get $mmInfo
  i32.store
 )
 (func $~lib/rt/tlsf/Block#set:prev (param $this i32) (param $prev i32)
  local.get $this
  local.get $prev
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/Block#set:next (param $this i32) (param $next i32)
  local.get $this
  local.get $next
  i32.store offset=8
 )
 (func $~lib/rt/tlsf/Block#get:prev (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/rt/tlsf/Block#get:next (param $this i32) (result i32)
  local.get $this
  i32.load offset=8
 )
 (func $~lib/rt/tlsf/Root#get:flMap (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/rt/tlsf/removeBlock (param $root i32) (param $block i32)
  (local $blockInfo i32)
  (local $size i32)
  (local $fl i32)
  (local $sl i32)
  (local $6 i32)
  (local $7 i32)
  (local $boundedSize i32)
  (local $prev i32)
  (local $next i32)
  (local $root|11 i32)
  (local $fl|12 i32)
  (local $sl|13 i32)
  (local $root|14 i32)
  (local $fl|15 i32)
  (local $sl|16 i32)
  (local $head i32)
  (local $root|18 i32)
  (local $fl|19 i32)
  (local $slMap i32)
  (local $root|21 i32)
  (local $fl|22 i32)
  (local $slMap|23 i32)
  local.get $block
  call $~lib/rt/common/BLOCK#get:mmInfo
  local.set $blockInfo
  i32.const 1
  drop
  local.get $blockInfo
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 268
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $blockInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.set $size
  i32.const 1
  drop
  local.get $size
  i32.const 12
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 270
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $size
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $fl
   local.get $size
   i32.const 4
   i32.shr_u
   local.set $sl
  else
   local.get $size
   local.tee $6
   i32.const 1073741820
   local.tee $7
   local.get $6
   local.get $7
   i32.lt_u
   select
   local.set $boundedSize
   i32.const 31
   local.get $boundedSize
   i32.clz
   i32.sub
   local.set $fl
   local.get $boundedSize
   local.get $fl
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $sl
   local.get $fl
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $fl
  end
  i32.const 1
  drop
  local.get $fl
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $sl
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 284
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $block
  call $~lib/rt/tlsf/Block#get:prev
  local.set $prev
  local.get $block
  call $~lib/rt/tlsf/Block#get:next
  local.set $next
  local.get $prev
  if
   local.get $prev
   local.get $next
   call $~lib/rt/tlsf/Block#set:next
  end
  local.get $next
  if
   local.get $next
   local.get $prev
   call $~lib/rt/tlsf/Block#set:prev
  end
  local.get $block
  block $~lib/rt/tlsf/GETHEAD|inlined.0 (result i32)
   local.get $root
   local.set $root|11
   local.get $fl
   local.set $fl|12
   local.get $sl
   local.set $sl|13
   local.get $root|11
   local.get $fl|12
   i32.const 4
   i32.shl
   local.get $sl|13
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=96
   br $~lib/rt/tlsf/GETHEAD|inlined.0
  end
  i32.eq
  if
   local.get $root
   local.set $root|14
   local.get $fl
   local.set $fl|15
   local.get $sl
   local.set $sl|16
   local.get $next
   local.set $head
   local.get $root|14
   local.get $fl|15
   i32.const 4
   i32.shl
   local.get $sl|16
   i32.add
   i32.const 2
   i32.shl
   i32.add
   local.get $head
   i32.store offset=96
   local.get $next
   i32.eqz
   if
    block $~lib/rt/tlsf/GETSL|inlined.0 (result i32)
     local.get $root
     local.set $root|18
     local.get $fl
     local.set $fl|19
     local.get $root|18
     local.get $fl|19
     i32.const 2
     i32.shl
     i32.add
     i32.load offset=4
     br $~lib/rt/tlsf/GETSL|inlined.0
    end
    local.set $slMap
    local.get $root
    local.set $root|21
    local.get $fl
    local.set $fl|22
    local.get $slMap
    i32.const 1
    local.get $sl
    i32.shl
    i32.const -1
    i32.xor
    i32.and
    local.tee $slMap
    local.set $slMap|23
    local.get $root|21
    local.get $fl|22
    i32.const 2
    i32.shl
    i32.add
    local.get $slMap|23
    i32.store offset=4
    local.get $slMap
    i32.eqz
    if
     local.get $root
     local.get $root
     call $~lib/rt/tlsf/Root#get:flMap
     i32.const 1
     local.get $fl
     i32.shl
     i32.const -1
     i32.xor
     i32.and
     call $~lib/rt/tlsf/Root#set:flMap
    end
   end
  end
 )
 (func $~lib/rt/tlsf/insertBlock (param $root i32) (param $block i32)
  (local $blockInfo i32)
  (local $block|3 i32)
  (local $right i32)
  (local $rightInfo i32)
  (local $block|6 i32)
  (local $block|7 i32)
  (local $left i32)
  (local $leftInfo i32)
  (local $size i32)
  (local $fl i32)
  (local $sl i32)
  (local $13 i32)
  (local $14 i32)
  (local $boundedSize i32)
  (local $root|16 i32)
  (local $fl|17 i32)
  (local $sl|18 i32)
  (local $head i32)
  (local $root|20 i32)
  (local $fl|21 i32)
  (local $sl|22 i32)
  (local $head|23 i32)
  (local $root|24 i32)
  (local $fl|25 i32)
  (local $root|26 i32)
  (local $fl|27 i32)
  (local $slMap i32)
  i32.const 1
  drop
  local.get $block
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 201
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $block
  call $~lib/rt/common/BLOCK#get:mmInfo
  local.set $blockInfo
  i32.const 1
  drop
  local.get $blockInfo
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 203
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/rt/tlsf/GETRIGHT|inlined.0 (result i32)
   local.get $block
   local.set $block|3
   local.get $block|3
   i32.const 4
   i32.add
   local.get $block|3
   call $~lib/rt/common/BLOCK#get:mmInfo
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   br $~lib/rt/tlsf/GETRIGHT|inlined.0
  end
  local.set $right
  local.get $right
  call $~lib/rt/common/BLOCK#get:mmInfo
  local.set $rightInfo
  local.get $rightInfo
  i32.const 1
  i32.and
  if
   local.get $root
   local.get $right
   call $~lib/rt/tlsf/removeBlock
   local.get $block
   local.get $blockInfo
   i32.const 4
   i32.add
   local.get $rightInfo
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.tee $blockInfo
   call $~lib/rt/common/BLOCK#set:mmInfo
   block $~lib/rt/tlsf/GETRIGHT|inlined.1 (result i32)
    local.get $block
    local.set $block|6
    local.get $block|6
    i32.const 4
    i32.add
    local.get $block|6
    call $~lib/rt/common/BLOCK#get:mmInfo
    i32.const 3
    i32.const -1
    i32.xor
    i32.and
    i32.add
    br $~lib/rt/tlsf/GETRIGHT|inlined.1
   end
   local.set $right
   local.get $right
   call $~lib/rt/common/BLOCK#get:mmInfo
   local.set $rightInfo
  end
  local.get $blockInfo
  i32.const 2
  i32.and
  if
   block $~lib/rt/tlsf/GETFREELEFT|inlined.0 (result i32)
    local.get $block
    local.set $block|7
    local.get $block|7
    i32.const 4
    i32.sub
    i32.load
    br $~lib/rt/tlsf/GETFREELEFT|inlined.0
   end
   local.set $left
   local.get $left
   call $~lib/rt/common/BLOCK#get:mmInfo
   local.set $leftInfo
   i32.const 1
   drop
   local.get $leftInfo
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 480
    i32.const 221
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $root
   local.get $left
   call $~lib/rt/tlsf/removeBlock
   local.get $left
   local.set $block
   local.get $block
   local.get $leftInfo
   i32.const 4
   i32.add
   local.get $blockInfo
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.tee $blockInfo
   call $~lib/rt/common/BLOCK#set:mmInfo
  end
  local.get $right
  local.get $rightInfo
  i32.const 2
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $blockInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.set $size
  i32.const 1
  drop
  local.get $size
  i32.const 12
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 233
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  drop
  local.get $block
  i32.const 4
  i32.add
  local.get $size
  i32.add
  local.get $right
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 234
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $right
  i32.const 4
  i32.sub
  local.get $block
  i32.store
  local.get $size
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $fl
   local.get $size
   i32.const 4
   i32.shr_u
   local.set $sl
  else
   local.get $size
   local.tee $13
   i32.const 1073741820
   local.tee $14
   local.get $13
   local.get $14
   i32.lt_u
   select
   local.set $boundedSize
   i32.const 31
   local.get $boundedSize
   i32.clz
   i32.sub
   local.set $fl
   local.get $boundedSize
   local.get $fl
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $sl
   local.get $fl
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $fl
  end
  i32.const 1
  drop
  local.get $fl
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $sl
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 251
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/rt/tlsf/GETHEAD|inlined.1 (result i32)
   local.get $root
   local.set $root|16
   local.get $fl
   local.set $fl|17
   local.get $sl
   local.set $sl|18
   local.get $root|16
   local.get $fl|17
   i32.const 4
   i32.shl
   local.get $sl|18
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=96
   br $~lib/rt/tlsf/GETHEAD|inlined.1
  end
  local.set $head
  local.get $block
  i32.const 0
  call $~lib/rt/tlsf/Block#set:prev
  local.get $block
  local.get $head
  call $~lib/rt/tlsf/Block#set:next
  local.get $head
  if
   local.get $head
   local.get $block
   call $~lib/rt/tlsf/Block#set:prev
  end
  local.get $root
  local.set $root|20
  local.get $fl
  local.set $fl|21
  local.get $sl
  local.set $sl|22
  local.get $block
  local.set $head|23
  local.get $root|20
  local.get $fl|21
  i32.const 4
  i32.shl
  local.get $sl|22
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.get $head|23
  i32.store offset=96
  local.get $root
  local.get $root
  call $~lib/rt/tlsf/Root#get:flMap
  i32.const 1
  local.get $fl
  i32.shl
  i32.or
  call $~lib/rt/tlsf/Root#set:flMap
  local.get $root
  local.set $root|26
  local.get $fl
  local.set $fl|27
  block $~lib/rt/tlsf/GETSL|inlined.1 (result i32)
   local.get $root
   local.set $root|24
   local.get $fl
   local.set $fl|25
   local.get $root|24
   local.get $fl|25
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=4
   br $~lib/rt/tlsf/GETSL|inlined.1
  end
  i32.const 1
  local.get $sl
  i32.shl
  i32.or
  local.set $slMap
  local.get $root|26
  local.get $fl|27
  i32.const 2
  i32.shl
  i32.add
  local.get $slMap
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/addMemory (param $root i32) (param $start i32) (param $endU64 i64) (result i32)
  (local $end i32)
  (local $root|4 i32)
  (local $tail i32)
  (local $tailInfo i32)
  (local $size i32)
  (local $leftSize i32)
  (local $left i32)
  (local $root|10 i32)
  (local $tail|11 i32)
  local.get $endU64
  i32.wrap_i64
  local.set $end
  i32.const 1
  drop
  local.get $start
  i64.extend_i32_u
  local.get $endU64
  i64.le_u
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 382
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $start
  i32.const 4
  i32.add
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  i32.const 4
  i32.sub
  local.set $start
  local.get $end
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.set $end
  block $~lib/rt/tlsf/GETTAIL|inlined.0 (result i32)
   local.get $root
   local.set $root|4
   local.get $root|4
   i32.load offset=1568
   br $~lib/rt/tlsf/GETTAIL|inlined.0
  end
  local.set $tail
  i32.const 0
  local.set $tailInfo
  local.get $tail
  if
   i32.const 1
   drop
   local.get $start
   local.get $tail
   i32.const 4
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 480
    i32.const 389
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $start
   i32.const 16
   i32.sub
   local.get $tail
   i32.eq
   if
    local.get $start
    i32.const 16
    i32.sub
    local.set $start
    local.get $tail
    call $~lib/rt/common/BLOCK#get:mmInfo
    local.set $tailInfo
   else
   end
  else
   i32.const 1
   drop
   local.get $start
   local.get $root
   i32.const 1572
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 480
    i32.const 402
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $end
  local.get $start
  i32.sub
  local.set $size
  local.get $size
  i32.const 4
  i32.const 12
  i32.add
  i32.const 4
  i32.add
  i32.lt_u
  if
   i32.const 0
   return
  end
  local.get $size
  i32.const 2
  i32.const 4
  i32.mul
  i32.sub
  local.set $leftSize
  local.get $start
  local.set $left
  local.get $left
  local.get $leftSize
  i32.const 1
  i32.or
  local.get $tailInfo
  i32.const 2
  i32.and
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $left
  i32.const 0
  call $~lib/rt/tlsf/Block#set:prev
  local.get $left
  i32.const 0
  call $~lib/rt/tlsf/Block#set:next
  local.get $start
  i32.const 4
  i32.add
  local.get $leftSize
  i32.add
  local.set $tail
  local.get $tail
  i32.const 0
  i32.const 2
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $root
  local.set $root|10
  local.get $tail
  local.set $tail|11
  local.get $root|10
  local.get $tail|11
  i32.store offset=1568
  local.get $root
  local.get $left
  call $~lib/rt/tlsf/insertBlock
  i32.const 1
  return
 )
 (func $~lib/rt/tlsf/initialize
  (local $rootOffset i32)
  (local $pagesBefore i32)
  (local $pagesNeeded i32)
  (local $root i32)
  (local $root|4 i32)
  (local $tail i32)
  (local $fl i32)
  (local $root|7 i32)
  (local $fl|8 i32)
  (local $slMap i32)
  (local $sl i32)
  (local $root|11 i32)
  (local $fl|12 i32)
  (local $sl|13 i32)
  (local $head i32)
  (local $memStart i32)
  i32.const 0
  drop
  global.get $~lib/memory/__heap_base
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.set $rootOffset
  memory.size
  local.set $pagesBefore
  local.get $rootOffset
  i32.const 1572
  i32.add
  i32.const 65535
  i32.add
  i32.const 65535
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.shr_u
  local.set $pagesNeeded
  local.get $pagesNeeded
  local.get $pagesBefore
  i32.gt_s
  if (result i32)
   local.get $pagesNeeded
   local.get $pagesBefore
   i32.sub
   memory.grow
   i32.const 0
   i32.lt_s
  else
   i32.const 0
  end
  if
   unreachable
  end
  local.get $rootOffset
  local.set $root
  local.get $root
  i32.const 0
  call $~lib/rt/tlsf/Root#set:flMap
  local.get $root
  local.set $root|4
  i32.const 0
  local.set $tail
  local.get $root|4
  local.get $tail
  i32.store offset=1568
  i32.const 0
  local.set $fl
  loop $for-loop|0
   local.get $fl
   i32.const 23
   i32.lt_u
   if
    local.get $root
    local.set $root|7
    local.get $fl
    local.set $fl|8
    i32.const 0
    local.set $slMap
    local.get $root|7
    local.get $fl|8
    i32.const 2
    i32.shl
    i32.add
    local.get $slMap
    i32.store offset=4
    i32.const 0
    local.set $sl
    loop $for-loop|1
     local.get $sl
     i32.const 16
     i32.lt_u
     if
      local.get $root
      local.set $root|11
      local.get $fl
      local.set $fl|12
      local.get $sl
      local.set $sl|13
      i32.const 0
      local.set $head
      local.get $root|11
      local.get $fl|12
      i32.const 4
      i32.shl
      local.get $sl|13
      i32.add
      i32.const 2
      i32.shl
      i32.add
      local.get $head
      i32.store offset=96
      local.get $sl
      i32.const 1
      i32.add
      local.set $sl
      br $for-loop|1
     end
    end
    local.get $fl
    i32.const 1
    i32.add
    local.set $fl
    br $for-loop|0
   end
  end
  local.get $rootOffset
  i32.const 1572
  i32.add
  local.set $memStart
  i32.const 0
  drop
  local.get $root
  local.get $memStart
  memory.size
  i64.extend_i32_s
  i64.const 16
  i64.shl
  call $~lib/rt/tlsf/addMemory
  drop
  local.get $root
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/tlsf/checkUsedBlock (param $ptr i32) (result i32)
  (local $block i32)
  local.get $ptr
  i32.const 4
  i32.sub
  local.set $block
  local.get $ptr
  i32.const 0
  i32.ne
  if (result i32)
   local.get $ptr
   i32.const 15
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  if (result i32)
   local.get $block
   call $~lib/rt/common/BLOCK#get:mmInfo
   i32.const 1
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 562
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $block
  return
 )
 (func $~lib/rt/tlsf/freeBlock (param $root i32) (param $block i32)
  i32.const 0
  drop
  local.get $block
  local.get $block
  call $~lib/rt/common/BLOCK#get:mmInfo
  i32.const 1
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $root
  local.get $block
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/__free (param $ptr i32)
  local.get $ptr
  global.get $~lib/memory/__heap_base
  i32.lt_u
  if
   return
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $ptr
  call $~lib/rt/tlsf/checkUsedBlock
  call $~lib/rt/tlsf/freeBlock
 )
 (func $~lib/rt/itcms/free (param $obj i32)
  local.get $obj
  global.get $~lib/memory/__heap_base
  i32.lt_u
  if
   local.get $obj
   i32.const 0
   call $~lib/rt/itcms/Object#set:nextWithColor
   local.get $obj
   i32.const 0
   call $~lib/rt/itcms/Object#set:prev
  else
   global.get $~lib/rt/itcms/total
   local.get $obj
   call $~lib/rt/itcms/Object#get:size
   i32.sub
   global.set $~lib/rt/itcms/total
   i32.const 0
   drop
   local.get $obj
   i32.const 4
   i32.add
   call $~lib/rt/tlsf/__free
  end
 )
 (func $~lib/rt/itcms/step (result i32)
  (local $obj i32)
  (local $1 i32)
  (local $black i32)
  (local $from i32)
  block $break|0
   block $case2|0
    block $case1|0
     block $case0|0
      global.get $~lib/rt/itcms/state
      local.set $1
      local.get $1
      i32.const 0
      i32.eq
      br_if $case0|0
      local.get $1
      i32.const 1
      i32.eq
      br_if $case1|0
      local.get $1
      i32.const 2
      i32.eq
      br_if $case2|0
      br $break|0
     end
     i32.const 1
     global.set $~lib/rt/itcms/state
     i32.const 0
     global.set $~lib/rt/itcms/visitCount
     i32.const 0
     call $~lib/rt/itcms/visitRoots
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/iter
     global.get $~lib/rt/itcms/visitCount
     i32.const 1
     i32.mul
     return
    end
    global.get $~lib/rt/itcms/white
    i32.eqz
    local.set $black
    global.get $~lib/rt/itcms/iter
    call $~lib/rt/itcms/Object#get:next
    local.set $obj
    loop $while-continue|1
     local.get $obj
     global.get $~lib/rt/itcms/toSpace
     i32.ne
     if
      local.get $obj
      global.set $~lib/rt/itcms/iter
      local.get $obj
      call $~lib/rt/itcms/Object#get:color
      local.get $black
      i32.ne
      if
       local.get $obj
       local.get $black
       call $~lib/rt/itcms/Object#set:color
       i32.const 0
       global.set $~lib/rt/itcms/visitCount
       local.get $obj
       i32.const 20
       i32.add
       i32.const 0
       call $~lib/rt/__visit_members
       global.get $~lib/rt/itcms/visitCount
       i32.const 1
       i32.mul
       return
      end
      local.get $obj
      call $~lib/rt/itcms/Object#get:next
      local.set $obj
      br $while-continue|1
     end
    end
    i32.const 0
    global.set $~lib/rt/itcms/visitCount
    i32.const 0
    call $~lib/rt/itcms/visitRoots
    global.get $~lib/rt/itcms/iter
    call $~lib/rt/itcms/Object#get:next
    local.set $obj
    local.get $obj
    global.get $~lib/rt/itcms/toSpace
    i32.eq
    if
     i32.const 0
     call $~lib/rt/itcms/visitStack
     global.get $~lib/rt/itcms/iter
     call $~lib/rt/itcms/Object#get:next
     local.set $obj
     loop $while-continue|2
      local.get $obj
      global.get $~lib/rt/itcms/toSpace
      i32.ne
      if
       local.get $obj
       call $~lib/rt/itcms/Object#get:color
       local.get $black
       i32.ne
       if
        local.get $obj
        local.get $black
        call $~lib/rt/itcms/Object#set:color
        local.get $obj
        i32.const 20
        i32.add
        i32.const 0
        call $~lib/rt/__visit_members
       end
       local.get $obj
       call $~lib/rt/itcms/Object#get:next
       local.set $obj
       br $while-continue|2
      end
     end
     global.get $~lib/rt/itcms/fromSpace
     local.set $from
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/fromSpace
     local.get $from
     global.set $~lib/rt/itcms/toSpace
     local.get $black
     global.set $~lib/rt/itcms/white
     local.get $from
     call $~lib/rt/itcms/Object#get:next
     global.set $~lib/rt/itcms/iter
     i32.const 2
     global.set $~lib/rt/itcms/state
    end
    global.get $~lib/rt/itcms/visitCount
    i32.const 1
    i32.mul
    return
   end
   global.get $~lib/rt/itcms/iter
   local.set $obj
   local.get $obj
   global.get $~lib/rt/itcms/toSpace
   i32.ne
   if
    local.get $obj
    call $~lib/rt/itcms/Object#get:next
    global.set $~lib/rt/itcms/iter
    i32.const 1
    drop
    local.get $obj
    call $~lib/rt/itcms/Object#get:color
    global.get $~lib/rt/itcms/white
    i32.eqz
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 208
     i32.const 229
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    end
    local.get $obj
    call $~lib/rt/itcms/free
    i32.const 10
    return
   end
   global.get $~lib/rt/itcms/toSpace
   global.get $~lib/rt/itcms/toSpace
   call $~lib/rt/itcms/Object#set:nextWithColor
   global.get $~lib/rt/itcms/toSpace
   global.get $~lib/rt/itcms/toSpace
   call $~lib/rt/itcms/Object#set:prev
   i32.const 0
   global.set $~lib/rt/itcms/state
   br $break|0
  end
  i32.const 0
  return
 )
 (func $~lib/rt/itcms/interrupt
  (local $budget i32)
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 1024
  i32.const 200
  i32.mul
  i32.const 100
  i32.div_u
  local.set $budget
  loop $do-loop|0
   local.get $budget
   call $~lib/rt/itcms/step
   i32.sub
   local.set $budget
   global.get $~lib/rt/itcms/state
   i32.const 0
   i32.eq
   if
    i32.const 0
    drop
    i32.const 200
    i32.const 100
    i32.rem_u
    i32.const 0
    i32.eq
    drop
    global.get $~lib/rt/itcms/total
    i32.const 200
    i32.const 100
    i32.div_u
    i32.mul
    i32.const 1024
    i32.add
    global.set $~lib/rt/itcms/threshold
    i32.const 0
    drop
    return
   end
   local.get $budget
   i32.const 0
   i32.gt_s
   br_if $do-loop|0
  end
  i32.const 0
  drop
  global.get $~lib/rt/itcms/total
  i32.const 1024
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.sub
  i32.const 1024
  i32.lt_u
  i32.mul
  i32.add
  global.set $~lib/rt/itcms/threshold
  i32.const 0
  drop
 )
 (func $~lib/rt/tlsf/computeSize (param $size i32) (result i32)
  local.get $size
  i32.const 12
  i32.le_u
  if (result i32)
   i32.const 12
  else
   local.get $size
   i32.const 4
   i32.add
   i32.const 15
   i32.add
   i32.const 15
   i32.const -1
   i32.xor
   i32.and
   i32.const 4
   i32.sub
  end
  return
 )
 (func $~lib/rt/tlsf/prepareSize (param $size i32) (result i32)
  local.get $size
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 144
   i32.const 480
   i32.const 461
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  local.get $size
  call $~lib/rt/tlsf/computeSize
  return
 )
 (func $~lib/rt/tlsf/roundSize (param $size i32) (result i32)
  local.get $size
  i32.const 536870910
  i32.lt_u
  if (result i32)
   local.get $size
   i32.const 1
   i32.const 27
   local.get $size
   i32.clz
   i32.sub
   i32.shl
   i32.add
   i32.const 1
   i32.sub
  else
   local.get $size
  end
  return
 )
 (func $~lib/rt/tlsf/searchBlock (param $root i32) (param $size i32) (result i32)
  (local $fl i32)
  (local $sl i32)
  (local $requestSize i32)
  (local $root|5 i32)
  (local $fl|6 i32)
  (local $slMap i32)
  (local $head i32)
  (local $flMap i32)
  (local $root|10 i32)
  (local $fl|11 i32)
  (local $root|12 i32)
  (local $fl|13 i32)
  (local $sl|14 i32)
  (local $root|15 i32)
  (local $fl|16 i32)
  (local $sl|17 i32)
  local.get $size
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $fl
   local.get $size
   i32.const 4
   i32.shr_u
   local.set $sl
  else
   local.get $size
   call $~lib/rt/tlsf/roundSize
   local.set $requestSize
   i32.const 4
   i32.const 8
   i32.mul
   i32.const 1
   i32.sub
   local.get $requestSize
   i32.clz
   i32.sub
   local.set $fl
   local.get $requestSize
   local.get $fl
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $sl
   local.get $fl
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $fl
  end
  i32.const 1
  drop
  local.get $fl
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $sl
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 334
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/rt/tlsf/GETSL|inlined.2 (result i32)
   local.get $root
   local.set $root|5
   local.get $fl
   local.set $fl|6
   local.get $root|5
   local.get $fl|6
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=4
   br $~lib/rt/tlsf/GETSL|inlined.2
  end
  i32.const 0
  i32.const -1
  i32.xor
  local.get $sl
  i32.shl
  i32.and
  local.set $slMap
  i32.const 0
  local.set $head
  local.get $slMap
  i32.eqz
  if
   local.get $root
   call $~lib/rt/tlsf/Root#get:flMap
   i32.const 0
   i32.const -1
   i32.xor
   local.get $fl
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.set $flMap
   local.get $flMap
   i32.eqz
   if
    i32.const 0
    local.set $head
   else
    local.get $flMap
    i32.ctz
    local.set $fl
    block $~lib/rt/tlsf/GETSL|inlined.3 (result i32)
     local.get $root
     local.set $root|10
     local.get $fl
     local.set $fl|11
     local.get $root|10
     local.get $fl|11
     i32.const 2
     i32.shl
     i32.add
     i32.load offset=4
     br $~lib/rt/tlsf/GETSL|inlined.3
    end
    local.set $slMap
    i32.const 1
    drop
    local.get $slMap
    i32.eqz
    if
     i32.const 0
     i32.const 480
     i32.const 347
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    block $~lib/rt/tlsf/GETHEAD|inlined.2 (result i32)
     local.get $root
     local.set $root|12
     local.get $fl
     local.set $fl|13
     local.get $slMap
     i32.ctz
     local.set $sl|14
     local.get $root|12
     local.get $fl|13
     i32.const 4
     i32.shl
     local.get $sl|14
     i32.add
     i32.const 2
     i32.shl
     i32.add
     i32.load offset=96
     br $~lib/rt/tlsf/GETHEAD|inlined.2
    end
    local.set $head
   end
  else
   block $~lib/rt/tlsf/GETHEAD|inlined.3 (result i32)
    local.get $root
    local.set $root|15
    local.get $fl
    local.set $fl|16
    local.get $slMap
    i32.ctz
    local.set $sl|17
    local.get $root|15
    local.get $fl|16
    i32.const 4
    i32.shl
    local.get $sl|17
    i32.add
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=96
    br $~lib/rt/tlsf/GETHEAD|inlined.3
   end
   local.set $head
  end
  local.get $head
  return
 )
 (func $~lib/rt/tlsf/growMemory (param $root i32) (param $size i32)
  (local $pagesBefore i32)
  (local $root|3 i32)
  (local $pagesNeeded i32)
  (local $5 i32)
  (local $6 i32)
  (local $pagesWanted i32)
  (local $pagesAfter i32)
  i32.const 0
  drop
  local.get $size
  i32.const 256
  i32.ge_u
  if
   local.get $size
   call $~lib/rt/tlsf/roundSize
   local.set $size
  end
  memory.size
  local.set $pagesBefore
  local.get $size
  i32.const 4
  local.get $pagesBefore
  i32.const 16
  i32.shl
  i32.const 4
  i32.sub
  block $~lib/rt/tlsf/GETTAIL|inlined.1 (result i32)
   local.get $root
   local.set $root|3
   local.get $root|3
   i32.load offset=1568
   br $~lib/rt/tlsf/GETTAIL|inlined.1
  end
  i32.ne
  i32.shl
  i32.add
  local.set $size
  local.get $size
  i32.const 65535
  i32.add
  i32.const 65535
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.shr_u
  local.set $pagesNeeded
  local.get $pagesBefore
  local.tee $5
  local.get $pagesNeeded
  local.tee $6
  local.get $5
  local.get $6
  i32.gt_s
  select
  local.set $pagesWanted
  local.get $pagesWanted
  memory.grow
  i32.const 0
  i32.lt_s
  if
   local.get $pagesNeeded
   memory.grow
   i32.const 0
   i32.lt_s
   if
    unreachable
   end
  end
  memory.size
  local.set $pagesAfter
  local.get $root
  local.get $pagesBefore
  i32.const 16
  i32.shl
  local.get $pagesAfter
  i64.extend_i32_s
  i64.const 16
  i64.shl
  call $~lib/rt/tlsf/addMemory
  drop
 )
 (func $~lib/rt/tlsf/prepareBlock (param $root i32) (param $block i32) (param $size i32)
  (local $blockInfo i32)
  (local $remaining i32)
  (local $spare i32)
  (local $block|6 i32)
  (local $block|7 i32)
  local.get $block
  call $~lib/rt/common/BLOCK#get:mmInfo
  local.set $blockInfo
  i32.const 1
  drop
  local.get $size
  i32.const 4
  i32.add
  i32.const 15
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 361
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $blockInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $size
  i32.sub
  local.set $remaining
  local.get $remaining
  i32.const 4
  i32.const 12
  i32.add
  i32.ge_u
  if
   local.get $block
   local.get $size
   local.get $blockInfo
   i32.const 2
   i32.and
   i32.or
   call $~lib/rt/common/BLOCK#set:mmInfo
   local.get $block
   i32.const 4
   i32.add
   local.get $size
   i32.add
   local.set $spare
   local.get $spare
   local.get $remaining
   i32.const 4
   i32.sub
   i32.const 1
   i32.or
   call $~lib/rt/common/BLOCK#set:mmInfo
   local.get $root
   local.get $spare
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $block
   local.get $blockInfo
   i32.const 1
   i32.const -1
   i32.xor
   i32.and
   call $~lib/rt/common/BLOCK#set:mmInfo
   block $~lib/rt/tlsf/GETRIGHT|inlined.3 (result i32)
    local.get $block
    local.set $block|7
    local.get $block|7
    i32.const 4
    i32.add
    local.get $block|7
    call $~lib/rt/common/BLOCK#get:mmInfo
    i32.const 3
    i32.const -1
    i32.xor
    i32.and
    i32.add
    br $~lib/rt/tlsf/GETRIGHT|inlined.3
   end
   block $~lib/rt/tlsf/GETRIGHT|inlined.2 (result i32)
    local.get $block
    local.set $block|6
    local.get $block|6
    i32.const 4
    i32.add
    local.get $block|6
    call $~lib/rt/common/BLOCK#get:mmInfo
    i32.const 3
    i32.const -1
    i32.xor
    i32.and
    i32.add
    br $~lib/rt/tlsf/GETRIGHT|inlined.2
   end
   call $~lib/rt/common/BLOCK#get:mmInfo
   i32.const 2
   i32.const -1
   i32.xor
   i32.and
   call $~lib/rt/common/BLOCK#set:mmInfo
  end
 )
 (func $~lib/rt/tlsf/allocateBlock (param $root i32) (param $size i32) (result i32)
  (local $payloadSize i32)
  (local $block i32)
  local.get $size
  call $~lib/rt/tlsf/prepareSize
  local.set $payloadSize
  local.get $root
  local.get $payloadSize
  call $~lib/rt/tlsf/searchBlock
  local.set $block
  local.get $block
  i32.eqz
  if
   local.get $root
   local.get $payloadSize
   call $~lib/rt/tlsf/growMemory
   local.get $root
   local.get $payloadSize
   call $~lib/rt/tlsf/searchBlock
   local.set $block
   i32.const 1
   drop
   local.get $block
   i32.eqz
   if
    i32.const 0
    i32.const 480
    i32.const 499
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
  end
  i32.const 1
  drop
  local.get $block
  call $~lib/rt/common/BLOCK#get:mmInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $payloadSize
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 501
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $root
  local.get $block
  call $~lib/rt/tlsf/removeBlock
  local.get $root
  local.get $block
  local.get $payloadSize
  call $~lib/rt/tlsf/prepareBlock
  i32.const 0
  drop
  local.get $block
  return
 )
 (func $~lib/rt/tlsf/__alloc (param $size i32) (result i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $size
  call $~lib/rt/tlsf/allocateBlock
  i32.const 4
  i32.add
  return
 )
 (func $~lib/rt/itcms/Object#set:rtId (param $this i32) (param $rtId i32)
  local.get $this
  local.get $rtId
  i32.store offset=12
 )
 (func $~lib/rt/itcms/Object#set:rtSize (param $this i32) (param $rtSize i32)
  local.get $this
  local.get $rtSize
  i32.store offset=16
 )
 (func $~lib/rt/itcms/__new (param $size i32) (param $id i32) (result i32)
  (local $obj i32)
  (local $ptr i32)
  local.get $size
  i32.const 1073741804
  i32.ge_u
  if
   i32.const 144
   i32.const 208
   i32.const 261
   i32.const 31
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.ge_u
  if
   call $~lib/rt/itcms/interrupt
  end
  i32.const 16
  local.get $size
  i32.add
  call $~lib/rt/tlsf/__alloc
  i32.const 4
  i32.sub
  local.set $obj
  local.get $obj
  local.get $id
  call $~lib/rt/itcms/Object#set:rtId
  local.get $obj
  local.get $size
  call $~lib/rt/itcms/Object#set:rtSize
  local.get $obj
  global.get $~lib/rt/itcms/fromSpace
  global.get $~lib/rt/itcms/white
  call $~lib/rt/itcms/Object#linkTo
  global.get $~lib/rt/itcms/total
  local.get $obj
  call $~lib/rt/itcms/Object#get:size
  i32.add
  global.set $~lib/rt/itcms/total
  local.get $obj
  i32.const 20
  i32.add
  local.set $ptr
  local.get $ptr
  i32.const 0
  local.get $size
  memory.fill
  local.get $ptr
  return
 )
 (func $~lib/rt/itcms/__link (param $parentPtr i32) (param $childPtr i32) (param $expectMultiple i32)
  (local $child i32)
  (local $parent i32)
  (local $parentColor i32)
  local.get $childPtr
  i32.eqz
  if
   return
  end
  i32.const 1
  drop
  local.get $parentPtr
  i32.eqz
  if
   i32.const 0
   i32.const 208
   i32.const 295
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $childPtr
  i32.const 20
  i32.sub
  local.set $child
  local.get $child
  call $~lib/rt/itcms/Object#get:color
  global.get $~lib/rt/itcms/white
  i32.eq
  if
   local.get $parentPtr
   i32.const 20
   i32.sub
   local.set $parent
   local.get $parent
   call $~lib/rt/itcms/Object#get:color
   local.set $parentColor
   local.get $parentColor
   global.get $~lib/rt/itcms/white
   i32.eqz
   i32.eq
   if
    local.get $expectMultiple
    if
     local.get $parent
     call $~lib/rt/itcms/Object#makeGray
    else
     local.get $child
     call $~lib/rt/itcms/Object#makeGray
    end
   else
    local.get $parentColor
    i32.const 3
    i32.eq
    if (result i32)
     global.get $~lib/rt/itcms/state
     i32.const 1
     i32.eq
    else
     i32.const 0
    end
    if
     local.get $child
     call $~lib/rt/itcms/Object#makeGray
    end
   end
  end
 )
 (func $~lib/arraybuffer/ArrayBufferView#set:buffer (param $this i32) (param $buffer i32)
  local.get $this
  local.get $buffer
  i32.store
  local.get $this
  local.get $buffer
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/arraybuffer/ArrayBufferView#set:dataStart (param $this i32) (param $dataStart i32)
  local.get $this
  local.get $dataStart
  i32.store offset=4
 )
 (func $~lib/arraybuffer/ArrayBufferView#set:byteLength (param $this i32) (param $byteLength i32)
  local.get $this
  local.get $byteLength
  i32.store offset=8
 )
 (func $start:assembly/index
  memory.size
  i32.const 16
  i32.shl
  global.get $~lib/memory/__heap_base
  i32.sub
  i32.const 1
  i32.shr_u
  global.set $~lib/rt/itcms/threshold
  i32.const 256
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/pinSpace
  i32.const 288
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/toSpace
  i32.const 432
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/fromSpace
  i32.const 0
  global.get $assembly/index/VERTEX_COUNT
  i32.const 3
  i32.mul
  call $~lib/typedarray/Float32Array#constructor
  global.set $assembly/index/positions
  i32.const 0
  global.get $assembly/index/VERTEX_COUNT
  i32.const 3
  i32.mul
  call $~lib/typedarray/Float32Array#constructor
  global.set $assembly/index/normals
  i32.const 0
  global.get $assembly/index/VERTEX_COUNT
  i32.const 2
  i32.mul
  call $~lib/typedarray/Float32Array#constructor
  global.set $assembly/index/uvs
  i32.const 0
  global.get $assembly/index/INDEX_COUNT
  call $~lib/typedarray/Uint16Array#constructor
  global.set $assembly/index/indices
  i32.const 0
  i32.const 16
  call $~lib/typedarray/Float32Array#constructor
  global.set $assembly/index/model
  i32.const 0
  i32.const 16
  call $~lib/typedarray/Float32Array#constructor
  global.set $assembly/index/celestial
  i32.const 0
  i32.const 16
  call $~lib/typedarray/Float32Array#constructor
  global.set $assembly/index/view
  i32.const 0
  i32.const 16
  call $~lib/typedarray/Float32Array#constructor
  global.set $assembly/index/projection
  i32.const 0
  i32.const 16
  call $~lib/typedarray/Float64Array#constructor
  global.set $assembly/index/modelF
  i32.const 0
  i32.const 16
  call $~lib/typedarray/Float64Array#constructor
  global.set $assembly/index/celestialF
  i32.const 0
  i32.const 16
  call $~lib/typedarray/Float64Array#constructor
  global.set $assembly/index/viewF
  i32.const 0
  i32.const 16
  call $~lib/typedarray/Float64Array#constructor
  global.set $assembly/index/projectionF
  i32.const 0
  i32.const 16
  call $~lib/typedarray/Float64Array#constructor
  global.set $assembly/index/tmpA
  i32.const 0
  i32.const 16
  call $~lib/typedarray/Float64Array#constructor
  global.set $assembly/index/tmpB
  i32.const 0
  i32.const 16
  call $~lib/typedarray/Float64Array#constructor
  global.set $assembly/index/tmpC
  i32.const 0
  i32.const 16
  call $~lib/typedarray/Float64Array#constructor
  global.set $assembly/index/tmpD
  i32.const 0
  global.get $assembly/index/AURORA_CELLS
  call $~lib/typedarray/Float32Array#constructor
  global.set $assembly/index/auroraGrid
  i32.const 0
  global.get $assembly/index/AURORA_CELLS
  call $~lib/typedarray/Float32Array#constructor
  global.set $assembly/index/auroraGridSmooth
  i32.const 0
  global.get $assembly/index/AURORA_TEX_W
  global.get $assembly/index/AURORA_TEX_H
  i32.mul
  call $~lib/typedarray/Uint32Array#constructor
  global.set $assembly/index/auroraTexture
  i32.const 0
  global.get $assembly/index/AURORA_H
  call $~lib/typedarray/Float32Array#constructor
  global.set $assembly/index/rowMean
  i32.const 0
  global.get $assembly/index/AURORA_H
  call $~lib/typedarray/Float32Array#constructor
  global.set $assembly/index/rowMeanSmooth
  i32.const 0
  global.get $assembly/index/AURORA_TEX_W
  call $~lib/typedarray/Float32Array#constructor
  global.set $assembly/index/lonFrac
  i32.const 0
  global.get $assembly/index/AURORA_TEX_W
  call $~lib/typedarray/Int32Array#constructor
  global.set $assembly/index/lonRow0
  i32.const 0
  global.get $assembly/index/AURORA_TEX_W
  call $~lib/typedarray/Int32Array#constructor
  global.set $assembly/index/lonRow1
  i32.const 0
  global.get $assembly/index/LUT_N
  call $~lib/typedarray/Uint32Array#constructor
  global.set $assembly/index/paletteLUT
  i32.const 0
  global.get $assembly/index/MAX_KP
  call $~lib/typedarray/Float64Array#constructor
  global.set $assembly/index/kpTimes
  i32.const 0
  global.get $assembly/index/MAX_KP
  call $~lib/typedarray/Float64Array#constructor
  global.set $assembly/index/kpValues
 )
 (func $assembly/index/vertexCount (result i32)
  global.get $assembly/index/VERTEX_COUNT
  return
 )
 (func $assembly/index/indexCount (result i32)
  global.get $assembly/index/INDEX_COUNT
  return
 )
 (func $~lib/arraybuffer/ArrayBufferView#get:dataStart (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/math/pio2_large_quot (param $x f64) (param $u i64) (result i32)
  (local $magnitude i64)
  (local $offset i64)
  (local $shift i64)
  (local $tblPtr i32)
  (local $s0 i64)
  (local $s1 i64)
  (local $s2 i64)
  (local $b0 i64)
  (local $b1 i64)
  (local $b2 i64)
  (local $rshift i64)
  (local $b3 i64)
  (local $significand i64)
  (local $u|15 i64)
  (local $v i64)
  (local $u1 i64)
  (local $v1 i64)
  (local $w0 i64)
  (local $w1 i64)
  (local $t i64)
  (local $blo i64)
  (local $bhi i64)
  (local $ahi i64)
  (local $clo i64)
  (local $plo i64)
  (local $phi i64)
  (local $rlo i64)
  (local $rhi i64)
  (local $slo i64)
  (local $shi i64)
  (local $q i64)
  (local $q0 i64)
  (local $q1 i64)
  (local $shift|35 i64)
  (local $u|36 i64)
  (local $v|37 i64)
  (local $u1|38 i64)
  (local $v1|39 i64)
  (local $w0|40 i64)
  (local $w1|41 i64)
  (local $t|42 i64)
  (local $lo i64)
  (local $hi i64)
  (local $ahi|45 i64)
  (local $alo i64)
  (local $blo|47 i64)
  (local $shifter i64)
  (local $signbit i64)
  (local $coeff f64)
  local.get $u
  i64.const 9223372036854775807
  i64.and
  local.set $magnitude
  local.get $magnitude
  i64.const 52
  i64.shr_s
  i64.const 1045
  i64.sub
  local.set $offset
  local.get $offset
  i64.const 63
  i64.and
  local.set $shift
  i32.const 528
  local.get $offset
  i64.const 6
  i64.shr_s
  i32.wrap_i64
  i32.const 3
  i32.shl
  i32.add
  local.set $tblPtr
  local.get $tblPtr
  i64.load
  local.set $b0
  local.get $tblPtr
  i64.load offset=8
  local.set $b1
  local.get $tblPtr
  i64.load offset=16
  local.set $b2
  local.get $shift
  i64.const 0
  i64.ne
  if
   i32.const 64
   i64.extend_i32_s
   local.get $shift
   i64.sub
   local.set $rshift
   local.get $tblPtr
   i64.load offset=24
   local.set $b3
   local.get $b1
   local.get $rshift
   i64.shr_u
   local.get $b0
   local.get $shift
   i64.shl
   i64.or
   local.set $s0
   local.get $b2
   local.get $rshift
   i64.shr_u
   local.get $b1
   local.get $shift
   i64.shl
   i64.or
   local.set $s1
   local.get $b3
   local.get $rshift
   i64.shr_u
   local.get $b2
   local.get $shift
   i64.shl
   i64.or
   local.set $s2
  else
   local.get $b0
   local.set $s0
   local.get $b1
   local.set $s1
   local.get $b2
   local.set $s2
  end
  local.get $u
  i64.const 4503599627370495
  i64.and
  i64.const 4503599627370496
  i64.or
  local.set $significand
  block $~lib/math/umuldi|inlined.0 (result i64)
   local.get $s1
   local.set $u|15
   local.get $significand
   local.set $v
   local.get $u|15
   i64.const 4294967295
   i64.and
   local.set $u1
   local.get $v
   i64.const 4294967295
   i64.and
   local.set $v1
   local.get $u|15
   i64.const 32
   i64.shr_u
   local.set $u|15
   local.get $v
   i64.const 32
   i64.shr_u
   local.set $v
   local.get $u1
   local.get $v1
   i64.mul
   local.set $t
   local.get $t
   i64.const 4294967295
   i64.and
   local.set $w0
   local.get $u|15
   local.get $v1
   i64.mul
   local.get $t
   i64.const 32
   i64.shr_u
   i64.add
   local.set $t
   local.get $t
   i64.const 32
   i64.shr_u
   local.set $w1
   local.get $u1
   local.get $v
   i64.mul
   local.get $t
   i64.const 4294967295
   i64.and
   i64.add
   local.set $t
   local.get $u|15
   local.get $v
   i64.mul
   local.get $w1
   i64.add
   local.get $t
   i64.const 32
   i64.shr_u
   i64.add
   global.set $~lib/math/res128_hi
   local.get $t
   i64.const 32
   i64.shl
   local.get $w0
   i64.add
   br $~lib/math/umuldi|inlined.0
  end
  local.set $blo
  global.get $~lib/math/res128_hi
  local.set $bhi
  local.get $s0
  local.get $significand
  i64.mul
  local.set $ahi
  local.get $s2
  i64.const 32
  i64.shr_u
  local.get $significand
  i64.const 32
  i64.shr_s
  i64.mul
  local.set $clo
  local.get $blo
  local.get $clo
  i64.add
  local.set $plo
  local.get $ahi
  local.get $bhi
  i64.add
  local.get $plo
  local.get $clo
  i64.lt_u
  i64.extend_i32_u
  i64.add
  local.set $phi
  local.get $plo
  i64.const 2
  i64.shl
  local.set $rlo
  local.get $phi
  i64.const 2
  i64.shl
  local.get $plo
  i64.const 62
  i64.shr_u
  i64.or
  local.set $rhi
  local.get $rhi
  i64.const 63
  i64.shr_s
  local.set $slo
  local.get $slo
  i64.const 1
  i64.shr_s
  local.set $shi
  local.get $phi
  i64.const 62
  i64.shr_s
  local.get $slo
  i64.sub
  local.set $q
  i64.const 4372995238176751616
  block $~lib/math/pio2_right|inlined.0 (result i64)
   local.get $rlo
   local.get $slo
   i64.xor
   local.set $q0
   local.get $rhi
   local.get $shi
   i64.xor
   local.set $q1
   local.get $q1
   i64.clz
   local.set $shift|35
   local.get $q1
   local.get $shift|35
   i64.shl
   local.get $q0
   i64.const 64
   local.get $shift|35
   i64.sub
   i64.shr_u
   i64.or
   local.set $q1
   local.get $q0
   local.get $shift|35
   i64.shl
   local.set $q0
   block $~lib/math/umuldi|inlined.1 (result i64)
    i64.const -3958705157555305932
    local.set $u|36
    local.get $q1
    local.set $v|37
    local.get $u|36
    i64.const 4294967295
    i64.and
    local.set $u1|38
    local.get $v|37
    i64.const 4294967295
    i64.and
    local.set $v1|39
    local.get $u|36
    i64.const 32
    i64.shr_u
    local.set $u|36
    local.get $v|37
    i64.const 32
    i64.shr_u
    local.set $v|37
    local.get $u1|38
    local.get $v1|39
    i64.mul
    local.set $t|42
    local.get $t|42
    i64.const 4294967295
    i64.and
    local.set $w0|40
    local.get $u|36
    local.get $v1|39
    i64.mul
    local.get $t|42
    i64.const 32
    i64.shr_u
    i64.add
    local.set $t|42
    local.get $t|42
    i64.const 32
    i64.shr_u
    local.set $w1|41
    local.get $u1|38
    local.get $v|37
    i64.mul
    local.get $t|42
    i64.const 4294967295
    i64.and
    i64.add
    local.set $t|42
    local.get $u|36
    local.get $v|37
    i64.mul
    local.get $w1|41
    i64.add
    local.get $t|42
    i64.const 32
    i64.shr_u
    i64.add
    global.set $~lib/math/res128_hi
    local.get $t|42
    i64.const 32
    i64.shl
    local.get $w0|40
    i64.add
    br $~lib/math/umuldi|inlined.1
   end
   local.set $lo
   global.get $~lib/math/res128_hi
   local.set $hi
   local.get $hi
   i64.const 11
   i64.shr_u
   local.set $ahi|45
   local.get $lo
   i64.const 11
   i64.shr_u
   local.get $hi
   i64.const 53
   i64.shl
   i64.or
   local.set $alo
   f64.const 2.6469779601696886e-23
   i64.const -4267615245585081135
   f64.convert_i64_u
   f64.mul
   local.get $q1
   f64.convert_i64_u
   f64.mul
   f64.const 2.6469779601696886e-23
   i64.const -3958705157555305932
   f64.convert_i64_u
   f64.mul
   local.get $q0
   f64.convert_i64_u
   f64.mul
   f64.add
   i64.trunc_sat_f64_u
   local.set $blo|47
   local.get $ahi|45
   local.get $lo
   local.get $blo|47
   i64.lt_u
   i64.extend_i32_u
   i64.add
   f64.convert_i64_u
   global.set $~lib/math/rempio2_y0
   f64.const 5.421010862427522e-20
   local.get $alo
   local.get $blo|47
   i64.add
   f64.convert_i64_u
   f64.mul
   global.set $~lib/math/rempio2_y1
   local.get $shift|35
   br $~lib/math/pio2_right|inlined.0
  end
  i64.const 52
  i64.shl
  i64.sub
  local.set $shifter
  local.get $u
  local.get $rhi
  i64.xor
  i64.const -9223372036854775808
  i64.and
  local.set $signbit
  local.get $shifter
  local.get $signbit
  i64.or
  f64.reinterpret_i64
  local.set $coeff
  global.get $~lib/math/rempio2_y0
  local.get $coeff
  f64.mul
  global.set $~lib/math/rempio2_y0
  global.get $~lib/math/rempio2_y1
  local.get $coeff
  f64.mul
  global.set $~lib/math/rempio2_y1
  local.get $q
  i32.wrap_i64
  return
 )
 (func $~lib/math/NativeMath.cos (param $x f64) (result f64)
  (local $u i64)
  (local $ux i32)
  (local $sign i32)
  (local $x|4 f64)
  (local $y f64)
  (local $z f64)
  (local $w f64)
  (local $r f64)
  (local $hz f64)
  (local $x|10 f64)
  (local $u|11 i64)
  (local $sign|12 i32)
  (local $ix i32)
  (local $q i32)
  (local $z|15 f64)
  (local $y0 f64)
  (local $y1 f64)
  (local $q|18 f64)
  (local $r|19 f64)
  (local $w|20 f64)
  (local $j i32)
  (local $y0|22 f64)
  (local $hi i32)
  (local $i i32)
  (local $t f64)
  (local $t|26 f64)
  (local $y1|27 f64)
  (local $q|28 i32)
  (local $n i32)
  (local $y0|30 f64)
  (local $y1|31 f64)
  (local $x|32 f64)
  (local $y|33 f64)
  (local $iy i32)
  (local $z|35 f64)
  (local $w|36 f64)
  (local $r|37 f64)
  (local $v f64)
  (local $x|39 f64)
  (local $y|40 f64)
  (local $z|41 f64)
  (local $w|42 f64)
  (local $r|43 f64)
  (local $hz|44 f64)
  local.get $x
  i64.reinterpret_f64
  local.set $u
  local.get $u
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  local.set $ux
  local.get $ux
  i32.const 31
  i32.shr_u
  local.set $sign
  local.get $ux
  i32.const 2147483647
  i32.and
  local.set $ux
  local.get $ux
  i32.const 1072243195
  i32.le_u
  if
   local.get $ux
   i32.const 1044816030
   i32.lt_u
   if
    f64.const 1
    return
   end
   block $~lib/math/cos_kern|inlined.0 (result f64)
    local.get $x
    local.set $x|4
    f64.const 0
    local.set $y
    local.get $x|4
    local.get $x|4
    f64.mul
    local.set $z
    local.get $z
    local.get $z
    f64.mul
    local.set $w
    local.get $z
    f64.const 0.0416666666666666
    local.get $z
    f64.const -0.001388888888887411
    local.get $z
    f64.const 2.480158728947673e-05
    f64.mul
    f64.add
    f64.mul
    f64.add
    f64.mul
    local.get $w
    local.get $w
    f64.mul
    f64.const -2.7557314351390663e-07
    local.get $z
    f64.const 2.087572321298175e-09
    local.get $z
    f64.const -1.1359647557788195e-11
    f64.mul
    f64.add
    f64.mul
    f64.add
    f64.mul
    f64.add
    local.set $r
    f64.const 0.5
    local.get $z
    f64.mul
    local.set $hz
    f64.const 1
    local.get $hz
    f64.sub
    local.set $w
    local.get $w
    f64.const 1
    local.get $w
    f64.sub
    local.get $hz
    f64.sub
    local.get $z
    local.get $r
    f64.mul
    local.get $x|4
    local.get $y
    f64.mul
    f64.sub
    f64.add
    f64.add
    br $~lib/math/cos_kern|inlined.0
   end
   return
  end
  local.get $ux
  i32.const 2146435072
  i32.ge_u
  if
   local.get $x
   local.get $x
   f64.sub
   return
  end
  block $~lib/math/rempio2|inlined.0 (result i32)
   local.get $x
   local.set $x|10
   local.get $u
   local.set $u|11
   local.get $sign
   local.set $sign|12
   local.get $u|11
   i64.const 32
   i64.shr_u
   i32.wrap_i64
   i32.const 2147483647
   i32.and
   local.set $ix
   i32.const 0
   i32.const 1
   i32.lt_s
   drop
   local.get $ix
   i32.const 1073928572
   i32.lt_u
   if
    i32.const 1
    local.set $q
    local.get $sign|12
    i32.eqz
    if
     local.get $x|10
     f64.const 1.5707963267341256
     f64.sub
     local.set $z|15
     local.get $ix
     i32.const 1073291771
     i32.ne
     if
      local.get $z|15
      f64.const 6.077100506506192e-11
      f64.sub
      local.set $y0
      local.get $z|15
      local.get $y0
      f64.sub
      f64.const 6.077100506506192e-11
      f64.sub
      local.set $y1
     else
      local.get $z|15
      f64.const 6.077100506303966e-11
      f64.sub
      local.set $z|15
      local.get $z|15
      f64.const 2.0222662487959506e-21
      f64.sub
      local.set $y0
      local.get $z|15
      local.get $y0
      f64.sub
      f64.const 2.0222662487959506e-21
      f64.sub
      local.set $y1
     end
    else
     local.get $x|10
     f64.const 1.5707963267341256
     f64.add
     local.set $z|15
     local.get $ix
     i32.const 1073291771
     i32.ne
     if
      local.get $z|15
      f64.const 6.077100506506192e-11
      f64.add
      local.set $y0
      local.get $z|15
      local.get $y0
      f64.sub
      f64.const 6.077100506506192e-11
      f64.add
      local.set $y1
     else
      local.get $z|15
      f64.const 6.077100506303966e-11
      f64.add
      local.set $z|15
      local.get $z|15
      f64.const 2.0222662487959506e-21
      f64.add
      local.set $y0
      local.get $z|15
      local.get $y0
      f64.sub
      f64.const 2.0222662487959506e-21
      f64.add
      local.set $y1
     end
     i32.const -1
     local.set $q
    end
    local.get $y0
    global.set $~lib/math/rempio2_y0
    local.get $y1
    global.set $~lib/math/rempio2_y1
    local.get $q
    br $~lib/math/rempio2|inlined.0
   end
   local.get $ix
   i32.const 1094263291
   i32.lt_u
   if
    local.get $x|10
    f64.const 0.6366197723675814
    f64.mul
    f64.nearest
    local.set $q|18
    local.get $x|10
    local.get $q|18
    f64.const 1.5707963267341256
    f64.mul
    f64.sub
    local.set $r|19
    local.get $q|18
    f64.const 6.077100506506192e-11
    f64.mul
    local.set $w|20
    local.get $ix
    i32.const 20
    i32.shr_u
    local.set $j
    local.get $r|19
    local.get $w|20
    f64.sub
    local.set $y0|22
    local.get $y0|22
    i64.reinterpret_f64
    i64.const 32
    i64.shr_u
    i32.wrap_i64
    local.set $hi
    local.get $j
    local.get $hi
    i32.const 20
    i32.shr_u
    i32.const 2047
    i32.and
    i32.sub
    local.set $i
    local.get $i
    i32.const 16
    i32.gt_u
    if
     local.get $r|19
     local.set $t
     local.get $q|18
     f64.const 6.077100506303966e-11
     f64.mul
     local.set $w|20
     local.get $t
     local.get $w|20
     f64.sub
     local.set $r|19
     local.get $q|18
     f64.const 2.0222662487959506e-21
     f64.mul
     local.get $t
     local.get $r|19
     f64.sub
     local.get $w|20
     f64.sub
     f64.sub
     local.set $w|20
     local.get $r|19
     local.get $w|20
     f64.sub
     local.set $y0|22
     local.get $y0|22
     i64.reinterpret_f64
     i64.const 32
     i64.shr_u
     i32.wrap_i64
     local.set $hi
     local.get $j
     local.get $hi
     i32.const 20
     i32.shr_u
     i32.const 2047
     i32.and
     i32.sub
     local.set $i
     local.get $i
     i32.const 49
     i32.gt_u
     if
      local.get $r|19
      local.set $t|26
      local.get $q|18
      f64.const 2.0222662487111665e-21
      f64.mul
      local.set $w|20
      local.get $t|26
      local.get $w|20
      f64.sub
      local.set $r|19
      local.get $q|18
      f64.const 8.4784276603689e-32
      f64.mul
      local.get $t|26
      local.get $r|19
      f64.sub
      local.get $w|20
      f64.sub
      f64.sub
      local.set $w|20
      local.get $r|19
      local.get $w|20
      f64.sub
      local.set $y0|22
     end
    end
    local.get $r|19
    local.get $y0|22
    f64.sub
    local.get $w|20
    f64.sub
    local.set $y1|27
    local.get $y0|22
    global.set $~lib/math/rempio2_y0
    local.get $y1|27
    global.set $~lib/math/rempio2_y1
    local.get $q|18
    i32.trunc_sat_f64_s
    br $~lib/math/rempio2|inlined.0
   end
   local.get $x|10
   local.get $u|11
   call $~lib/math/pio2_large_quot
   local.set $q|28
   i32.const 0
   local.get $q|28
   i32.sub
   local.get $q|28
   local.get $sign|12
   select
   br $~lib/math/rempio2|inlined.0
  end
  local.set $n
  global.get $~lib/math/rempio2_y0
  local.set $y0|30
  global.get $~lib/math/rempio2_y1
  local.set $y1|31
  local.get $n
  i32.const 1
  i32.and
  if (result f64)
   block $~lib/math/sin_kern|inlined.0 (result f64)
    local.get $y0|30
    local.set $x|32
    local.get $y1|31
    local.set $y|33
    i32.const 1
    local.set $iy
    local.get $x|32
    local.get $x|32
    f64.mul
    local.set $z|35
    local.get $z|35
    local.get $z|35
    f64.mul
    local.set $w|36
    f64.const 0.00833333333332249
    local.get $z|35
    f64.const -1.984126982985795e-04
    local.get $z|35
    f64.const 2.7557313707070068e-06
    f64.mul
    f64.add
    f64.mul
    f64.add
    local.get $z|35
    local.get $w|36
    f64.mul
    f64.const -2.5050760253406863e-08
    local.get $z|35
    f64.const 1.58969099521155e-10
    f64.mul
    f64.add
    f64.mul
    f64.add
    local.set $r|37
    local.get $z|35
    local.get $x|32
    f64.mul
    local.set $v
    local.get $iy
    i32.eqz
    if
     local.get $x|32
     local.get $v
     f64.const -0.16666666666666632
     local.get $z|35
     local.get $r|37
     f64.mul
     f64.add
     f64.mul
     f64.add
     br $~lib/math/sin_kern|inlined.0
    else
     local.get $x|32
     local.get $z|35
     f64.const 0.5
     local.get $y|33
     f64.mul
     local.get $v
     local.get $r|37
     f64.mul
     f64.sub
     f64.mul
     local.get $y|33
     f64.sub
     local.get $v
     f64.const -0.16666666666666632
     f64.mul
     f64.sub
     f64.sub
     br $~lib/math/sin_kern|inlined.0
    end
    unreachable
   end
  else
   block $~lib/math/cos_kern|inlined.1 (result f64)
    local.get $y0|30
    local.set $x|39
    local.get $y1|31
    local.set $y|40
    local.get $x|39
    local.get $x|39
    f64.mul
    local.set $z|41
    local.get $z|41
    local.get $z|41
    f64.mul
    local.set $w|42
    local.get $z|41
    f64.const 0.0416666666666666
    local.get $z|41
    f64.const -0.001388888888887411
    local.get $z|41
    f64.const 2.480158728947673e-05
    f64.mul
    f64.add
    f64.mul
    f64.add
    f64.mul
    local.get $w|42
    local.get $w|42
    f64.mul
    f64.const -2.7557314351390663e-07
    local.get $z|41
    f64.const 2.087572321298175e-09
    local.get $z|41
    f64.const -1.1359647557788195e-11
    f64.mul
    f64.add
    f64.mul
    f64.add
    f64.mul
    f64.add
    local.set $r|43
    f64.const 0.5
    local.get $z|41
    f64.mul
    local.set $hz|44
    f64.const 1
    local.get $hz|44
    f64.sub
    local.set $w|42
    local.get $w|42
    f64.const 1
    local.get $w|42
    f64.sub
    local.get $hz|44
    f64.sub
    local.get $z|41
    local.get $r|43
    f64.mul
    local.get $x|39
    local.get $y|40
    f64.mul
    f64.sub
    f64.add
    f64.add
    br $~lib/math/cos_kern|inlined.1
   end
  end
  local.set $x
  local.get $n
  i32.const 1
  i32.add
  i32.const 2
  i32.and
  if (result f64)
   local.get $x
   f64.neg
  else
   local.get $x
  end
  return
 )
 (func $~lib/math/NativeMath.sin (param $x f64) (result f64)
  (local $u i64)
  (local $ux i32)
  (local $sign i32)
  (local $x|4 f64)
  (local $y f64)
  (local $iy i32)
  (local $z f64)
  (local $w f64)
  (local $r f64)
  (local $v f64)
  (local $x|11 f64)
  (local $u|12 i64)
  (local $sign|13 i32)
  (local $ix i32)
  (local $q i32)
  (local $z|16 f64)
  (local $y0 f64)
  (local $y1 f64)
  (local $q|19 f64)
  (local $r|20 f64)
  (local $w|21 f64)
  (local $j i32)
  (local $y0|23 f64)
  (local $hi i32)
  (local $i i32)
  (local $t f64)
  (local $t|27 f64)
  (local $y1|28 f64)
  (local $q|29 i32)
  (local $n i32)
  (local $y0|31 f64)
  (local $y1|32 f64)
  (local $x|33 f64)
  (local $y|34 f64)
  (local $z|35 f64)
  (local $w|36 f64)
  (local $r|37 f64)
  (local $hz f64)
  (local $x|39 f64)
  (local $y|40 f64)
  (local $iy|41 i32)
  (local $z|42 f64)
  (local $w|43 f64)
  (local $r|44 f64)
  (local $v|45 f64)
  local.get $x
  i64.reinterpret_f64
  local.set $u
  local.get $u
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  local.set $ux
  local.get $ux
  i32.const 31
  i32.shr_u
  local.set $sign
  local.get $ux
  i32.const 2147483647
  i32.and
  local.set $ux
  local.get $ux
  i32.const 1072243195
  i32.le_u
  if
   local.get $ux
   i32.const 1045430272
   i32.lt_u
   if
    local.get $x
    return
   end
   block $~lib/math/sin_kern|inlined.1 (result f64)
    local.get $x
    local.set $x|4
    f64.const 0
    local.set $y
    i32.const 0
    local.set $iy
    local.get $x|4
    local.get $x|4
    f64.mul
    local.set $z
    local.get $z
    local.get $z
    f64.mul
    local.set $w
    f64.const 0.00833333333332249
    local.get $z
    f64.const -1.984126982985795e-04
    local.get $z
    f64.const 2.7557313707070068e-06
    f64.mul
    f64.add
    f64.mul
    f64.add
    local.get $z
    local.get $w
    f64.mul
    f64.const -2.5050760253406863e-08
    local.get $z
    f64.const 1.58969099521155e-10
    f64.mul
    f64.add
    f64.mul
    f64.add
    local.set $r
    local.get $z
    local.get $x|4
    f64.mul
    local.set $v
    local.get $iy
    i32.eqz
    if
     local.get $x|4
     local.get $v
     f64.const -0.16666666666666632
     local.get $z
     local.get $r
     f64.mul
     f64.add
     f64.mul
     f64.add
     br $~lib/math/sin_kern|inlined.1
    else
     local.get $x|4
     local.get $z
     f64.const 0.5
     local.get $y
     f64.mul
     local.get $v
     local.get $r
     f64.mul
     f64.sub
     f64.mul
     local.get $y
     f64.sub
     local.get $v
     f64.const -0.16666666666666632
     f64.mul
     f64.sub
     f64.sub
     br $~lib/math/sin_kern|inlined.1
    end
    unreachable
   end
   return
  end
  local.get $ux
  i32.const 2146435072
  i32.ge_u
  if
   local.get $x
   local.get $x
   f64.sub
   return
  end
  block $~lib/math/rempio2|inlined.1 (result i32)
   local.get $x
   local.set $x|11
   local.get $u
   local.set $u|12
   local.get $sign
   local.set $sign|13
   local.get $u|12
   i64.const 32
   i64.shr_u
   i32.wrap_i64
   i32.const 2147483647
   i32.and
   local.set $ix
   i32.const 0
   i32.const 1
   i32.lt_s
   drop
   local.get $ix
   i32.const 1073928572
   i32.lt_u
   if
    i32.const 1
    local.set $q
    local.get $sign|13
    i32.eqz
    if
     local.get $x|11
     f64.const 1.5707963267341256
     f64.sub
     local.set $z|16
     local.get $ix
     i32.const 1073291771
     i32.ne
     if
      local.get $z|16
      f64.const 6.077100506506192e-11
      f64.sub
      local.set $y0
      local.get $z|16
      local.get $y0
      f64.sub
      f64.const 6.077100506506192e-11
      f64.sub
      local.set $y1
     else
      local.get $z|16
      f64.const 6.077100506303966e-11
      f64.sub
      local.set $z|16
      local.get $z|16
      f64.const 2.0222662487959506e-21
      f64.sub
      local.set $y0
      local.get $z|16
      local.get $y0
      f64.sub
      f64.const 2.0222662487959506e-21
      f64.sub
      local.set $y1
     end
    else
     local.get $x|11
     f64.const 1.5707963267341256
     f64.add
     local.set $z|16
     local.get $ix
     i32.const 1073291771
     i32.ne
     if
      local.get $z|16
      f64.const 6.077100506506192e-11
      f64.add
      local.set $y0
      local.get $z|16
      local.get $y0
      f64.sub
      f64.const 6.077100506506192e-11
      f64.add
      local.set $y1
     else
      local.get $z|16
      f64.const 6.077100506303966e-11
      f64.add
      local.set $z|16
      local.get $z|16
      f64.const 2.0222662487959506e-21
      f64.add
      local.set $y0
      local.get $z|16
      local.get $y0
      f64.sub
      f64.const 2.0222662487959506e-21
      f64.add
      local.set $y1
     end
     i32.const -1
     local.set $q
    end
    local.get $y0
    global.set $~lib/math/rempio2_y0
    local.get $y1
    global.set $~lib/math/rempio2_y1
    local.get $q
    br $~lib/math/rempio2|inlined.1
   end
   local.get $ix
   i32.const 1094263291
   i32.lt_u
   if
    local.get $x|11
    f64.const 0.6366197723675814
    f64.mul
    f64.nearest
    local.set $q|19
    local.get $x|11
    local.get $q|19
    f64.const 1.5707963267341256
    f64.mul
    f64.sub
    local.set $r|20
    local.get $q|19
    f64.const 6.077100506506192e-11
    f64.mul
    local.set $w|21
    local.get $ix
    i32.const 20
    i32.shr_u
    local.set $j
    local.get $r|20
    local.get $w|21
    f64.sub
    local.set $y0|23
    local.get $y0|23
    i64.reinterpret_f64
    i64.const 32
    i64.shr_u
    i32.wrap_i64
    local.set $hi
    local.get $j
    local.get $hi
    i32.const 20
    i32.shr_u
    i32.const 2047
    i32.and
    i32.sub
    local.set $i
    local.get $i
    i32.const 16
    i32.gt_u
    if
     local.get $r|20
     local.set $t
     local.get $q|19
     f64.const 6.077100506303966e-11
     f64.mul
     local.set $w|21
     local.get $t
     local.get $w|21
     f64.sub
     local.set $r|20
     local.get $q|19
     f64.const 2.0222662487959506e-21
     f64.mul
     local.get $t
     local.get $r|20
     f64.sub
     local.get $w|21
     f64.sub
     f64.sub
     local.set $w|21
     local.get $r|20
     local.get $w|21
     f64.sub
     local.set $y0|23
     local.get $y0|23
     i64.reinterpret_f64
     i64.const 32
     i64.shr_u
     i32.wrap_i64
     local.set $hi
     local.get $j
     local.get $hi
     i32.const 20
     i32.shr_u
     i32.const 2047
     i32.and
     i32.sub
     local.set $i
     local.get $i
     i32.const 49
     i32.gt_u
     if
      local.get $r|20
      local.set $t|27
      local.get $q|19
      f64.const 2.0222662487111665e-21
      f64.mul
      local.set $w|21
      local.get $t|27
      local.get $w|21
      f64.sub
      local.set $r|20
      local.get $q|19
      f64.const 8.4784276603689e-32
      f64.mul
      local.get $t|27
      local.get $r|20
      f64.sub
      local.get $w|21
      f64.sub
      f64.sub
      local.set $w|21
      local.get $r|20
      local.get $w|21
      f64.sub
      local.set $y0|23
     end
    end
    local.get $r|20
    local.get $y0|23
    f64.sub
    local.get $w|21
    f64.sub
    local.set $y1|28
    local.get $y0|23
    global.set $~lib/math/rempio2_y0
    local.get $y1|28
    global.set $~lib/math/rempio2_y1
    local.get $q|19
    i32.trunc_sat_f64_s
    br $~lib/math/rempio2|inlined.1
   end
   local.get $x|11
   local.get $u|12
   call $~lib/math/pio2_large_quot
   local.set $q|29
   i32.const 0
   local.get $q|29
   i32.sub
   local.get $q|29
   local.get $sign|13
   select
   br $~lib/math/rempio2|inlined.1
  end
  local.set $n
  global.get $~lib/math/rempio2_y0
  local.set $y0|31
  global.get $~lib/math/rempio2_y1
  local.set $y1|32
  local.get $n
  i32.const 1
  i32.and
  if (result f64)
   block $~lib/math/cos_kern|inlined.2 (result f64)
    local.get $y0|31
    local.set $x|33
    local.get $y1|32
    local.set $y|34
    local.get $x|33
    local.get $x|33
    f64.mul
    local.set $z|35
    local.get $z|35
    local.get $z|35
    f64.mul
    local.set $w|36
    local.get $z|35
    f64.const 0.0416666666666666
    local.get $z|35
    f64.const -0.001388888888887411
    local.get $z|35
    f64.const 2.480158728947673e-05
    f64.mul
    f64.add
    f64.mul
    f64.add
    f64.mul
    local.get $w|36
    local.get $w|36
    f64.mul
    f64.const -2.7557314351390663e-07
    local.get $z|35
    f64.const 2.087572321298175e-09
    local.get $z|35
    f64.const -1.1359647557788195e-11
    f64.mul
    f64.add
    f64.mul
    f64.add
    f64.mul
    f64.add
    local.set $r|37
    f64.const 0.5
    local.get $z|35
    f64.mul
    local.set $hz
    f64.const 1
    local.get $hz
    f64.sub
    local.set $w|36
    local.get $w|36
    f64.const 1
    local.get $w|36
    f64.sub
    local.get $hz
    f64.sub
    local.get $z|35
    local.get $r|37
    f64.mul
    local.get $x|33
    local.get $y|34
    f64.mul
    f64.sub
    f64.add
    f64.add
    br $~lib/math/cos_kern|inlined.2
   end
  else
   block $~lib/math/sin_kern|inlined.2 (result f64)
    local.get $y0|31
    local.set $x|39
    local.get $y1|32
    local.set $y|40
    i32.const 1
    local.set $iy|41
    local.get $x|39
    local.get $x|39
    f64.mul
    local.set $z|42
    local.get $z|42
    local.get $z|42
    f64.mul
    local.set $w|43
    f64.const 0.00833333333332249
    local.get $z|42
    f64.const -1.984126982985795e-04
    local.get $z|42
    f64.const 2.7557313707070068e-06
    f64.mul
    f64.add
    f64.mul
    f64.add
    local.get $z|42
    local.get $w|43
    f64.mul
    f64.const -2.5050760253406863e-08
    local.get $z|42
    f64.const 1.58969099521155e-10
    f64.mul
    f64.add
    f64.mul
    f64.add
    local.set $r|44
    local.get $z|42
    local.get $x|39
    f64.mul
    local.set $v|45
    local.get $iy|41
    i32.eqz
    if
     local.get $x|39
     local.get $v|45
     f64.const -0.16666666666666632
     local.get $z|42
     local.get $r|44
     f64.mul
     f64.add
     f64.mul
     f64.add
     br $~lib/math/sin_kern|inlined.2
    else
     local.get $x|39
     local.get $z|42
     f64.const 0.5
     local.get $y|40
     f64.mul
     local.get $v|45
     local.get $r|44
     f64.mul
     f64.sub
     f64.mul
     local.get $y|40
     f64.sub
     local.get $v|45
     f64.const -0.16666666666666632
     f64.mul
     f64.sub
     f64.sub
     br $~lib/math/sin_kern|inlined.2
    end
    unreachable
   end
  end
  local.set $x
  local.get $n
  i32.const 2
  i32.and
  if (result f64)
   local.get $x
   f64.neg
  else
   local.get $x
  end
  return
 )
 (func $~lib/arraybuffer/ArrayBufferView#get:byteLength (param $this i32) (result i32)
  local.get $this
  i32.load offset=8
 )
 (func $assembly/index/setRotation (param $yawAngle f64) (param $pitchAngle f64)
  local.get $yawAngle
  global.set $assembly/index/yaw
  local.get $pitchAngle
  global.set $assembly/index/pitch
 )
 (func $assembly/index/setZoom (param $distance f64)
  local.get $distance
  f64.const 1.08
  f64.lt
  if (result f64)
   f64.const 1.08
  else
   local.get $distance
   f64.const 6e4
   f64.gt
   if (result f64)
    f64.const 6e4
   else
    local.get $distance
   end
  end
  global.set $assembly/index/cameraDistance
 )
 (func $assembly/index/setPan (param $x f64) (param $y f64)
  local.get $x
  global.set $assembly/index/panX
  local.get $y
  global.set $assembly/index/panY
 )
 (func $assembly/index/setSpin (param $angle f64)
  local.get $angle
  global.set $assembly/index/spin
 )
 (func $assembly/index/setEarthLock (param $locked i32)
  local.get $locked
  i32.const 0
  i32.ne
  global.set $assembly/index/earthLocked
 )
 (func $assembly/index/setViewport (param $width f64) (param $height f64)
  local.get $height
  f64.const 0
  f64.gt
  if (result f64)
   local.get $width
   local.get $height
   f64.div
  else
   f64.const 1
  end
  global.set $assembly/index/viewAspect
 )
 (func $~lib/math/tan_kern (param $x f64) (param $y f64) (param $iy i32) (result f64)
  (local $z f64)
  (local $r f64)
  (local $v f64)
  (local $w f64)
  (local $s f64)
  (local $hx i32)
  (local $ix i32)
  (local $big i32)
  (local $a f64)
  (local $t f64)
  local.get $x
  i64.reinterpret_f64
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  local.set $hx
  local.get $hx
  i32.const 2147483647
  i32.and
  local.set $ix
  local.get $ix
  i32.const 1072010280
  i32.ge_s
  local.set $big
  local.get $big
  if
   local.get $hx
   i32.const 0
   i32.lt_s
   if
    local.get $x
    f64.neg
    local.set $x
    local.get $y
    f64.neg
    local.set $y
   end
   f64.const 0.7853981633974483
   local.get $x
   f64.sub
   local.set $z
   f64.const 3.061616997868383e-17
   local.get $y
   f64.sub
   local.set $w
   local.get $z
   local.get $w
   f64.add
   local.set $x
   f64.const 0
   local.set $y
  end
  local.get $x
  local.get $x
  f64.mul
  local.set $z
  local.get $z
  local.get $z
  f64.mul
  local.set $w
  f64.const 0.13333333333320124
  local.get $w
  f64.const 0.021869488294859542
  local.get $w
  f64.const 3.5920791075913124e-03
  local.get $w
  f64.const 5.880412408202641e-04
  local.get $w
  f64.const 7.817944429395571e-05
  local.get $w
  f64.const -1.8558637485527546e-05
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  f64.add
  local.set $r
  local.get $z
  f64.const 0.05396825397622605
  local.get $w
  f64.const 0.0088632398235993
  local.get $w
  f64.const 1.4562094543252903e-03
  local.get $w
  f64.const 2.464631348184699e-04
  local.get $w
  f64.const 7.140724913826082e-05
  local.get $w
  f64.const 2.590730518636337e-05
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  local.set $v
  local.get $z
  local.get $x
  f64.mul
  local.set $s
  local.get $y
  local.get $z
  local.get $s
  local.get $r
  local.get $v
  f64.add
  f64.mul
  local.get $y
  f64.add
  f64.mul
  f64.add
  local.set $r
  local.get $r
  f64.const 0.3333333333333341
  local.get $s
  f64.mul
  f64.add
  local.set $r
  local.get $x
  local.get $r
  f64.add
  local.set $w
  local.get $big
  if
   local.get $iy
   f64.convert_i32_s
   local.set $v
   f64.const 1
   local.get $hx
   i32.const 30
   i32.shr_s
   i32.const 2
   i32.and
   f64.convert_i32_s
   f64.sub
   local.get $v
   f64.const 2
   local.get $x
   local.get $w
   local.get $w
   f64.mul
   local.get $w
   local.get $v
   f64.add
   f64.div
   local.get $r
   f64.sub
   f64.sub
   f64.mul
   f64.sub
   f64.mul
   return
  end
  local.get $iy
  i32.const 1
  i32.eq
  if
   local.get $w
   return
  end
  local.get $w
  local.set $z
  local.get $z
  i64.reinterpret_f64
  i64.const -4294967296
  i64.and
  f64.reinterpret_i64
  local.set $z
  local.get $r
  local.get $z
  local.get $x
  f64.sub
  f64.sub
  local.set $v
  f64.const 1
  f64.neg
  local.get $w
  f64.div
  local.tee $a
  local.set $t
  local.get $t
  i64.reinterpret_f64
  i64.const -4294967296
  i64.and
  f64.reinterpret_i64
  local.set $t
  f64.const 1
  local.get $t
  local.get $z
  f64.mul
  f64.add
  local.set $s
  local.get $t
  local.get $a
  local.get $s
  local.get $t
  local.get $v
  f64.mul
  f64.add
  f64.mul
  f64.add
  return
 )
 (func $~lib/math/NativeMath.tan (param $x f64) (result f64)
  (local $u i64)
  (local $ux i32)
  (local $sign i32)
  (local $x|4 f64)
  (local $u|5 i64)
  (local $sign|6 i32)
  (local $ix i32)
  (local $q i32)
  (local $z f64)
  (local $y0 f64)
  (local $y1 f64)
  (local $q|12 f64)
  (local $r f64)
  (local $w f64)
  (local $j i32)
  (local $y0|16 f64)
  (local $hi i32)
  (local $i i32)
  (local $t f64)
  (local $t|20 f64)
  (local $y1|21 f64)
  (local $q|22 i32)
  (local $n i32)
  local.get $x
  i64.reinterpret_f64
  local.set $u
  local.get $u
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  local.set $ux
  local.get $ux
  i32.const 31
  i32.shr_u
  local.set $sign
  local.get $ux
  i32.const 2147483647
  i32.and
  local.set $ux
  local.get $ux
  i32.const 1072243195
  i32.le_u
  if
   local.get $ux
   i32.const 1044381696
   i32.lt_u
   if
    local.get $x
    return
   end
   local.get $x
   f64.const 0
   i32.const 1
   call $~lib/math/tan_kern
   return
  end
  local.get $ux
  i32.const 2146435072
  i32.ge_u
  if
   local.get $x
   local.get $x
   f64.sub
   return
  end
  block $~lib/math/rempio2|inlined.2 (result i32)
   local.get $x
   local.set $x|4
   local.get $u
   local.set $u|5
   local.get $sign
   local.set $sign|6
   local.get $u|5
   i64.const 32
   i64.shr_u
   i32.wrap_i64
   i32.const 2147483647
   i32.and
   local.set $ix
   i32.const 0
   i32.const 1
   i32.lt_s
   drop
   local.get $ix
   i32.const 1073928572
   i32.lt_u
   if
    i32.const 1
    local.set $q
    local.get $sign|6
    i32.eqz
    if
     local.get $x|4
     f64.const 1.5707963267341256
     f64.sub
     local.set $z
     local.get $ix
     i32.const 1073291771
     i32.ne
     if
      local.get $z
      f64.const 6.077100506506192e-11
      f64.sub
      local.set $y0
      local.get $z
      local.get $y0
      f64.sub
      f64.const 6.077100506506192e-11
      f64.sub
      local.set $y1
     else
      local.get $z
      f64.const 6.077100506303966e-11
      f64.sub
      local.set $z
      local.get $z
      f64.const 2.0222662487959506e-21
      f64.sub
      local.set $y0
      local.get $z
      local.get $y0
      f64.sub
      f64.const 2.0222662487959506e-21
      f64.sub
      local.set $y1
     end
    else
     local.get $x|4
     f64.const 1.5707963267341256
     f64.add
     local.set $z
     local.get $ix
     i32.const 1073291771
     i32.ne
     if
      local.get $z
      f64.const 6.077100506506192e-11
      f64.add
      local.set $y0
      local.get $z
      local.get $y0
      f64.sub
      f64.const 6.077100506506192e-11
      f64.add
      local.set $y1
     else
      local.get $z
      f64.const 6.077100506303966e-11
      f64.add
      local.set $z
      local.get $z
      f64.const 2.0222662487959506e-21
      f64.add
      local.set $y0
      local.get $z
      local.get $y0
      f64.sub
      f64.const 2.0222662487959506e-21
      f64.add
      local.set $y1
     end
     i32.const -1
     local.set $q
    end
    local.get $y0
    global.set $~lib/math/rempio2_y0
    local.get $y1
    global.set $~lib/math/rempio2_y1
    local.get $q
    br $~lib/math/rempio2|inlined.2
   end
   local.get $ix
   i32.const 1094263291
   i32.lt_u
   if
    local.get $x|4
    f64.const 0.6366197723675814
    f64.mul
    f64.nearest
    local.set $q|12
    local.get $x|4
    local.get $q|12
    f64.const 1.5707963267341256
    f64.mul
    f64.sub
    local.set $r
    local.get $q|12
    f64.const 6.077100506506192e-11
    f64.mul
    local.set $w
    local.get $ix
    i32.const 20
    i32.shr_u
    local.set $j
    local.get $r
    local.get $w
    f64.sub
    local.set $y0|16
    local.get $y0|16
    i64.reinterpret_f64
    i64.const 32
    i64.shr_u
    i32.wrap_i64
    local.set $hi
    local.get $j
    local.get $hi
    i32.const 20
    i32.shr_u
    i32.const 2047
    i32.and
    i32.sub
    local.set $i
    local.get $i
    i32.const 16
    i32.gt_u
    if
     local.get $r
     local.set $t
     local.get $q|12
     f64.const 6.077100506303966e-11
     f64.mul
     local.set $w
     local.get $t
     local.get $w
     f64.sub
     local.set $r
     local.get $q|12
     f64.const 2.0222662487959506e-21
     f64.mul
     local.get $t
     local.get $r
     f64.sub
     local.get $w
     f64.sub
     f64.sub
     local.set $w
     local.get $r
     local.get $w
     f64.sub
     local.set $y0|16
     local.get $y0|16
     i64.reinterpret_f64
     i64.const 32
     i64.shr_u
     i32.wrap_i64
     local.set $hi
     local.get $j
     local.get $hi
     i32.const 20
     i32.shr_u
     i32.const 2047
     i32.and
     i32.sub
     local.set $i
     local.get $i
     i32.const 49
     i32.gt_u
     if
      local.get $r
      local.set $t|20
      local.get $q|12
      f64.const 2.0222662487111665e-21
      f64.mul
      local.set $w
      local.get $t|20
      local.get $w
      f64.sub
      local.set $r
      local.get $q|12
      f64.const 8.4784276603689e-32
      f64.mul
      local.get $t|20
      local.get $r
      f64.sub
      local.get $w
      f64.sub
      f64.sub
      local.set $w
      local.get $r
      local.get $w
      f64.sub
      local.set $y0|16
     end
    end
    local.get $r
    local.get $y0|16
    f64.sub
    local.get $w
    f64.sub
    local.set $y1|21
    local.get $y0|16
    global.set $~lib/math/rempio2_y0
    local.get $y1|21
    global.set $~lib/math/rempio2_y1
    local.get $q|12
    i32.trunc_sat_f64_s
    br $~lib/math/rempio2|inlined.2
   end
   local.get $x|4
   local.get $u|5
   call $~lib/math/pio2_large_quot
   local.set $q|22
   i32.const 0
   local.get $q|22
   i32.sub
   local.get $q|22
   local.get $sign|6
   select
   br $~lib/math/rempio2|inlined.2
  end
  local.set $n
  global.get $~lib/math/rempio2_y0
  global.get $~lib/math/rempio2_y1
  i32.const 1
  local.get $n
  i32.const 1
  i32.and
  i32.const 1
  i32.shl
  i32.sub
  call $~lib/math/tan_kern
  return
 )
 (func $assembly/index/cameraDistanceValue (result f64)
  global.get $assembly/index/cameraDistance
  return
 )
 (func $assembly/index/auroraWidth (result i32)
  global.get $assembly/index/AURORA_W
  return
 )
 (func $assembly/index/auroraHeight (result i32)
  global.get $assembly/index/AURORA_H
  return
 )
 (func $assembly/index/auroraTextureWidth (result i32)
  global.get $assembly/index/AURORA_TEX_W
  return
 )
 (func $assembly/index/auroraTextureHeight (result i32)
  global.get $assembly/index/AURORA_TEX_H
  return
 )
 (func $assembly/index/clampF (param $value f64) (param $low f64) (param $high f64) (result f64)
  local.get $value
  local.get $low
  f64.lt
  if (result f64)
   local.get $low
  else
   local.get $value
   local.get $high
   f64.gt
   if (result f64)
    local.get $high
   else
    local.get $value
   end
  end
  return
 )
 (func $assembly/index/smoothstep (param $edge0 f64) (param $edge1 f64) (param $x f64) (result f64)
  (local $t f64)
  local.get $x
  local.get $edge0
  f64.sub
  local.get $edge1
  local.get $edge0
  f64.sub
  f64.div
  f64.const 0
  f64.const 1
  call $assembly/index/clampF
  local.set $t
  local.get $t
  local.get $t
  f64.mul
  f64.const 3
  f64.const 2
  local.get $t
  f64.mul
  f64.sub
  f64.mul
  return
 )
 (func $assembly/index/maxKpCount (result i32)
  global.get $assembly/index/MAX_KP
  return
 )
 (func $assembly/index/setKpCount (param $count i32)
  local.get $count
  i32.const 0
  i32.lt_s
  if (result i32)
   i32.const 0
  else
   local.get $count
   global.get $assembly/index/MAX_KP
   i32.gt_s
   if (result i32)
    global.get $assembly/index/MAX_KP
   else
    local.get $count
   end
  end
  global.set $assembly/index/kpCount
 )
 (func $assembly/index/setReferenceKp (param $value f64)
  local.get $value
  global.set $assembly/index/referenceKp
 )
 (func $assembly/index/kpAtTime (param $timeMs f64) (result f64)
  local.get $timeMs
  call $assembly/index/interpolateKp
  return
 )
 (func $assembly/index/auroraPeakNorth (result f64)
  global.get $assembly/index/peakNorth
  return
 )
 (func $assembly/index/auroraPeakSouth (result f64)
  global.get $assembly/index/peakSouth
  return
 )
 (func $~lib/math/NativeMath.pow (param $x f64) (param $y f64) (result f64)
  (local $x|2 f64)
  (local $y|3 f64)
  (local $sign_bias i32)
  (local $ix i64)
  (local $iy i64)
  (local $topx i64)
  (local $topy i64)
  (local $u i64)
  (local $u|10 i64)
  (local $x2 f64)
  (local $iy|12 i64)
  (local $e i64)
  (local $iy|14 i64)
  (local $e|15 i64)
  (local $yint i32)
  (local $ix|17 i64)
  (local $tmp i64)
  (local $i i32)
  (local $k i64)
  (local $iz i64)
  (local $z f64)
  (local $kd f64)
  (local $invc f64)
  (local $logc f64)
  (local $logctail f64)
  (local $zhi f64)
  (local $zlo f64)
  (local $rhi f64)
  (local $rlo f64)
  (local $r f64)
  (local $t1 f64)
  (local $t2 f64)
  (local $lo1 f64)
  (local $lo2 f64)
  (local $ar f64)
  (local $ar2 f64)
  (local $ar3 f64)
  (local $arhi f64)
  (local $arhi2 f64)
  (local $hi f64)
  (local $lo3 f64)
  (local $lo4 f64)
  (local $p f64)
  (local $lo f64)
  (local $y|46 f64)
  (local $hi|47 f64)
  (local $lo|48 f64)
  (local $ehi f64)
  (local $elo f64)
  (local $yhi f64)
  (local $ylo f64)
  (local $lhi f64)
  (local $llo f64)
  (local $x|55 f64)
  (local $xtail f64)
  (local $sign_bias|57 i32)
  (local $abstop i32)
  (local $ki i64)
  (local $top i64)
  (local $sbits i64)
  (local $idx i32)
  (local $kd|63 f64)
  (local $z|64 f64)
  (local $r|65 f64)
  (local $r2 f64)
  (local $scale f64)
  (local $tail f64)
  (local $tmp|69 f64)
  (local $ux i64)
  (local $sign i32)
  (local $sign|72 i32)
  (local $y|73 f64)
  (local $sign|74 i32)
  (local $sign|75 i32)
  (local $y|76 f64)
  (local $tmp|77 f64)
  (local $sbits|78 i64)
  (local $ki|79 i64)
  (local $scale|80 f64)
  (local $y|81 f64)
  (local $one f64)
  (local $lo|83 f64)
  (local $hi|84 f64)
  local.get $y
  f64.abs
  f64.const 2
  f64.le
  if
   local.get $y
   f64.const 2
   f64.eq
   if
    local.get $x
    local.get $x
    f64.mul
    return
   end
   local.get $y
   f64.const 0.5
   f64.eq
   if
    local.get $x
    f64.sqrt
    f64.abs
    f64.const inf
    local.get $x
    f64.const inf
    f64.neg
    f64.ne
    select
    return
   end
   local.get $y
   f64.const -1
   f64.eq
   if
    f64.const 1
    local.get $x
    f64.div
    return
   end
   local.get $y
   f64.const 1
   f64.eq
   if
    local.get $x
    return
   end
   local.get $y
   f64.const 0
   f64.eq
   if
    f64.const 1
    return
   end
  end
  i32.const 0
  i32.const 1
  i32.lt_s
  drop
  block $~lib/util/math/pow_lut|inlined.0 (result f64)
   local.get $x
   local.set $x|2
   local.get $y
   local.set $y|3
   i32.const 0
   local.set $sign_bias
   local.get $x|2
   i64.reinterpret_f64
   local.set $ix
   local.get $y|3
   i64.reinterpret_f64
   local.set $iy
   local.get $ix
   i64.const 52
   i64.shr_u
   local.set $topx
   local.get $iy
   i64.const 52
   i64.shr_u
   local.set $topy
   local.get $topx
   i64.const 1
   i64.sub
   i64.const 2047
   i64.const 1
   i64.sub
   i64.ge_u
   if (result i32)
    i32.const 1
   else
    local.get $topy
    i64.const 2047
    i64.and
    i64.const 958
    i64.sub
    i64.const 1086
    i64.const 958
    i64.sub
    i64.ge_u
   end
   if
    block $~lib/util/math/zeroinfnan|inlined.0 (result i32)
     local.get $iy
     local.set $u
     local.get $u
     i64.const 1
     i64.shl
     i64.const 1
     i64.sub
     i64.const -9007199254740992
     i64.const 1
     i64.sub
     i64.ge_u
     br $~lib/util/math/zeroinfnan|inlined.0
    end
    if
     local.get $iy
     i64.const 1
     i64.shl
     i64.const 0
     i64.eq
     if
      f64.const 1
      br $~lib/util/math/pow_lut|inlined.0
     end
     local.get $ix
     i64.const 4607182418800017408
     i64.eq
     if
      f64.const nan:0x8000000000000
      br $~lib/util/math/pow_lut|inlined.0
     end
     local.get $ix
     i64.const 1
     i64.shl
     i64.const -9007199254740992
     i64.gt_u
     if (result i32)
      i32.const 1
     else
      local.get $iy
      i64.const 1
      i64.shl
      i64.const -9007199254740992
      i64.gt_u
     end
     if
      local.get $x|2
      local.get $y|3
      f64.add
      br $~lib/util/math/pow_lut|inlined.0
     end
     local.get $ix
     i64.const 1
     i64.shl
     i64.const 9214364837600034816
     i64.eq
     if
      f64.const nan:0x8000000000000
      br $~lib/util/math/pow_lut|inlined.0
     end
     local.get $ix
     i64.const 1
     i64.shl
     i64.const 9214364837600034816
     i64.lt_u
     local.get $iy
     i64.const 63
     i64.shr_u
     i64.const 0
     i64.ne
     i32.eqz
     i32.eq
     if
      f64.const 0
      br $~lib/util/math/pow_lut|inlined.0
     end
     local.get $y|3
     local.get $y|3
     f64.mul
     br $~lib/util/math/pow_lut|inlined.0
    end
    block $~lib/util/math/zeroinfnan|inlined.1 (result i32)
     local.get $ix
     local.set $u|10
     local.get $u|10
     i64.const 1
     i64.shl
     i64.const 1
     i64.sub
     i64.const -9007199254740992
     i64.const 1
     i64.sub
     i64.ge_u
     br $~lib/util/math/zeroinfnan|inlined.1
    end
    if
     local.get $x|2
     local.get $x|2
     f64.mul
     local.set $x2
     local.get $ix
     i64.const 63
     i64.shr_u
     i32.wrap_i64
     if (result i32)
      block $~lib/util/math/checkint|inlined.0 (result i32)
       local.get $iy
       local.set $iy|12
       local.get $iy|12
       i64.const 52
       i64.shr_u
       i64.const 2047
       i64.and
       local.set $e
       local.get $e
       i64.const 1023
       i64.lt_u
       if
        i32.const 0
        br $~lib/util/math/checkint|inlined.0
       end
       local.get $e
       i64.const 1023
       i64.const 52
       i64.add
       i64.gt_u
       if
        i32.const 2
        br $~lib/util/math/checkint|inlined.0
       end
       i64.const 1
       i64.const 1023
       i64.const 52
       i64.add
       local.get $e
       i64.sub
       i64.shl
       local.set $e
       local.get $iy|12
       local.get $e
       i64.const 1
       i64.sub
       i64.and
       i64.const 0
       i64.ne
       if
        i32.const 0
        br $~lib/util/math/checkint|inlined.0
       end
       local.get $iy|12
       local.get $e
       i64.and
       i64.const 0
       i64.ne
       if
        i32.const 1
        br $~lib/util/math/checkint|inlined.0
       end
       i32.const 2
       br $~lib/util/math/checkint|inlined.0
      end
      i32.const 1
      i32.eq
     else
      i32.const 0
     end
     if
      local.get $x2
      f64.neg
      local.set $x2
     end
     local.get $iy
     i64.const 0
     i64.lt_s
     if (result f64)
      f64.const 1
      local.get $x2
      f64.div
     else
      local.get $x2
     end
     br $~lib/util/math/pow_lut|inlined.0
    end
    local.get $ix
    i64.const 0
    i64.lt_s
    if
     block $~lib/util/math/checkint|inlined.1 (result i32)
      local.get $iy
      local.set $iy|14
      local.get $iy|14
      i64.const 52
      i64.shr_u
      i64.const 2047
      i64.and
      local.set $e|15
      local.get $e|15
      i64.const 1023
      i64.lt_u
      if
       i32.const 0
       br $~lib/util/math/checkint|inlined.1
      end
      local.get $e|15
      i64.const 1023
      i64.const 52
      i64.add
      i64.gt_u
      if
       i32.const 2
       br $~lib/util/math/checkint|inlined.1
      end
      i64.const 1
      i64.const 1023
      i64.const 52
      i64.add
      local.get $e|15
      i64.sub
      i64.shl
      local.set $e|15
      local.get $iy|14
      local.get $e|15
      i64.const 1
      i64.sub
      i64.and
      i64.const 0
      i64.ne
      if
       i32.const 0
       br $~lib/util/math/checkint|inlined.1
      end
      local.get $iy|14
      local.get $e|15
      i64.and
      i64.const 0
      i64.ne
      if
       i32.const 1
       br $~lib/util/math/checkint|inlined.1
      end
      i32.const 2
      br $~lib/util/math/checkint|inlined.1
     end
     local.set $yint
     local.get $yint
     i32.const 0
     i32.eq
     if
      local.get $x|2
      local.get $x|2
      f64.sub
      local.get $x|2
      local.get $x|2
      f64.sub
      f64.div
      br $~lib/util/math/pow_lut|inlined.0
     end
     local.get $yint
     i32.const 1
     i32.eq
     if
      i32.const 262144
      local.set $sign_bias
     end
     local.get $ix
     i64.const 9223372036854775807
     i64.and
     local.set $ix
     local.get $topx
     i64.const 2047
     i64.and
     local.set $topx
    end
    local.get $topy
    i64.const 2047
    i64.and
    i64.const 958
    i64.sub
    i64.const 1086
    i64.const 958
    i64.sub
    i64.ge_u
    if
     local.get $ix
     i64.const 4607182418800017408
     i64.eq
     if
      f64.const 1
      br $~lib/util/math/pow_lut|inlined.0
     end
     local.get $topy
     i64.const 2047
     i64.and
     i64.const 958
     i64.lt_u
     if
      f64.const 1
      br $~lib/util/math/pow_lut|inlined.0
     end
     local.get $ix
     i64.const 4607182418800017408
     i64.gt_u
     local.get $topy
     i64.const 2048
     i64.lt_u
     i32.eq
     if (result f64)
      f64.const inf
     else
      f64.const 0
     end
     br $~lib/util/math/pow_lut|inlined.0
    end
    local.get $topx
    i64.const 0
    i64.eq
    if
     local.get $x|2
     f64.const 4503599627370496
     f64.mul
     i64.reinterpret_f64
     local.set $ix
     local.get $ix
     i64.const 9223372036854775807
     i64.and
     local.set $ix
     local.get $ix
     i64.const 52
     i64.const 52
     i64.shl
     i64.sub
     local.set $ix
    end
   end
   block $~lib/util/math/log_inline|inlined.0 (result f64)
    local.get $ix
    local.set $ix|17
    local.get $ix|17
    i64.const 4604531861337669632
    i64.sub
    local.set $tmp
    local.get $tmp
    i64.const 52
    i32.const 7
    i64.extend_i32_s
    i64.sub
    i64.shr_u
    i32.const 127
    i64.extend_i32_s
    i64.and
    i32.wrap_i64
    local.set $i
    local.get $tmp
    i64.const 52
    i64.shr_s
    local.set $k
    local.get $ix|17
    local.get $tmp
    i64.const 4095
    i64.const 52
    i64.shl
    i64.and
    i64.sub
    local.set $iz
    local.get $iz
    f64.reinterpret_i64
    local.set $z
    local.get $k
    f64.convert_i64_s
    local.set $kd
    i32.const 800
    local.get $i
    i32.const 2
    i32.const 3
    i32.add
    i32.shl
    i32.add
    f64.load
    local.set $invc
    i32.const 800
    local.get $i
    i32.const 2
    i32.const 3
    i32.add
    i32.shl
    i32.add
    f64.load offset=16
    local.set $logc
    i32.const 800
    local.get $i
    i32.const 2
    i32.const 3
    i32.add
    i32.shl
    i32.add
    f64.load offset=24
    local.set $logctail
    local.get $iz
    i64.const 2147483648
    i64.add
    i64.const -4294967296
    i64.and
    f64.reinterpret_i64
    local.set $zhi
    local.get $z
    local.get $zhi
    f64.sub
    local.set $zlo
    local.get $zhi
    local.get $invc
    f64.mul
    f64.const 1
    f64.sub
    local.set $rhi
    local.get $zlo
    local.get $invc
    f64.mul
    local.set $rlo
    local.get $rhi
    local.get $rlo
    f64.add
    local.set $r
    local.get $kd
    f64.const 0.6931471805598903
    f64.mul
    local.get $logc
    f64.add
    local.set $t1
    local.get $t1
    local.get $r
    f64.add
    local.set $t2
    local.get $kd
    f64.const 5.497923018708371e-14
    f64.mul
    local.get $logctail
    f64.add
    local.set $lo1
    local.get $t1
    local.get $t2
    f64.sub
    local.get $r
    f64.add
    local.set $lo2
    f64.const -0.5
    local.get $r
    f64.mul
    local.set $ar
    local.get $r
    local.get $ar
    f64.mul
    local.set $ar2
    local.get $r
    local.get $ar2
    f64.mul
    local.set $ar3
    f64.const -0.5
    local.get $rhi
    f64.mul
    local.set $arhi
    local.get $rhi
    local.get $arhi
    f64.mul
    local.set $arhi2
    local.get $t2
    local.get $arhi2
    f64.add
    local.set $hi
    local.get $rlo
    local.get $ar
    local.get $arhi
    f64.add
    f64.mul
    local.set $lo3
    local.get $t2
    local.get $hi
    f64.sub
    local.get $arhi2
    f64.add
    local.set $lo4
    local.get $ar3
    f64.const -0.6666666666666679
    local.get $r
    f64.const 0.5000000000000007
    f64.mul
    f64.add
    local.get $ar2
    f64.const 0.7999999995323976
    local.get $r
    f64.const -0.6666666663487739
    f64.mul
    f64.add
    local.get $ar2
    f64.const -1.142909628459501
    local.get $r
    f64.const 1.0000415263675542
    f64.mul
    f64.add
    f64.mul
    f64.add
    f64.mul
    f64.add
    f64.mul
    local.set $p
    local.get $lo1
    local.get $lo2
    f64.add
    local.get $lo3
    f64.add
    local.get $lo4
    f64.add
    local.get $p
    f64.add
    local.set $lo
    local.get $hi
    local.get $lo
    f64.add
    local.set $y|46
    local.get $hi
    local.get $y|46
    f64.sub
    local.get $lo
    f64.add
    global.set $~lib/util/math/log_tail
    local.get $y|46
    br $~lib/util/math/log_inline|inlined.0
   end
   local.set $hi|47
   global.get $~lib/util/math/log_tail
   local.set $lo|48
   local.get $iy
   i64.const -134217728
   i64.and
   f64.reinterpret_i64
   local.set $yhi
   local.get $y|3
   local.get $yhi
   f64.sub
   local.set $ylo
   local.get $hi|47
   i64.reinterpret_f64
   i64.const -134217728
   i64.and
   f64.reinterpret_i64
   local.set $lhi
   local.get $hi|47
   local.get $lhi
   f64.sub
   local.get $lo|48
   f64.add
   local.set $llo
   local.get $yhi
   local.get $lhi
   f64.mul
   local.set $ehi
   local.get $ylo
   local.get $lhi
   f64.mul
   local.get $y|3
   local.get $llo
   f64.mul
   f64.add
   local.set $elo
   block $~lib/util/math/exp_inline|inlined.0 (result f64)
    local.get $ehi
    local.set $x|55
    local.get $elo
    local.set $xtail
    local.get $sign_bias
    local.set $sign_bias|57
    local.get $x|55
    i64.reinterpret_f64
    local.set $ux
    local.get $ux
    i64.const 52
    i64.shr_u
    i32.wrap_i64
    i32.const 2047
    i32.and
    local.set $abstop
    local.get $abstop
    i32.const 969
    i32.sub
    i32.const 63
    i32.ge_u
    if
     local.get $abstop
     i32.const 969
     i32.sub
     i32.const -2147483648
     i32.ge_u
     if
      f64.const -1
      f64.const 1
      local.get $sign_bias|57
      select
      br $~lib/util/math/exp_inline|inlined.0
     end
     local.get $abstop
     i32.const 1033
     i32.ge_u
     if
      local.get $ux
      i64.const 0
      i64.lt_s
      if (result f64)
       block $~lib/util/math/uflow|inlined.0 (result f64)
        local.get $sign_bias|57
        local.set $sign
        block $~lib/util/math/xflow|inlined.0 (result f64)
         local.get $sign
         local.set $sign|72
         i64.const 1152921504606846976
         f64.reinterpret_i64
         local.set $y|73
         local.get $y|73
         f64.neg
         local.get $y|73
         local.get $sign|72
         select
         local.get $y|73
         f64.mul
         br $~lib/util/math/xflow|inlined.0
        end
        br $~lib/util/math/uflow|inlined.0
       end
      else
       block $~lib/util/math/oflow|inlined.0 (result f64)
        local.get $sign_bias|57
        local.set $sign|74
        block $~lib/util/math/xflow|inlined.1 (result f64)
         local.get $sign|74
         local.set $sign|75
         i64.const 8070450532247928832
         f64.reinterpret_i64
         local.set $y|76
         local.get $y|76
         f64.neg
         local.get $y|76
         local.get $sign|75
         select
         local.get $y|76
         f64.mul
         br $~lib/util/math/xflow|inlined.1
        end
        br $~lib/util/math/oflow|inlined.0
       end
      end
      br $~lib/util/math/exp_inline|inlined.0
     end
     i32.const 0
     local.set $abstop
    end
    f64.const 184.6649652337873
    local.get $x|55
    f64.mul
    local.set $z|64
    local.get $z|64
    f64.const 6755399441055744
    f64.add
    local.set $kd|63
    local.get $kd|63
    i64.reinterpret_f64
    local.set $ki
    local.get $kd|63
    f64.const 6755399441055744
    f64.sub
    local.set $kd|63
    local.get $x|55
    local.get $kd|63
    f64.const -0.005415212348111709
    f64.mul
    f64.add
    local.get $kd|63
    f64.const -1.2864023111638346e-14
    f64.mul
    f64.add
    local.set $r|65
    local.get $r|65
    local.get $xtail
    f64.add
    local.set $r|65
    local.get $ki
    i32.const 127
    i64.extend_i32_s
    i64.and
    i64.const 1
    i64.shl
    i32.wrap_i64
    local.set $idx
    local.get $ki
    local.get $sign_bias|57
    i64.extend_i32_u
    i64.add
    i64.const 52
    i32.const 7
    i64.extend_i32_s
    i64.sub
    i64.shl
    local.set $top
    i32.const 4896
    local.get $idx
    i32.const 3
    i32.shl
    i32.add
    i64.load
    f64.reinterpret_i64
    local.set $tail
    i32.const 4896
    local.get $idx
    i32.const 3
    i32.shl
    i32.add
    i64.load offset=8
    local.get $top
    i64.add
    local.set $sbits
    local.get $r|65
    local.get $r|65
    f64.mul
    local.set $r2
    local.get $tail
    local.get $r|65
    f64.add
    local.get $r2
    f64.const 0.49999999999996786
    local.get $r|65
    f64.const 0.16666666666665886
    f64.mul
    f64.add
    f64.mul
    f64.add
    local.get $r2
    local.get $r2
    f64.mul
    f64.const 0.0416666808410674
    local.get $r|65
    f64.const 0.008333335853059549
    f64.mul
    f64.add
    f64.mul
    f64.add
    local.set $tmp|69
    local.get $abstop
    i32.const 0
    i32.eq
    if
     block $~lib/util/math/specialcase|inlined.0 (result f64)
      local.get $tmp|69
      local.set $tmp|77
      local.get $sbits
      local.set $sbits|78
      local.get $ki
      local.set $ki|79
      local.get $ki|79
      i64.const 2147483648
      i64.and
      i64.const 0
      i64.ne
      i32.eqz
      if
       local.get $sbits|78
       i64.const 1009
       i64.const 52
       i64.shl
       i64.sub
       local.set $sbits|78
       local.get $sbits|78
       f64.reinterpret_i64
       local.set $scale|80
       f64.const 5486124068793688683255936e279
       local.get $scale|80
       local.get $scale|80
       local.get $tmp|77
       f64.mul
       f64.add
       f64.mul
       br $~lib/util/math/specialcase|inlined.0
      end
      local.get $sbits|78
      i64.const 1022
      i64.const 52
      i64.shl
      i64.add
      local.set $sbits|78
      local.get $sbits|78
      f64.reinterpret_i64
      local.set $scale|80
      local.get $scale|80
      local.get $scale|80
      local.get $tmp|77
      f64.mul
      f64.add
      local.set $y|81
      local.get $y|81
      f64.abs
      f64.const 1
      f64.lt
      if
       f64.const 1
       local.get $y|81
       f64.copysign
       local.set $one
       local.get $scale|80
       local.get $y|81
       f64.sub
       local.get $scale|80
       local.get $tmp|77
       f64.mul
       f64.add
       local.set $lo|83
       local.get $one
       local.get $y|81
       f64.add
       local.set $hi|84
       local.get $one
       local.get $hi|84
       f64.sub
       local.get $y|81
       f64.add
       local.get $lo|83
       f64.add
       local.set $lo|83
       local.get $hi|84
       local.get $lo|83
       f64.add
       local.get $one
       f64.sub
       local.set $y|81
       local.get $y|81
       f64.const 0
       f64.eq
       if
        local.get $sbits|78
        i64.const -9223372036854775808
        i64.and
        f64.reinterpret_i64
        local.set $y|81
       end
      end
      local.get $y|81
      f64.const 2.2250738585072014e-308
      f64.mul
      br $~lib/util/math/specialcase|inlined.0
     end
     br $~lib/util/math/exp_inline|inlined.0
    end
    local.get $sbits
    f64.reinterpret_i64
    local.set $scale
    local.get $scale
    local.get $scale
    local.get $tmp|69
    f64.mul
    f64.add
    br $~lib/util/math/exp_inline|inlined.0
   end
   br $~lib/util/math/pow_lut|inlined.0
  end
  return
 )
 (func $~lib/rt/__visit_globals (param $0 i32)
  (local $1 i32)
  global.get $assembly/index/positions
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $assembly/index/normals
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $assembly/index/uvs
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $assembly/index/indices
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $assembly/index/model
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $assembly/index/celestial
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $assembly/index/view
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $assembly/index/projection
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $assembly/index/modelF
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $assembly/index/celestialF
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $assembly/index/viewF
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $assembly/index/projectionF
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $assembly/index/tmpA
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $assembly/index/tmpB
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $assembly/index/tmpC
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $assembly/index/tmpD
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $assembly/index/auroraGrid
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $assembly/index/auroraGridSmooth
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $assembly/index/auroraTexture
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $assembly/index/rowMean
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $assembly/index/rowMeanSmooth
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $assembly/index/lonFrac
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $assembly/index/lonRow0
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $assembly/index/lonRow1
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $assembly/index/paletteLUT
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $assembly/index/kpTimes
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $assembly/index/kpValues
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  i32.const 336
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 32
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 144
  local.get $0
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/arraybuffer/ArrayBufferView~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/object/Object~visit (param $0 i32) (param $1 i32)
 )
 (func $~lib/typedarray/Float32Array~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView~visit
 )
 (func $~lib/typedarray/Uint16Array~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView~visit
 )
 (func $~lib/typedarray/Float64Array~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView~visit
 )
 (func $~lib/typedarray/Uint32Array~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView~visit
 )
 (func $~lib/typedarray/Int32Array~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView~visit
 )
 (func $~lib/rt/__visit_members (param $0 i32) (param $1 i32)
  block $invalid
   block $~lib/typedarray/Int32Array
    block $~lib/typedarray/Uint32Array
     block $~lib/typedarray/Float64Array
      block $~lib/typedarray/Uint16Array
       block $~lib/typedarray/Float32Array
        block $~lib/arraybuffer/ArrayBufferView
         block $~lib/string/String
          block $~lib/arraybuffer/ArrayBuffer
           block $~lib/object/Object
            local.get $0
            i32.const 8
            i32.sub
            i32.load
            br_table $~lib/object/Object $~lib/arraybuffer/ArrayBuffer $~lib/string/String $~lib/arraybuffer/ArrayBufferView $~lib/typedarray/Float32Array $~lib/typedarray/Uint16Array $~lib/typedarray/Float64Array $~lib/typedarray/Uint32Array $~lib/typedarray/Int32Array $invalid
           end
           return
          end
          return
         end
         return
        end
        local.get $0
        local.get $1
        call $~lib/arraybuffer/ArrayBufferView~visit
        return
       end
       local.get $0
       local.get $1
       call $~lib/typedarray/Float32Array~visit
       return
      end
      local.get $0
      local.get $1
      call $~lib/typedarray/Uint16Array~visit
      return
     end
     local.get $0
     local.get $1
     call $~lib/typedarray/Float64Array~visit
     return
    end
    local.get $0
    local.get $1
    call $~lib/typedarray/Uint32Array~visit
    return
   end
   local.get $0
   local.get $1
   call $~lib/typedarray/Int32Array~visit
   return
  end
  unreachable
 )
 (func $~start
  call $start:assembly/index
 )
 (func $~stack_check
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__data_end
  i32.lt_s
  if
   i32.const 39776
   i32.const 39824
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/arraybuffer/ArrayBufferView#constructor (param $this i32) (param $length i32) (param $alignLog2 i32) (result i32)
  (local $buffer i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 3
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#set:buffer
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#set:dataStart
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#set:byteLength
  local.get $length
  i32.const 1073741820
  local.get $alignLog2
  i32.shr_u
  i32.gt_u
  if
   i32.const 32
   i32.const 80
   i32.const 19
   i32.const 57
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $length
  local.get $alignLog2
  i32.shl
  local.tee $length
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $buffer
  i32.store offset=8
  i32.const 2
  global.get $~lib/shared/runtime/Runtime.Incremental
  i32.ne
  drop
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  local.get $buffer
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=12
  local.get $4
  call $~lib/arraybuffer/ArrayBufferView#set:buffer
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  local.get $buffer
  call $~lib/arraybuffer/ArrayBufferView#set:dataStart
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  local.get $length
  call $~lib/arraybuffer/ArrayBufferView#set:byteLength
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $~lib/typedarray/Float32Array#constructor (param $this i32) (param $length i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $length
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.tee $this
  i32.store
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/typedarray/Uint16Array#constructor (param $this i32) (param $length i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 5
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $length
  i32.const 1
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.tee $this
  i32.store
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/typedarray/Float64Array#constructor (param $this i32) (param $length i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 6
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $length
  i32.const 3
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.tee $this
  i32.store
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/typedarray/Uint32Array#constructor (param $this i32) (param $length i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 7
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $length
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.tee $this
  i32.store
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/typedarray/Int32Array#constructor (param $this i32) (param $length i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 8
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $length
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.tee $this
  i32.store
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $assembly/index/positionsPtr (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $assembly/index/positions
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/arraybuffer/ArrayBufferView#get:dataStart
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
  return
 )
 (func $assembly/index/normalsPtr (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $assembly/index/normals
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/arraybuffer/ArrayBufferView#get:dataStart
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
  return
 )
 (func $assembly/index/uvsPtr (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $assembly/index/uvs
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/arraybuffer/ArrayBufferView#get:dataStart
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
  return
 )
 (func $assembly/index/indicesPtr (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $assembly/index/indices
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/arraybuffer/ArrayBufferView#get:dataStart
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
  return
 )
 (func $~lib/typedarray/Float32Array#__set (param $this i32) (param $index i32) (param $value f32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $index
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 336
   i32.const 752
   i32.const 1315
   i32.const 64
   call $~lib/builtins/abort
   unreachable
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/arraybuffer/ArrayBufferView#get:dataStart
  local.get $index
  i32.const 2
  i32.shl
  i32.add
  local.get $value
  f32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/typedarray/Uint16Array#__set (param $this i32) (param $index i32) (param $value i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $index
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  i32.const 1
  i32.shr_u
  i32.ge_u
  if
   i32.const 336
   i32.const 752
   i32.const 605
   i32.const 64
   call $~lib/builtins/abort
   unreachable
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/arraybuffer/ArrayBufferView#get:dataStart
  local.get $index
  i32.const 1
  i32.shl
  i32.add
  local.get $value
  i32.store16
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/index/buildSphere (param $radius f64)
  (local $vi i32)
  (local $ui i32)
  (local $y i32)
  (local $v f64)
  (local $lat f64)
  (local $cosLat f64)
  (local $sinLat f64)
  (local $x i32)
  (local $u f64)
  (local $lon f64)
  (local $px f64)
  (local $py f64)
  (local $pz f64)
  (local $ii i32)
  (local $y|15 i32)
  (local $x|16 i32)
  (local $a i32)
  (local $b i32)
  (local $c i32)
  (local $d i32)
  (local $21 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 0
  local.set $vi
  i32.const 0
  local.set $ui
  i32.const 0
  local.set $y
  loop $for-loop|0
   local.get $y
   global.get $assembly/index/RINGS
   i32.le_s
   if
    local.get $y
    f64.convert_i32_s
    global.get $assembly/index/RINGS
    f64.convert_i32_s
    f64.div
    local.set $v
    local.get $v
    f64.const 0.5
    f64.sub
    global.get $~lib/math/NativeMath.PI
    f64.mul
    local.set $lat
    local.get $lat
    call $~lib/math/NativeMath.cos
    local.set $cosLat
    local.get $lat
    call $~lib/math/NativeMath.sin
    local.set $sinLat
    i32.const 0
    local.set $x
    loop $for-loop|1
     local.get $x
     global.get $assembly/index/SEGMENTS
     i32.le_s
     if
      local.get $x
      f64.convert_i32_s
      global.get $assembly/index/SEGMENTS
      f64.convert_i32_s
      f64.div
      local.set $u
      local.get $u
      f64.const 0.5
      f64.sub
      global.get $~lib/math/NativeMath.PI
      f64.mul
      f64.const 2
      f64.mul
      local.set $lon
      local.get $cosLat
      local.get $lon
      call $~lib/math/NativeMath.sin
      f64.mul
      local.set $px
      local.get $sinLat
      local.set $py
      local.get $cosLat
      local.get $lon
      call $~lib/math/NativeMath.cos
      f64.mul
      local.set $pz
      global.get $assembly/index/positions
      local.set $21
      global.get $~lib/memory/__stack_pointer
      local.get $21
      i32.store
      local.get $21
      local.get $vi
      local.get $px
      local.get $radius
      f64.mul
      f32.demote_f64
      call $~lib/typedarray/Float32Array#__set
      global.get $assembly/index/positions
      local.set $21
      global.get $~lib/memory/__stack_pointer
      local.get $21
      i32.store
      local.get $21
      local.get $vi
      i32.const 1
      i32.add
      local.get $py
      local.get $radius
      f64.mul
      f32.demote_f64
      call $~lib/typedarray/Float32Array#__set
      global.get $assembly/index/positions
      local.set $21
      global.get $~lib/memory/__stack_pointer
      local.get $21
      i32.store
      local.get $21
      local.get $vi
      i32.const 2
      i32.add
      local.get $pz
      local.get $radius
      f64.mul
      f32.demote_f64
      call $~lib/typedarray/Float32Array#__set
      global.get $assembly/index/normals
      local.set $21
      global.get $~lib/memory/__stack_pointer
      local.get $21
      i32.store
      local.get $21
      local.get $vi
      local.get $px
      f32.demote_f64
      call $~lib/typedarray/Float32Array#__set
      global.get $assembly/index/normals
      local.set $21
      global.get $~lib/memory/__stack_pointer
      local.get $21
      i32.store
      local.get $21
      local.get $vi
      i32.const 1
      i32.add
      local.get $py
      f32.demote_f64
      call $~lib/typedarray/Float32Array#__set
      global.get $assembly/index/normals
      local.set $21
      global.get $~lib/memory/__stack_pointer
      local.get $21
      i32.store
      local.get $21
      local.get $vi
      i32.const 2
      i32.add
      local.get $pz
      f32.demote_f64
      call $~lib/typedarray/Float32Array#__set
      global.get $assembly/index/uvs
      local.set $21
      global.get $~lib/memory/__stack_pointer
      local.get $21
      i32.store
      local.get $21
      local.get $ui
      local.get $u
      f32.demote_f64
      call $~lib/typedarray/Float32Array#__set
      global.get $assembly/index/uvs
      local.set $21
      global.get $~lib/memory/__stack_pointer
      local.get $21
      i32.store
      local.get $21
      local.get $ui
      i32.const 1
      i32.add
      local.get $v
      f32.demote_f64
      call $~lib/typedarray/Float32Array#__set
      local.get $vi
      i32.const 3
      i32.add
      local.set $vi
      local.get $ui
      i32.const 2
      i32.add
      local.set $ui
      local.get $x
      i32.const 1
      i32.add
      local.set $x
      br $for-loop|1
     end
    end
    local.get $y
    i32.const 1
    i32.add
    local.set $y
    br $for-loop|0
   end
  end
  i32.const 0
  local.set $ii
  i32.const 0
  local.set $y|15
  loop $for-loop|2
   local.get $y|15
   global.get $assembly/index/RINGS
   i32.lt_s
   if
    i32.const 0
    local.set $x|16
    loop $for-loop|3
     local.get $x|16
     global.get $assembly/index/SEGMENTS
     i32.lt_s
     if
      local.get $y|15
      global.get $assembly/index/SEGMENTS
      i32.const 1
      i32.add
      i32.mul
      local.get $x|16
      i32.add
      local.set $a
      local.get $a
      i32.const 1
      i32.add
      local.set $b
      local.get $a
      global.get $assembly/index/SEGMENTS
      i32.add
      i32.const 1
      i32.add
      local.set $c
      local.get $c
      i32.const 1
      i32.add
      local.set $d
      global.get $assembly/index/indices
      local.set $21
      global.get $~lib/memory/__stack_pointer
      local.get $21
      i32.store
      local.get $21
      local.get $ii
      local.get $a
      i32.const 65535
      i32.and
      call $~lib/typedarray/Uint16Array#__set
      global.get $assembly/index/indices
      local.set $21
      global.get $~lib/memory/__stack_pointer
      local.get $21
      i32.store
      local.get $21
      local.get $ii
      i32.const 1
      i32.add
      local.get $c
      i32.const 65535
      i32.and
      call $~lib/typedarray/Uint16Array#__set
      global.get $assembly/index/indices
      local.set $21
      global.get $~lib/memory/__stack_pointer
      local.get $21
      i32.store
      local.get $21
      local.get $ii
      i32.const 2
      i32.add
      local.get $b
      i32.const 65535
      i32.and
      call $~lib/typedarray/Uint16Array#__set
      global.get $assembly/index/indices
      local.set $21
      global.get $~lib/memory/__stack_pointer
      local.get $21
      i32.store
      local.get $21
      local.get $ii
      i32.const 3
      i32.add
      local.get $b
      i32.const 65535
      i32.and
      call $~lib/typedarray/Uint16Array#__set
      global.get $assembly/index/indices
      local.set $21
      global.get $~lib/memory/__stack_pointer
      local.get $21
      i32.store
      local.get $21
      local.get $ii
      i32.const 4
      i32.add
      local.get $c
      i32.const 65535
      i32.and
      call $~lib/typedarray/Uint16Array#__set
      global.get $assembly/index/indices
      local.set $21
      global.get $~lib/memory/__stack_pointer
      local.get $21
      i32.store
      local.get $21
      local.get $ii
      i32.const 5
      i32.add
      local.get $d
      i32.const 65535
      i32.and
      call $~lib/typedarray/Uint16Array#__set
      local.get $ii
      i32.const 6
      i32.add
      local.set $ii
      local.get $x|16
      i32.const 1
      i32.add
      local.set $x|16
      br $for-loop|3
     end
    end
    local.get $y|15
    i32.const 1
    i32.add
    local.set $y|15
    br $for-loop|2
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/index/modelPtr (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $assembly/index/model
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/arraybuffer/ArrayBufferView#get:dataStart
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
  return
 )
 (func $assembly/index/celestialPtr (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $assembly/index/celestial
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/arraybuffer/ArrayBufferView#get:dataStart
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
  return
 )
 (func $assembly/index/viewPtr (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $assembly/index/view
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/arraybuffer/ArrayBufferView#get:dataStart
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
  return
 )
 (func $assembly/index/projectionPtr (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $assembly/index/projection
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/arraybuffer/ArrayBufferView#get:dataStart
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
  return
 )
 (func $~lib/typedarray/Float64Array#__set (param $this i32) (param $index i32) (param $value f64)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $index
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  i32.const 3
  i32.shr_u
  i32.ge_u
  if
   i32.const 336
   i32.const 752
   i32.const 1457
   i32.const 64
   call $~lib/builtins/abort
   unreachable
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/arraybuffer/ArrayBufferView#get:dataStart
  local.get $index
  i32.const 3
  i32.shl
  i32.add
  local.get $value
  f64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/index/perspective (param $m i32) (param $fovY f64) (param $aspect f64) (param $near f64) (param $far f64)
  (local $i i32)
  (local $f f64)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   i32.const 16
   i32.lt_s
   if
    local.get $m
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store
    local.get $7
    local.get $i
    f64.const 0
    call $~lib/typedarray/Float64Array#__set
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  f64.const 1
  local.get $fovY
  f64.const 0.5
  f64.mul
  call $~lib/math/NativeMath.tan
  f64.div
  local.set $f
  local.get $m
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store
  local.get $7
  i32.const 0
  local.get $f
  local.get $aspect
  f64.div
  call $~lib/typedarray/Float64Array#__set
  local.get $m
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store
  local.get $7
  i32.const 5
  local.get $f
  call $~lib/typedarray/Float64Array#__set
  local.get $m
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store
  local.get $7
  i32.const 10
  local.get $far
  local.get $near
  f64.add
  local.get $near
  local.get $far
  f64.sub
  f64.div
  call $~lib/typedarray/Float64Array#__set
  local.get $m
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store
  local.get $7
  i32.const 11
  f64.const -1
  call $~lib/typedarray/Float64Array#__set
  local.get $m
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store
  local.get $7
  i32.const 14
  f64.const 2
  local.get $far
  f64.mul
  local.get $near
  f64.mul
  local.get $near
  local.get $far
  f64.sub
  f64.div
  call $~lib/typedarray/Float64Array#__set
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/index/identity (param $m i32)
  (local $i i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   i32.const 16
   i32.lt_s
   if
    local.get $m
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store
    local.get $2
    local.get $i
    f64.const 0
    call $~lib/typedarray/Float64Array#__set
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $m
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  i32.const 0
  f64.const 1
  call $~lib/typedarray/Float64Array#__set
  local.get $m
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  i32.const 5
  f64.const 1
  call $~lib/typedarray/Float64Array#__set
  local.get $m
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  i32.const 10
  f64.const 1
  call $~lib/typedarray/Float64Array#__set
  local.get $m
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  i32.const 15
  f64.const 1
  call $~lib/typedarray/Float64Array#__set
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/index/translation (param $m i32) (param $x f64) (param $y f64) (param $z f64)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $m
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $assembly/index/identity
  local.get $m
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  i32.const 12
  local.get $x
  call $~lib/typedarray/Float64Array#__set
  local.get $m
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  i32.const 13
  local.get $y
  call $~lib/typedarray/Float64Array#__set
  local.get $m
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  i32.const 14
  local.get $z
  call $~lib/typedarray/Float64Array#__set
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/index/rotationY (param $m i32) (param $angle f64)
  (local $i i32)
  (local $c f64)
  (local $s f64)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   i32.const 16
   i32.lt_s
   if
    local.get $m
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store
    local.get $5
    local.get $i
    f64.const 0
    call $~lib/typedarray/Float64Array#__set
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $angle
  call $~lib/math/NativeMath.cos
  local.set $c
  local.get $angle
  call $~lib/math/NativeMath.sin
  local.set $s
  local.get $m
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  i32.const 0
  local.get $c
  call $~lib/typedarray/Float64Array#__set
  local.get $m
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  i32.const 2
  local.get $s
  f64.neg
  call $~lib/typedarray/Float64Array#__set
  local.get $m
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  i32.const 5
  f64.const 1
  call $~lib/typedarray/Float64Array#__set
  local.get $m
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  i32.const 8
  local.get $s
  call $~lib/typedarray/Float64Array#__set
  local.get $m
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  i32.const 10
  local.get $c
  call $~lib/typedarray/Float64Array#__set
  local.get $m
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  i32.const 15
  f64.const 1
  call $~lib/typedarray/Float64Array#__set
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/index/rotationX (param $m i32) (param $angle f64)
  (local $i i32)
  (local $c f64)
  (local $s f64)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   i32.const 16
   i32.lt_s
   if
    local.get $m
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store
    local.get $5
    local.get $i
    f64.const 0
    call $~lib/typedarray/Float64Array#__set
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $angle
  call $~lib/math/NativeMath.cos
  local.set $c
  local.get $angle
  call $~lib/math/NativeMath.sin
  local.set $s
  local.get $m
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  i32.const 0
  f64.const 1
  call $~lib/typedarray/Float64Array#__set
  local.get $m
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  i32.const 5
  local.get $c
  call $~lib/typedarray/Float64Array#__set
  local.get $m
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  i32.const 6
  local.get $s
  call $~lib/typedarray/Float64Array#__set
  local.get $m
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  i32.const 9
  local.get $s
  f64.neg
  call $~lib/typedarray/Float64Array#__set
  local.get $m
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  i32.const 10
  local.get $c
  call $~lib/typedarray/Float64Array#__set
  local.get $m
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  i32.const 15
  f64.const 1
  call $~lib/typedarray/Float64Array#__set
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/typedarray/Float64Array#__get (param $this i32) (param $index i32) (result f64)
  (local $2 i32)
  (local $3 f64)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $index
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  i32.const 3
  i32.shr_u
  i32.ge_u
  if
   i32.const 336
   i32.const 752
   i32.const 1446
   i32.const 64
   call $~lib/builtins/abort
   unreachable
  end
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/arraybuffer/ArrayBufferView#get:dataStart
  local.get $index
  i32.const 3
  i32.shl
  i32.add
  f64.load
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $assembly/index/matMul (param $out i32) (param $a i32) (param $b i32)
  (local $c i32)
  (local $r i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  i32.const 0
  local.set $c
  loop $for-loop|0
   local.get $c
   i32.const 4
   i32.lt_s
   if
    i32.const 0
    local.set $r
    loop $for-loop|1
     local.get $r
     i32.const 4
     i32.lt_s
     if
      local.get $out
      local.set $5
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store
      local.get $5
      local.get $c
      i32.const 4
      i32.mul
      local.get $r
      i32.add
      local.get $a
      local.set $5
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store offset=4
      local.get $5
      local.get $r
      call $~lib/typedarray/Float64Array#__get
      local.get $b
      local.set $5
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store offset=4
      local.get $5
      local.get $c
      i32.const 4
      i32.mul
      call $~lib/typedarray/Float64Array#__get
      f64.mul
      local.get $a
      local.set $5
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store offset=4
      local.get $5
      i32.const 4
      local.get $r
      i32.add
      call $~lib/typedarray/Float64Array#__get
      local.get $b
      local.set $5
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store offset=4
      local.get $5
      local.get $c
      i32.const 4
      i32.mul
      i32.const 1
      i32.add
      call $~lib/typedarray/Float64Array#__get
      f64.mul
      f64.add
      local.get $a
      local.set $5
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store offset=4
      local.get $5
      i32.const 8
      local.get $r
      i32.add
      call $~lib/typedarray/Float64Array#__get
      local.get $b
      local.set $5
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store offset=4
      local.get $5
      local.get $c
      i32.const 4
      i32.mul
      i32.const 2
      i32.add
      call $~lib/typedarray/Float64Array#__get
      f64.mul
      f64.add
      local.get $a
      local.set $5
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store offset=4
      local.get $5
      i32.const 12
      local.get $r
      i32.add
      call $~lib/typedarray/Float64Array#__get
      local.get $b
      local.set $5
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store offset=4
      local.get $5
      local.get $c
      i32.const 4
      i32.mul
      i32.const 3
      i32.add
      call $~lib/typedarray/Float64Array#__get
      f64.mul
      f64.add
      call $~lib/typedarray/Float64Array#__set
      local.get $r
      i32.const 1
      i32.add
      local.set $r
      br $for-loop|1
     end
    end
    local.get $c
    i32.const 1
    i32.add
    local.set $c
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/index/computeMatrices
  (local $i i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $assembly/index/projectionF
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  f64.const 45
  global.get $~lib/math/NativeMath.PI
  f64.mul
  f64.const 180
  f64.div
  global.get $assembly/index/viewAspect
  f64.const 0.02
  f64.const 1e5
  call $assembly/index/perspective
  global.get $assembly/index/viewF
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  global.get $assembly/index/panX
  f64.neg
  global.get $assembly/index/panY
  f64.neg
  global.get $assembly/index/cameraDistance
  f64.neg
  call $assembly/index/translation
  global.get $assembly/index/tmpA
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  global.get $assembly/index/yaw
  call $assembly/index/rotationY
  global.get $assembly/index/tmpB
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  global.get $assembly/index/pitch
  call $assembly/index/rotationX
  global.get $assembly/index/modelF
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  global.get $assembly/index/tmpB
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  global.get $assembly/index/tmpA
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $1
  call $assembly/index/matMul
  global.get $assembly/index/tmpC
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  global.get $assembly/index/spin
  call $assembly/index/rotationY
  global.get $assembly/index/tmpD
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  global.get $assembly/index/modelF
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  global.get $assembly/index/tmpC
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $1
  call $assembly/index/matMul
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   i32.const 16
   i32.lt_s
   if
    global.get $assembly/index/projection
    local.set $1
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store
    local.get $1
    local.get $i
    global.get $assembly/index/projectionF
    local.set $1
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=4
    local.get $1
    local.get $i
    call $~lib/typedarray/Float64Array#__get
    f32.demote_f64
    call $~lib/typedarray/Float32Array#__set
    global.get $assembly/index/view
    local.set $1
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store
    local.get $1
    local.get $i
    global.get $assembly/index/viewF
    local.set $1
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=4
    local.get $1
    local.get $i
    call $~lib/typedarray/Float64Array#__get
    f32.demote_f64
    call $~lib/typedarray/Float32Array#__set
    global.get $assembly/index/earthLocked
    if
     global.get $assembly/index/model
     local.set $1
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store
     local.get $1
     local.get $i
     global.get $assembly/index/modelF
     local.set $1
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=4
     local.get $1
     local.get $i
     call $~lib/typedarray/Float64Array#__get
     f32.demote_f64
     call $~lib/typedarray/Float32Array#__set
     global.get $assembly/index/celestial
     local.set $1
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store
     local.get $1
     local.get $i
     global.get $assembly/index/tmpD
     local.set $1
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=4
     local.get $1
     local.get $i
     call $~lib/typedarray/Float64Array#__get
     f32.demote_f64
     call $~lib/typedarray/Float32Array#__set
    else
     global.get $assembly/index/model
     local.set $1
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store
     local.get $1
     local.get $i
     global.get $assembly/index/tmpD
     local.set $1
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=4
     local.get $1
     local.get $i
     call $~lib/typedarray/Float64Array#__get
     f32.demote_f64
     call $~lib/typedarray/Float32Array#__set
     global.get $assembly/index/celestial
     local.set $1
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store
     local.get $1
     local.get $i
     global.get $assembly/index/modelF
     local.set $1
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=4
     local.get $1
     local.get $i
     call $~lib/typedarray/Float64Array#__get
     f32.demote_f64
     call $~lib/typedarray/Float32Array#__set
    end
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/index/auroraGridPtr (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $assembly/index/auroraGrid
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/arraybuffer/ArrayBufferView#get:dataStart
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
  return
 )
 (func $assembly/index/auroraTexturePtr (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $assembly/index/auroraTexture
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/arraybuffer/ArrayBufferView#get:dataStart
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
  return
 )
 (func $~lib/typedarray/Float32Array#__get (param $this i32) (param $index i32) (result f32)
  (local $2 i32)
  (local $3 f32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $index
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 336
   i32.const 752
   i32.const 1304
   i32.const 64
   call $~lib/builtins/abort
   unreachable
  end
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/arraybuffer/ArrayBufferView#get:dataStart
  local.get $index
  i32.const 2
  i32.shl
  i32.add
  f32.load
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $assembly/index/smoothAuroraGrid
  (local $gy i32)
  (local $x f64)
  (local $absLat f64)
  (local $weight f64)
  (local $base i32)
  (local $lon i32)
  (local $lon|6 i32)
  (local $prev i32)
  (local $next i32)
  (local $current f32)
  (local $average f32)
  (local $i i32)
  (local $12 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  i32.const 0
  local.set $gy
  loop $for-loop|0
   local.get $gy
   global.get $assembly/index/AURORA_H
   i32.lt_s
   if
    block $for-continue|0
     block $~lib/math/NativeMath.abs|inlined.0 (result f64)
      local.get $gy
      f64.convert_i32_s
      f64.const 90
      f64.sub
      local.set $x
      local.get $x
      f64.abs
      br $~lib/math/NativeMath.abs|inlined.0
     end
     local.set $absLat
     f64.const 60
     f64.const 80
     local.get $absLat
     call $assembly/index/smoothstep
     f64.const 0.8
     f64.mul
     local.set $weight
     local.get $gy
     local.set $base
     local.get $weight
     f64.const 0
     f64.le
     if
      i32.const 0
      local.set $lon
      loop $for-loop|1
       local.get $lon
       global.get $assembly/index/AURORA_W
       i32.lt_s
       if
        global.get $assembly/index/auroraGridSmooth
        local.set $12
        global.get $~lib/memory/__stack_pointer
        local.get $12
        i32.store
        local.get $12
        local.get $lon
        global.get $assembly/index/AURORA_H
        i32.mul
        local.get $base
        i32.add
        global.get $assembly/index/auroraGrid
        local.set $12
        global.get $~lib/memory/__stack_pointer
        local.get $12
        i32.store offset=4
        local.get $12
        local.get $lon
        global.get $assembly/index/AURORA_H
        i32.mul
        local.get $base
        i32.add
        call $~lib/typedarray/Float32Array#__get
        call $~lib/typedarray/Float32Array#__set
        local.get $lon
        i32.const 1
        i32.add
        local.set $lon
        br $for-loop|1
       end
      end
      br $for-continue|0
     end
     i32.const 0
     local.set $lon|6
     loop $for-loop|2
      local.get $lon|6
      global.get $assembly/index/AURORA_W
      i32.lt_s
      if
       local.get $lon|6
       global.get $assembly/index/AURORA_W
       i32.add
       i32.const 1
       i32.sub
       global.get $assembly/index/AURORA_W
       i32.rem_s
       local.set $prev
       local.get $lon|6
       i32.const 1
       i32.add
       global.get $assembly/index/AURORA_W
       i32.rem_s
       local.set $next
       global.get $assembly/index/auroraGrid
       local.set $12
       global.get $~lib/memory/__stack_pointer
       local.get $12
       i32.store
       local.get $12
       local.get $lon|6
       global.get $assembly/index/AURORA_H
       i32.mul
       local.get $base
       i32.add
       call $~lib/typedarray/Float32Array#__get
       local.set $current
       global.get $assembly/index/auroraGrid
       local.set $12
       global.get $~lib/memory/__stack_pointer
       local.get $12
       i32.store
       local.get $12
       local.get $prev
       global.get $assembly/index/AURORA_H
       i32.mul
       local.get $base
       i32.add
       call $~lib/typedarray/Float32Array#__get
       f32.const 2
       local.get $current
       f32.mul
       f32.add
       global.get $assembly/index/auroraGrid
       local.set $12
       global.get $~lib/memory/__stack_pointer
       local.get $12
       i32.store
       local.get $12
       local.get $next
       global.get $assembly/index/AURORA_H
       i32.mul
       local.get $base
       i32.add
       call $~lib/typedarray/Float32Array#__get
       f32.add
       f32.const 0.25
       f32.mul
       local.set $average
       global.get $assembly/index/auroraGridSmooth
       local.set $12
       global.get $~lib/memory/__stack_pointer
       local.get $12
       i32.store
       local.get $12
       local.get $lon|6
       global.get $assembly/index/AURORA_H
       i32.mul
       local.get $base
       i32.add
       local.get $current
       f64.promote_f32
       local.get $average
       local.get $current
       f32.sub
       f64.promote_f32
       local.get $weight
       f64.mul
       f64.add
       f32.demote_f64
       call $~lib/typedarray/Float32Array#__set
       local.get $lon|6
       i32.const 1
       i32.add
       local.set $lon|6
       br $for-loop|2
      end
     end
    end
    local.get $gy
    i32.const 1
    i32.add
    local.set $gy
    br $for-loop|0
   end
  end
  i32.const 0
  local.set $i
  loop $for-loop|3
   local.get $i
   global.get $assembly/index/AURORA_CELLS
   i32.lt_s
   if
    global.get $assembly/index/auroraGrid
    local.set $12
    global.get $~lib/memory/__stack_pointer
    local.get $12
    i32.store
    local.get $12
    local.get $i
    global.get $assembly/index/auroraGridSmooth
    local.set $12
    global.get $~lib/memory/__stack_pointer
    local.get $12
    i32.store offset=4
    local.get $12
    local.get $i
    call $~lib/typedarray/Float32Array#__get
    call $~lib/typedarray/Float32Array#__set
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|3
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/index/kpTimesPtr (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $assembly/index/kpTimes
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/arraybuffer/ArrayBufferView#get:dataStart
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
  return
 )
 (func $assembly/index/kpValuesPtr (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $assembly/index/kpValues
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/arraybuffer/ArrayBufferView#get:dataStart
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
  return
 )
 (func $assembly/index/interpolateKp (param $timeMs f64) (result f64)
  (local $lo i32)
  (local $hi i32)
  (local $mid i32)
  (local $span f64)
  (local $f f64)
  (local $6 i32)
  (local $7 f64)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $assembly/index/kpCount
  i32.const 0
  i32.eq
  if
   global.get $assembly/index/referenceKp
   local.set $7
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $7
   return
  end
  local.get $timeMs
  global.get $assembly/index/kpTimes
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store
  local.get $6
  i32.const 0
  call $~lib/typedarray/Float64Array#__get
  f64.le
  if
   global.get $assembly/index/kpValues
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store
   local.get $6
   i32.const 0
   call $~lib/typedarray/Float64Array#__get
   local.set $7
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $7
   return
  end
  local.get $timeMs
  global.get $assembly/index/kpTimes
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store
  local.get $6
  global.get $assembly/index/kpCount
  i32.const 1
  i32.sub
  call $~lib/typedarray/Float64Array#__get
  f64.ge
  if
   global.get $assembly/index/kpValues
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store
   local.get $6
   global.get $assembly/index/kpCount
   i32.const 1
   i32.sub
   call $~lib/typedarray/Float64Array#__get
   local.set $7
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $7
   return
  end
  i32.const 0
  local.set $lo
  global.get $assembly/index/kpCount
  i32.const 1
  i32.sub
  local.set $hi
  loop $while-continue|0
   local.get $hi
   local.get $lo
   i32.sub
   i32.const 1
   i32.gt_s
   if
    local.get $lo
    local.get $hi
    i32.add
    i32.const 1
    i32.shr_s
    local.set $mid
    global.get $assembly/index/kpTimes
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store
    local.get $6
    local.get $mid
    call $~lib/typedarray/Float64Array#__get
    local.get $timeMs
    f64.le
    if
     local.get $mid
     local.set $lo
    else
     local.get $mid
     local.set $hi
    end
    br $while-continue|0
   end
  end
  global.get $assembly/index/kpTimes
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store
  local.get $6
  local.get $hi
  call $~lib/typedarray/Float64Array#__get
  global.get $assembly/index/kpTimes
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store
  local.get $6
  local.get $lo
  call $~lib/typedarray/Float64Array#__get
  f64.sub
  local.set $span
  local.get $span
  f64.const 0
  f64.le
  if
   global.get $assembly/index/kpValues
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store
   local.get $6
   local.get $lo
   call $~lib/typedarray/Float64Array#__get
   local.set $7
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $7
   return
  end
  local.get $timeMs
  global.get $assembly/index/kpTimes
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store
  local.get $6
  local.get $lo
  call $~lib/typedarray/Float64Array#__get
  f64.sub
  local.get $span
  f64.div
  local.set $f
  global.get $assembly/index/kpValues
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store
  local.get $6
  local.get $lo
  call $~lib/typedarray/Float64Array#__get
  global.get $assembly/index/kpValues
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store
  local.get $6
  local.get $hi
  call $~lib/typedarray/Float64Array#__get
  global.get $assembly/index/kpValues
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store
  local.get $6
  local.get $lo
  call $~lib/typedarray/Float64Array#__get
  f64.sub
  local.get $f
  f64.mul
  f64.add
  local.set $7
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
  return
 )
 (func $~lib/typedarray/Int32Array#__set (param $this i32) (param $index i32) (param $value i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $index
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 336
   i32.const 752
   i32.const 747
   i32.const 64
   call $~lib/builtins/abort
   unreachable
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/arraybuffer/ArrayBufferView#get:dataStart
  local.get $index
  i32.const 2
  i32.shl
  i32.add
  local.get $value
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/typedarray/Uint32Array#__set (param $this i32) (param $index i32) (param $value i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $index
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 336
   i32.const 752
   i32.const 889
   i32.const 64
   call $~lib/builtins/abort
   unreachable
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/arraybuffer/ArrayBufferView#get:dataStart
  local.get $index
  i32.const 2
  i32.shl
  i32.add
  local.get $value
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/index/prepareLookups
  (local $tx i32)
  (local $u f64)
  (local $lonF f64)
  (local $x f64)
  (local $x|4 f64)
  (local $x0 i32)
  (local $x1 i32)
  (local $i i32)
  (local $gated f64)
  (local $r f64)
  (local $g f64)
  (local $bl f64)
  (local $alpha f64)
  (local $t f64)
  (local $f f64)
  (local $f|15 f64)
  (local $f|16 f64)
  (local $f|17 f64)
  (local $norm f64)
  (local $rr i32)
  (local $gg i32)
  (local $bb i32)
  (local $aa i32)
  (local $23 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $assembly/index/lookupReady
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 0
  local.set $tx
  loop $for-loop|0
   local.get $tx
   global.get $assembly/index/AURORA_TEX_W
   i32.lt_s
   if
    local.get $tx
    f64.convert_i32_s
    f64.const 0.5
    f64.add
    global.get $assembly/index/AURORA_TEX_W
    f64.convert_i32_s
    f64.div
    local.set $u
    local.get $u
    f64.const 360
    f64.mul
    f64.const 180
    f64.add
    local.set $lonF
    local.get $lonF
    block $~lib/math/NativeMath.floor|inlined.0 (result f64)
     local.get $lonF
     f64.const 360
     f64.div
     local.set $x
     local.get $x
     f64.floor
     br $~lib/math/NativeMath.floor|inlined.0
    end
    f64.const 360
    f64.mul
    f64.sub
    local.set $lonF
    block $~lib/math/NativeMath.floor|inlined.1 (result f64)
     local.get $lonF
     local.set $x|4
     local.get $x|4
     f64.floor
     br $~lib/math/NativeMath.floor|inlined.1
    end
    i32.trunc_sat_f64_s
    local.set $x0
    local.get $x0
    global.get $assembly/index/AURORA_W
    i32.ge_s
    if
     global.get $assembly/index/AURORA_W
     i32.const 1
     i32.sub
     local.set $x0
    end
    local.get $x0
    global.get $assembly/index/AURORA_W
    i32.const 1
    i32.sub
    i32.lt_s
    if (result i32)
     local.get $x0
     i32.const 1
     i32.add
    else
     i32.const 0
    end
    local.set $x1
    global.get $assembly/index/lonFrac
    local.set $23
    global.get $~lib/memory/__stack_pointer
    local.get $23
    i32.store
    local.get $23
    local.get $tx
    local.get $lonF
    local.get $x0
    f64.convert_i32_s
    f64.sub
    f64.const 0
    f64.const 1
    call $assembly/index/clampF
    f32.demote_f64
    call $~lib/typedarray/Float32Array#__set
    global.get $assembly/index/lonRow0
    local.set $23
    global.get $~lib/memory/__stack_pointer
    local.get $23
    i32.store
    local.get $23
    local.get $tx
    local.get $x0
    global.get $assembly/index/AURORA_H
    i32.mul
    call $~lib/typedarray/Int32Array#__set
    global.get $assembly/index/lonRow1
    local.set $23
    global.get $~lib/memory/__stack_pointer
    local.get $23
    i32.store
    local.get $23
    local.get $tx
    local.get $x1
    global.get $assembly/index/AURORA_H
    i32.mul
    call $~lib/typedarray/Int32Array#__set
    local.get $tx
    i32.const 1
    i32.add
    local.set $tx
    br $for-loop|0
   end
  end
  i32.const 0
  local.set $i
  loop $for-loop|1
   local.get $i
   global.get $assembly/index/LUT_N
   i32.lt_s
   if
    local.get $i
    f64.convert_i32_s
    global.get $assembly/index/LUT_N
    i32.const 1
    i32.sub
    f64.convert_i32_s
    f64.div
    global.get $assembly/index/LUT_MAX
    f64.mul
    local.set $gated
    f64.const 0
    local.set $r
    f64.const 0
    local.set $g
    f64.const 0
    local.set $bl
    f64.const 0
    local.set $alpha
    local.get $gated
    f64.const 1
    f64.gt
    if
     local.get $gated
     f64.const 6
     f64.sub
     f64.const 22
     f64.div
     f64.const 0
     f64.const 1
     call $assembly/index/clampF
     local.set $t
     local.get $t
     f64.const 0.35
     f64.lt
     if
      local.get $t
      f64.const 0.35
      f64.div
      local.set $f
      f64.const 40
      f64.const 80
      local.get $f
      f64.mul
      f64.add
      local.set $r
      f64.const 255
      local.set $g
      f64.const 130
      f64.const 10
      local.get $f
      f64.mul
      f64.sub
      local.set $bl
     else
      local.get $t
      f64.const 0.6
      f64.lt
      if
       local.get $t
       f64.const 0.35
       f64.sub
       f64.const 0.25
       f64.div
       local.set $f|15
       f64.const 120
       f64.const 135
       local.get $f|15
       f64.mul
       f64.add
       local.set $r
       f64.const 255
       f64.const 35
       local.get $f|15
       f64.mul
       f64.sub
       local.set $g
       f64.const 120
       f64.const 40
       local.get $f|15
       f64.mul
       f64.sub
       local.set $bl
      else
       local.get $t
       f64.const 0.8
       f64.lt
       if
        local.get $t
        f64.const 0.6
        f64.sub
        f64.const 0.2
        f64.div
        local.set $f|16
        f64.const 255
        local.set $r
        f64.const 220
        f64.const 100
        local.get $f|16
        f64.mul
        f64.sub
        local.set $g
        f64.const 80
        f64.const 20
        local.get $f|16
        f64.mul
        f64.sub
        local.set $bl
       else
        local.get $t
        f64.const 0.8
        f64.sub
        f64.const 0.2
        f64.div
        local.set $f|17
        f64.const 255
        local.set $r
        f64.const 120
        f64.const 60
        local.get $f|17
        f64.mul
        f64.sub
        local.set $g
        f64.const 60
        f64.const 120
        local.get $f|17
        f64.mul
        f64.add
        local.set $bl
       end
      end
     end
     local.get $gated
     f64.const 1.5
     f64.sub
     f64.const 20
     f64.div
     f64.const 0
     f64.const 1
     call $assembly/index/clampF
     local.set $norm
     local.get $norm
     f64.const 0.65
     call $~lib/math/NativeMath.pow
     f64.const 0.92
     f64.mul
     local.set $alpha
    end
    local.get $r
    f64.const 0
    f64.const 255
    call $assembly/index/clampF
    i32.trunc_sat_f64_s
    local.set $rr
    local.get $g
    f64.const 0
    f64.const 255
    call $assembly/index/clampF
    i32.trunc_sat_f64_s
    local.set $gg
    local.get $bl
    f64.const 0
    f64.const 255
    call $assembly/index/clampF
    i32.trunc_sat_f64_s
    local.set $bb
    local.get $alpha
    f64.const 255
    f64.mul
    f64.const 0
    f64.const 255
    call $assembly/index/clampF
    i32.trunc_sat_f64_s
    local.set $aa
    global.get $assembly/index/paletteLUT
    local.set $23
    global.get $~lib/memory/__stack_pointer
    local.get $23
    i32.store
    local.get $23
    local.get $i
    local.get $rr
    local.get $gg
    i32.const 8
    i32.shl
    i32.or
    local.get $bb
    i32.const 16
    i32.shl
    i32.or
    local.get $aa
    i32.const 24
    i32.shl
    i32.or
    call $~lib/typedarray/Uint32Array#__set
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|1
   end
  end
  i32.const 1
  global.set $assembly/index/lookupReady
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/typedarray/Int32Array#__get (param $this i32) (param $index i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $index
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 336
   i32.const 752
   i32.const 736
   i32.const 64
   call $~lib/builtins/abort
   unreachable
  end
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/arraybuffer/ArrayBufferView#get:dataStart
  local.get $index
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $~lib/typedarray/Uint32Array#__get (param $this i32) (param $index i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $index
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 336
   i32.const 752
   i32.const 878
   i32.const 64
   call $~lib/builtins/abort
   unreachable
  end
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/arraybuffer/ArrayBufferView#get:dataStart
  local.get $index
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $assembly/index/buildAurora (param $timeMs f64)
  (local $kp f64)
  (local $deltaKp f64)
  (local $deltaLat f64)
  (local $gain f64)
  (local $gy i32)
  (local $sum f64)
  (local $lon i32)
  (local $gy|8 i32)
  (local $sum|9 f64)
  (local $n f64)
  (local $k i32)
  (local $yy i32)
  (local $gy|13 i32)
  (local $ty i32)
  (local $v f64)
  (local $lat f64)
  (local $srcLat f64)
  (local $fy f64)
  (local $x f64)
  (local $y0 i32)
  (local $y1 i32)
  (local $tyF f64)
  (local $x|23 f64)
  (local $gate f64)
  (local $x|25 f64)
  (local $polarBlend f64)
  (local $rowAverage f64)
  (local $rowGain f64)
  (local $north i32)
  (local $idx i32)
  (local $tx i32)
  (local $row0 i32)
  (local $row1 i32)
  (local $txF f32)
  (local $p00 f32)
  (local $p01 f32)
  (local $p10 f32)
  (local $p11 f32)
  (local $a f32)
  (local $b f32)
  (local $sampled f64)
  (local $baseProbability f64)
  (local $gated f64)
  (local $li i32)
  (local $45 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  call $assembly/index/prepareLookups
  local.get $timeMs
  call $assembly/index/interpolateKp
  local.set $kp
  local.get $kp
  global.get $assembly/index/referenceKp
  f64.sub
  local.set $deltaKp
  local.get $deltaKp
  f64.const 2.5
  f64.mul
  f64.const -12
  f64.const 12
  call $assembly/index/clampF
  local.set $deltaLat
  f64.const 1
  local.get $deltaKp
  f64.const 0.25
  f64.mul
  f64.add
  f64.const 0.15
  f64.const 3
  call $assembly/index/clampF
  local.set $gain
  f64.const 0
  global.set $assembly/index/peakNorth
  f64.const 0
  global.set $assembly/index/peakSouth
  i32.const 0
  local.set $gy
  loop $for-loop|0
   local.get $gy
   global.get $assembly/index/AURORA_H
   i32.lt_s
   if
    f64.const 0
    local.set $sum
    i32.const 0
    local.set $lon
    loop $for-loop|1
     local.get $lon
     global.get $assembly/index/AURORA_W
     i32.lt_s
     if
      local.get $sum
      global.get $assembly/index/auroraGrid
      local.set $45
      global.get $~lib/memory/__stack_pointer
      local.get $45
      i32.store
      local.get $45
      local.get $lon
      global.get $assembly/index/AURORA_H
      i32.mul
      local.get $gy
      i32.add
      call $~lib/typedarray/Float32Array#__get
      f64.promote_f32
      f64.add
      local.set $sum
      local.get $lon
      i32.const 1
      i32.add
      local.set $lon
      br $for-loop|1
     end
    end
    global.get $assembly/index/rowMean
    local.set $45
    global.get $~lib/memory/__stack_pointer
    local.get $45
    i32.store
    local.get $45
    local.get $gy
    local.get $sum
    global.get $assembly/index/AURORA_W
    f64.convert_i32_s
    f64.div
    f32.demote_f64
    call $~lib/typedarray/Float32Array#__set
    local.get $gy
    i32.const 1
    i32.add
    local.set $gy
    br $for-loop|0
   end
  end
  i32.const 0
  local.set $gy|8
  loop $for-loop|2
   local.get $gy|8
   global.get $assembly/index/AURORA_H
   i32.lt_s
   if
    f64.const 0
    local.set $sum|9
    f64.const 0
    local.set $n
    i32.const -2
    local.set $k
    loop $for-loop|3
     local.get $k
     i32.const 2
     i32.le_s
     if
      local.get $gy|8
      local.get $k
      i32.add
      local.set $yy
      local.get $yy
      i32.const 0
      i32.ge_s
      if (result i32)
       local.get $yy
       global.get $assembly/index/AURORA_H
       i32.lt_s
      else
       i32.const 0
      end
      if
       local.get $sum|9
       global.get $assembly/index/rowMean
       local.set $45
       global.get $~lib/memory/__stack_pointer
       local.get $45
       i32.store
       local.get $45
       local.get $yy
       call $~lib/typedarray/Float32Array#__get
       f64.promote_f32
       f64.add
       local.set $sum|9
       local.get $n
       f64.const 1
       f64.add
       local.set $n
      end
      local.get $k
      i32.const 1
      i32.add
      local.set $k
      br $for-loop|3
     end
    end
    global.get $assembly/index/rowMeanSmooth
    local.set $45
    global.get $~lib/memory/__stack_pointer
    local.get $45
    i32.store
    local.get $45
    local.get $gy|8
    local.get $sum|9
    local.get $n
    f64.div
    f32.demote_f64
    call $~lib/typedarray/Float32Array#__set
    local.get $gy|8
    i32.const 1
    i32.add
    local.set $gy|8
    br $for-loop|2
   end
  end
  i32.const 0
  local.set $gy|13
  loop $for-loop|4
   local.get $gy|13
   global.get $assembly/index/AURORA_H
   i32.lt_s
   if
    global.get $assembly/index/rowMean
    local.set $45
    global.get $~lib/memory/__stack_pointer
    local.get $45
    i32.store
    local.get $45
    local.get $gy|13
    global.get $assembly/index/rowMeanSmooth
    local.set $45
    global.get $~lib/memory/__stack_pointer
    local.get $45
    i32.store offset=4
    local.get $45
    local.get $gy|13
    call $~lib/typedarray/Float32Array#__get
    call $~lib/typedarray/Float32Array#__set
    local.get $gy|13
    i32.const 1
    i32.add
    local.set $gy|13
    br $for-loop|4
   end
  end
  i32.const 0
  local.set $ty
  loop $for-loop|5
   local.get $ty
   global.get $assembly/index/AURORA_TEX_H
   i32.lt_s
   if
    local.get $ty
    f64.convert_i32_s
    f64.const 0.5
    f64.add
    global.get $assembly/index/AURORA_TEX_H
    f64.convert_i32_s
    f64.div
    local.set $v
    f64.const 90
    local.get $v
    f64.const 180
    f64.mul
    f64.sub
    local.set $lat
    local.get $lat
    f64.const 0
    f64.ge
    if (result f64)
     local.get $lat
     local.get $deltaLat
     f64.add
    else
     local.get $lat
     local.get $deltaLat
     f64.sub
    end
    local.set $srcLat
    local.get $srcLat
    f64.const -90
    f64.const 90
    call $assembly/index/clampF
    local.set $srcLat
    local.get $srcLat
    f64.const 90
    f64.add
    local.set $fy
    block $~lib/math/NativeMath.floor|inlined.2 (result f64)
     local.get $fy
     local.set $x
     local.get $x
     f64.floor
     br $~lib/math/NativeMath.floor|inlined.2
    end
    i32.trunc_sat_f64_s
    local.set $y0
    local.get $y0
    i32.const 0
    i32.lt_s
    if
     i32.const 0
     local.set $y0
    end
    local.get $y0
    global.get $assembly/index/AURORA_H
    i32.const 1
    i32.sub
    i32.gt_s
    if
     global.get $assembly/index/AURORA_H
     i32.const 1
     i32.sub
     local.set $y0
    end
    local.get $y0
    global.get $assembly/index/AURORA_H
    i32.const 1
    i32.sub
    i32.lt_s
    if (result i32)
     local.get $y0
     i32.const 1
     i32.add
    else
     local.get $y0
    end
    local.set $y1
    local.get $fy
    local.get $y0
    f64.convert_i32_s
    f64.sub
    f64.const 0
    f64.const 1
    call $assembly/index/clampF
    local.set $tyF
    f64.const 15
    f64.const 30
    block $~lib/math/NativeMath.abs|inlined.1 (result f64)
     local.get $lat
     local.set $x|23
     local.get $x|23
     f64.abs
     br $~lib/math/NativeMath.abs|inlined.1
    end
    call $assembly/index/smoothstep
    local.set $gate
    f64.const 72
    f64.const 87
    block $~lib/math/NativeMath.abs|inlined.2 (result f64)
     local.get $lat
     local.set $x|25
     local.get $x|25
     f64.abs
     br $~lib/math/NativeMath.abs|inlined.2
    end
    call $assembly/index/smoothstep
    local.set $polarBlend
    global.get $assembly/index/rowMean
    local.set $45
    global.get $~lib/memory/__stack_pointer
    local.get $45
    i32.store
    local.get $45
    local.get $y0
    call $~lib/typedarray/Float32Array#__get
    f64.promote_f32
    global.get $assembly/index/rowMean
    local.set $45
    global.get $~lib/memory/__stack_pointer
    local.get $45
    i32.store
    local.get $45
    local.get $y1
    call $~lib/typedarray/Float32Array#__get
    global.get $assembly/index/rowMean
    local.set $45
    global.get $~lib/memory/__stack_pointer
    local.get $45
    i32.store
    local.get $45
    local.get $y0
    call $~lib/typedarray/Float32Array#__get
    f32.sub
    f64.promote_f32
    local.get $tyF
    f64.mul
    f64.add
    local.set $rowAverage
    local.get $gain
    local.get $gate
    f64.mul
    local.set $rowGain
    local.get $lat
    f64.const 0
    f64.ge
    local.set $north
    local.get $ty
    global.get $assembly/index/AURORA_TEX_W
    i32.mul
    local.set $idx
    i32.const 0
    local.set $tx
    loop $for-loop|6
     local.get $tx
     global.get $assembly/index/AURORA_TEX_W
     i32.lt_s
     if
      global.get $assembly/index/lonRow0
      local.set $45
      global.get $~lib/memory/__stack_pointer
      local.get $45
      i32.store
      local.get $45
      local.get $tx
      call $~lib/typedarray/Int32Array#__get
      local.set $row0
      global.get $assembly/index/lonRow1
      local.set $45
      global.get $~lib/memory/__stack_pointer
      local.get $45
      i32.store
      local.get $45
      local.get $tx
      call $~lib/typedarray/Int32Array#__get
      local.set $row1
      global.get $assembly/index/lonFrac
      local.set $45
      global.get $~lib/memory/__stack_pointer
      local.get $45
      i32.store
      local.get $45
      local.get $tx
      call $~lib/typedarray/Float32Array#__get
      local.set $txF
      global.get $assembly/index/auroraGrid
      local.set $45
      global.get $~lib/memory/__stack_pointer
      local.get $45
      i32.store
      local.get $45
      local.get $row0
      local.get $y0
      i32.add
      call $~lib/typedarray/Float32Array#__get
      local.set $p00
      global.get $assembly/index/auroraGrid
      local.set $45
      global.get $~lib/memory/__stack_pointer
      local.get $45
      i32.store
      local.get $45
      local.get $row0
      local.get $y1
      i32.add
      call $~lib/typedarray/Float32Array#__get
      local.set $p01
      global.get $assembly/index/auroraGrid
      local.set $45
      global.get $~lib/memory/__stack_pointer
      local.get $45
      i32.store
      local.get $45
      local.get $row1
      local.get $y0
      i32.add
      call $~lib/typedarray/Float32Array#__get
      local.set $p10
      global.get $assembly/index/auroraGrid
      local.set $45
      global.get $~lib/memory/__stack_pointer
      local.get $45
      i32.store
      local.get $45
      local.get $row1
      local.get $y1
      i32.add
      call $~lib/typedarray/Float32Array#__get
      local.set $p11
      local.get $p00
      local.get $p10
      local.get $p00
      f32.sub
      local.get $txF
      f32.mul
      f32.add
      local.set $a
      local.get $p01
      local.get $p11
      local.get $p01
      f32.sub
      local.get $txF
      f32.mul
      f32.add
      local.set $b
      local.get $a
      f64.promote_f32
      local.get $b
      local.get $a
      f32.sub
      f64.promote_f32
      local.get $tyF
      f64.mul
      f64.add
      local.set $sampled
      local.get $sampled
      local.get $rowAverage
      local.get $sampled
      f64.sub
      local.get $polarBlend
      f64.mul
      f64.add
      local.set $baseProbability
      local.get $baseProbability
      local.get $rowGain
      f64.mul
      local.set $gated
      local.get $north
      if
       local.get $gated
       global.get $assembly/index/peakNorth
       f64.gt
       if
        local.get $gated
        global.set $assembly/index/peakNorth
       end
      else
       local.get $gated
       global.get $assembly/index/peakSouth
       f64.gt
       if
        local.get $gated
        global.set $assembly/index/peakSouth
       end
      end
      local.get $gated
      global.get $assembly/index/LUT_SCALE
      f64.mul
      i32.trunc_sat_f64_s
      local.set $li
      local.get $li
      i32.const 0
      i32.lt_s
      if
       i32.const 0
       local.set $li
      else
       local.get $li
       global.get $assembly/index/LUT_N
       i32.ge_s
       if
        global.get $assembly/index/LUT_N
        i32.const 1
        i32.sub
        local.set $li
       end
      end
      global.get $assembly/index/auroraTexture
      local.set $45
      global.get $~lib/memory/__stack_pointer
      local.get $45
      i32.store
      local.get $45
      local.get $idx
      global.get $assembly/index/paletteLUT
      local.set $45
      global.get $~lib/memory/__stack_pointer
      local.get $45
      i32.store offset=4
      local.get $45
      local.get $li
      call $~lib/typedarray/Uint32Array#__get
      call $~lib/typedarray/Uint32Array#__set
      local.get $idx
      i32.const 1
      i32.add
      local.set $idx
      local.get $tx
      i32.const 1
      i32.add
      local.set $tx
      br $for-loop|6
     end
    end
    local.get $ty
    i32.const 1
    i32.add
    local.set $ty
    br $for-loop|5
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
)
