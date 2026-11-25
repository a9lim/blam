import Blc.SelfintCompact45.Frames.Frame213R0M2
import Blc.SelfintCompact45.Frames.Frame213R1M2
import Blc.SelfintCompact45.Frames.Frame213R2M0
import Blc.SelfintCompact45.Frames.Frame213R2M1
import Blc.SelfintCompact45.Frames.Frame213R2M2
import Blc.SelfintCompact45.Frames.Frame213R3M0
import Blc.SelfintCompact45.Frames.Frame213R3M1
import Blc.SelfintCompact45.Frames.Frame213R3M2
namespace Blc.SelfintSingleObject.Compact45
open Fast45 SourceRefutations FrameCertificate
set_option maxRecDepth 24000
set_option maxHeartbeats 8000000
set_option Elab.async false
theorem cf213 : FrameCover false true 7 7 5 3 3 3 k213 :=
  by_words idx213 3 1 2 4 2 rfl rfl rfl rfl rfl rowProofs%[rowProofs%[rowProofs%[h213_0_0_0,h213_0_0_1,h213_0_0_2],rowProofs%[h213_0_1_0,h213_0_1_1,h213_0_1_2],rowProofs%[h213_0_2_0,h213_0_2_1,h213_0_2_2]],rowProofs%[rowProofs%[h213_1_0_0,h213_1_0_1,h213_1_0_2],rowProofs%[h213_1_1_0,h213_1_1_1,h213_1_1_2],rowProofs%[h213_1_2_0,h213_1_2_1,h213_1_2_2]],rowProofs%[rowProofs%[h213_2_0_0,h213_2_0_1,h213_2_0_2],rowProofs%[h213_2_1_0,h213_2_1_1,h213_2_1_2],rowProofs%[h213_2_2_0,h213_2_2_1,h213_2_2_2]],rowProofs%[rowProofs%[h213_3_0_0,h213_3_0_1,h213_3_0_2],rowProofs%[h213_3_1_0,h213_3_1_1,h213_3_1_2],rowProofs%[h213_3_2_0,h213_3_2_1,h213_3_2_2]]]
end Blc.SelfintSingleObject.Compact45
