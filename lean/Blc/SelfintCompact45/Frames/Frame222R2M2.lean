import Blc.SelfintCompact45.Frames.Index222
namespace Blc.SelfintSingleObject.Compact45
open Fast45 SourceRefutations FrameCertificate
set_option maxRecDepth 24000
set_option maxHeartbeats 8000000
set_option Elab.async false
theorem h222_2_2_0 : WordRow 7 2 3 false true k222 idx222 3 1 3 4 1 2 2 0 := rowProofs%[by decide +kernel]
theorem h222_2_2_1 : WordRow 7 2 3 false true k222 idx222 3 1 3 4 1 2 2 1 := rowProofs%[by decide +kernel,by decide +kernel,by decide +kernel]
end Blc.SelfintSingleObject.Compact45
