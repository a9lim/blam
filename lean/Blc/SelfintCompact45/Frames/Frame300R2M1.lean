import Blc.SelfintCompact45.Frames.Index300
namespace Blc.SelfintSingleObject.Compact45
open Fast45 SourceRefutations FrameCertificate
set_option maxRecDepth 24000
set_option maxHeartbeats 8000000
set_option Elab.async false
theorem h300_2_1_0 : WordRow 5 2 3 false true k300 idx300 4 1 1 5 2 2 1 0 := rowProofs%[by decide +kernel]
theorem h300_2_1_1 : WordRow 5 2 3 false true k300 idx300 4 1 1 5 2 2 1 1 := rowProofs%[by decide +kernel,by decide +kernel,by decide +kernel]
theorem h300_2_1_2 : WordRow 5 2 3 false true k300 idx300 4 1 1 5 2 2 1 2 := rowProofs%[by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel]
end Blc.SelfintSingleObject.Compact45
