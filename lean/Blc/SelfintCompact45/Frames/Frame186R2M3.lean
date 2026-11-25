import Blc.SelfintCompact45.Frames.Index186
namespace Blc.SelfintSingleObject.Compact45
open Fast45 SourceRefutations FrameCertificate
set_option maxRecDepth 24000
set_option maxHeartbeats 8000000
set_option Elab.async false
theorem h186_2_3_0 : WordRow 7 2 3 false false k186 idx186 3 0 4 4 1 2 3 0 := rowProofs%[by decide +kernel]
theorem h186_2_3_1 : WordRow 7 2 3 false false k186 idx186 3 0 4 4 1 2 3 1 := rowProofs%[by decide +kernel,by decide +kernel,by decide +kernel]
end Blc.SelfintSingleObject.Compact45
