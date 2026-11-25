import Blc.SelfintCompact45.Frames.Index308
namespace Blc.SelfintSingleObject.Compact45
open Fast45 SourceRefutations FrameCertificate
set_option maxRecDepth 24000
set_option maxHeartbeats 8000000
set_option Elab.async false
theorem h308_4_1_0 : WordRow 5 2 3 false true k308 idx308 4 1 1 5 1 4 1 0 := rowProofs%[by decide +kernel]
theorem h308_4_1_1 : WordRow 5 2 3 false true k308 idx308 4 1 1 5 1 4 1 1 := rowProofs%[by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel]
end Blc.SelfintSingleObject.Compact45
