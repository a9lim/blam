import Blc.SelfintCompact45.Frames.Index264
namespace Blc.SelfintSingleObject.Compact45
open Fast45 SourceRefutations FrameCertificate
set_option maxRecDepth 24000
set_option maxHeartbeats 8000000
set_option Elab.async false
theorem h264_1_0_0 : WordRow 8 3 3 false true k264 idx264 3 1 3 4 0 1 0 0 := rowProofs%[by decide +kernel]
theorem h264_1_1_0 : WordRow 8 3 3 false true k264 idx264 3 1 3 4 0 1 1 0 := rowProofs%[by decide +kernel]
theorem h264_1_2_0 : WordRow 8 3 3 false true k264 idx264 3 1 3 4 0 1 2 0 := rowProofs%[by decide +kernel]
theorem h264_1_3_0 : WordRow 8 3 3 false true k264 idx264 3 1 3 4 0 1 3 0 := rowProofs%[by decide +kernel]
end Blc.SelfintSingleObject.Compact45
