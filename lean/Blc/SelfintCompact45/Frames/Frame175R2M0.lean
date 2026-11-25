import Blc.SelfintCompact45.Frames.Index175
namespace Blc.SelfintSingleObject.Compact45
open Fast45 SourceRefutations FrameCertificate
set_option maxRecDepth 24000
set_option maxHeartbeats 8000000
set_option Elab.async false
theorem h175_2_0_0 : WordRow 7 2 4 false false k175 idx175 2 0 4 3 2 2 0 0 := rowProofs%[by decide +kernel]
theorem h175_2_0_1 : WordRow 7 2 4 false false k175 idx175 2 0 4 3 2 2 0 1 := rowProofs%[by decide +kernel,by decide +kernel,by decide +kernel]
theorem h175_2_0_2 : WordRow 7 2 4 false false k175 idx175 2 0 4 3 2 2 0 2 := rowProofs%[by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel]
end Blc.SelfintSingleObject.Compact45
