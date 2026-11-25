import Blc.SelfintCompact45.Frames.Frame237R0M2
import Blc.SelfintCompact45.Frames.Frame237R1M2
import Blc.SelfintCompact45.Frames.Frame237R2M0
import Blc.SelfintCompact45.Frames.Frame237R2M1
import Blc.SelfintCompact45.Frames.Frame237R2M2
import Blc.SelfintCompact45.Frames.Frame237R3M0
import Blc.SelfintCompact45.Frames.Frame237R3M1
import Blc.SelfintCompact45.Frames.Frame237R3M2
namespace Blc.SelfintSingleObject.Compact45
open Fast45 SourceRefutations FrameCertificate
set_option maxRecDepth 24000
set_option maxHeartbeats 8000000
set_option Elab.async false
theorem cf237 : FrameCover false true 7 7 5 5 3 3 k237 :=
  by_words idx237 3 1 2 4 0 rfl rfl rfl rfl rfl rowProofs%[rowProofs%[rowProofs%[h237_0_0_0],rowProofs%[h237_0_1_0],rowProofs%[h237_0_2_0]],rowProofs%[rowProofs%[h237_1_0_0],rowProofs%[h237_1_1_0],rowProofs%[h237_1_2_0]],rowProofs%[rowProofs%[h237_2_0_0],rowProofs%[h237_2_1_0],rowProofs%[h237_2_2_0]],rowProofs%[rowProofs%[h237_3_0_0],rowProofs%[h237_3_1_0],rowProofs%[h237_3_2_0]]]
end Blc.SelfintSingleObject.Compact45
