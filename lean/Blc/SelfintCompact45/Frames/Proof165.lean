import Blc.SelfintCompact45.Frames.Frame165R0M2
import Blc.SelfintCompact45.Frames.Frame165R1M2
import Blc.SelfintCompact45.Frames.Frame165R2M0
import Blc.SelfintCompact45.Frames.Frame165R2M1
import Blc.SelfintCompact45.Frames.Frame165R2M2
import Blc.SelfintCompact45.Frames.Frame165R3M0
import Blc.SelfintCompact45.Frames.Frame165R3M1
import Blc.SelfintCompact45.Frames.Frame165R3M2
namespace Blc.SelfintSingleObject.Compact45
open Fast45 SourceRefutations FrameCertificate
set_option maxRecDepth 24000
set_option maxHeartbeats 8000000
set_option Elab.async false
theorem cf165 : FrameCover false true 7 6 7 7 2 3 k165 :=
  by_words idx165 3 1 2 4 0 rfl rfl rfl rfl rfl rowProofs%[rowProofs%[rowProofs%[h165_0_0_0],rowProofs%[h165_0_1_0],rowProofs%[h165_0_2_0]],rowProofs%[rowProofs%[h165_1_0_0],rowProofs%[h165_1_1_0],rowProofs%[h165_1_2_0]],rowProofs%[rowProofs%[h165_2_0_0],rowProofs%[h165_2_1_0],rowProofs%[h165_2_2_0]],rowProofs%[rowProofs%[h165_3_0_0],rowProofs%[h165_3_1_0],rowProofs%[h165_3_2_0]]]
end Blc.SelfintSingleObject.Compact45
