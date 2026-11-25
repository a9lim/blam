import Blc.SelfintCompact45.Frames.Index111
namespace Blc.SelfintSingleObject.Compact45
open Fast45 SourceRefutations FrameCertificate
set_option maxRecDepth 24000
set_option maxHeartbeats 8000000
set_option Elab.async false
theorem h111_2_2_0 : WordRow 6 2 3 false false k111 idx111 3 0 3 4 1 2 2 0 := rowProofs%[by decide +kernel]
theorem h111_2_2_1 : WordRow 6 2 3 false false k111 idx111 3 0 3 4 1 2 2 1 := rowProofs%[by decide +kernel,by decide +kernel,by decide +kernel]
end Blc.SelfintSingleObject.Compact45
