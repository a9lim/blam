import Blc.SelfintCompact45.Frames.Index210
namespace Blc.SelfintSingleObject.Compact45
open Fast45 SourceRefutations FrameCertificate
set_option maxRecDepth 24000
set_option maxHeartbeats 8000000
set_option Elab.async false
theorem h210_3_3_0 : WordRow 7 2 3 false true k210 idx210 3 1 3 4 2 3 3 0 := rowProofs%[by decide +kernel]
theorem h210_3_3_1 : WordRow 7 2 3 false true k210 idx210 3 1 3 4 2 3 3 1 := rowProofs%[by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel]
theorem h210_3_3_2 : WordRow 7 2 3 false true k210 idx210 3 1 3 4 2 3 3 2 := rowProofs%[by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel]
end Blc.SelfintSingleObject.Compact45
