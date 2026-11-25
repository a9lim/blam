import Blc.SelfintCompact45.Frames.Frame249R0M4
import Blc.SelfintCompact45.Frames.Frame249R1M4
import Blc.SelfintCompact45.Frames.Frame249R2M0
import Blc.SelfintCompact45.Frames.Frame249R2M1
import Blc.SelfintCompact45.Frames.Frame249R2M2
import Blc.SelfintCompact45.Frames.Frame249R2M3
import Blc.SelfintCompact45.Frames.Frame249R2M4
import Blc.SelfintCompact45.Frames.Frame249R3M0
import Blc.SelfintCompact45.Frames.Frame249R3M1
import Blc.SelfintCompact45.Frames.Frame249R3M2
import Blc.SelfintCompact45.Frames.Frame249R3M3
import Blc.SelfintCompact45.Frames.Frame249R3M4
namespace Blc.SelfintSingleObject.Compact45
open Fast45 SourceRefutations FrameCertificate
set_option maxRecDepth 24000
set_option maxHeartbeats 8000000
set_option Elab.async false
theorem cf249 : FrameCover false false 7 8 3 3 3 3 k249 :=
  by_words idx249 3 0 4 4 0 rfl rfl rfl rfl rfl rowProofs%[rowProofs%[rowProofs%[h249_0_0_0],rowProofs%[h249_0_1_0],rowProofs%[h249_0_2_0],rowProofs%[h249_0_3_0],rowProofs%[h249_0_4_0]],rowProofs%[rowProofs%[h249_1_0_0],rowProofs%[h249_1_1_0],rowProofs%[h249_1_2_0],rowProofs%[h249_1_3_0],rowProofs%[h249_1_4_0]],rowProofs%[rowProofs%[h249_2_0_0],rowProofs%[h249_2_1_0],rowProofs%[h249_2_2_0],rowProofs%[h249_2_3_0],rowProofs%[h249_2_4_0]],rowProofs%[rowProofs%[h249_3_0_0],rowProofs%[h249_3_1_0],rowProofs%[h249_3_2_0],rowProofs%[h249_3_3_0],rowProofs%[h249_3_4_0]]]
end Blc.SelfintSingleObject.Compact45
