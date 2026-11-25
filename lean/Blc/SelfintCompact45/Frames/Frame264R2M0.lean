import Blc.SelfintCompact45.Frames.Index264
namespace Blc.SelfintSingleObject.Compact45
open Fast45 SourceRefutations FrameCertificate
set_option maxRecDepth 24000
set_option maxHeartbeats 8000000
set_option Elab.async false
theorem h264_2_0_0 : WordRow 8 3 3 false true k264 idx264 3 1 3 4 0 2 0 0 := rowProofs%[by decide +kernel]
end Blc.SelfintSingleObject.Compact45
