import Blc.SelfintCompact45.Frames.Index156
namespace Blc.SelfintSingleObject.Compact45
open Fast45 SourceRefutations FrameCertificate
set_option maxRecDepth 24000
set_option maxHeartbeats 8000000
set_option Elab.async false
theorem h156_3_1_0 : WordRow 6 2 3 false true k156 idx156 3 1 2 4 1 3 1 0 := rowProofs%[by decide +kernel]
theorem h156_3_1_1 : WordRow 6 2 3 false true k156 idx156 3 1 2 4 1 3 1 1 := rowProofs%[by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel]
end Blc.SelfintSingleObject.Compact45
