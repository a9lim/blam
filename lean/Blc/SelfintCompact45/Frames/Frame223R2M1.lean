import Blc.SelfintCompact45.Frames.Index223
namespace Blc.SelfintSingleObject.Compact45
open Fast45 SourceRefutations FrameCertificate
set_option maxRecDepth 24000
set_option maxHeartbeats 8000000
set_option Elab.async false
theorem h223_2_1_0 : WordRow 7 2 4 false true k223 idx223 2 1 3 3 1 2 1 0 := rowProofs%[by decide +kernel]
theorem h223_2_1_1 : WordRow 7 2 4 false true k223 idx223 2 1 3 3 1 2 1 1 := rowProofs%[by decide +kernel,by decide +kernel,by decide +kernel]
end Blc.SelfintSingleObject.Compact45
