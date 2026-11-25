import Blc.SelfintCompact45.Frames.Frame223R0M3
import Blc.SelfintCompact45.Frames.Frame223R1M3
import Blc.SelfintCompact45.Frames.Frame223R2M0
import Blc.SelfintCompact45.Frames.Frame223R2M1
import Blc.SelfintCompact45.Frames.Frame223R2M2
import Blc.SelfintCompact45.Frames.Frame223R2M3
namespace Blc.SelfintSingleObject.Compact45
open Fast45 SourceRefutations FrameCertificate
set_option maxRecDepth 24000
set_option maxHeartbeats 8000000
set_option Elab.async false
theorem cf223 : FrameCover false true 7 7 5 4 2 4 k223 :=
  by_words idx223 2 1 3 3 1 rfl rfl rfl rfl rfl rowProofs%[rowProofs%[rowProofs%[h223_0_0_0,h223_0_0_1],rowProofs%[h223_0_1_0,h223_0_1_1],rowProofs%[h223_0_2_0,h223_0_2_1],rowProofs%[h223_0_3_0,h223_0_3_1]],rowProofs%[rowProofs%[h223_1_0_0,h223_1_0_1],rowProofs%[h223_1_1_0,h223_1_1_1],rowProofs%[h223_1_2_0,h223_1_2_1],rowProofs%[h223_1_3_0,h223_1_3_1]],rowProofs%[rowProofs%[h223_2_0_0,h223_2_0_1],rowProofs%[h223_2_1_0,h223_2_1_1],rowProofs%[h223_2_2_0,h223_2_2_1],rowProofs%[h223_2_3_0,h223_2_3_1]]]
end Blc.SelfintSingleObject.Compact45
