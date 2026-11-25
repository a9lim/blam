import Blc.SelfintCompact45.Frames.Index213
namespace Blc.SelfintSingleObject.Compact45
open Fast45 SourceRefutations FrameCertificate
set_option maxRecDepth 24000
set_option maxHeartbeats 8000000
set_option Elab.async false
theorem h213_3_2_0 : WordRow 7 3 3 false true k213 idx213 3 1 2 4 2 3 2 0 := rowProofs%[by decide +kernel]
theorem h213_3_2_1 : WordRow 7 3 3 false true k213 idx213 3 1 2 4 2 3 2 1 := rowProofs%[by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel]
theorem h213_3_2_2 : WordRow 7 3 3 false true k213 idx213 3 1 2 4 2 3 2 2 := rowProofs%[by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel]
end Blc.SelfintSingleObject.Compact45
