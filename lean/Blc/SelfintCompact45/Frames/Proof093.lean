import Blc.SelfintCompact45.Frames.Frame093R0M3
import Blc.SelfintCompact45.Frames.Frame093R1M3
import Blc.SelfintCompact45.Frames.Frame093R2M0
import Blc.SelfintCompact45.Frames.Frame093R2M1
import Blc.SelfintCompact45.Frames.Frame093R2M2
import Blc.SelfintCompact45.Frames.Frame093R2M3
import Blc.SelfintCompact45.Frames.Frame093R3M0
import Blc.SelfintCompact45.Frames.Frame093R3M1
import Blc.SelfintCompact45.Frames.Frame093R3M2
import Blc.SelfintCompact45.Frames.Frame093R3M3
namespace Blc.SelfintSingleObject.Compact45
open Fast45 SourceRefutations FrameCertificate
set_option maxRecDepth 24000
set_option maxHeartbeats 8000000
set_option Elab.async false
theorem cf93 : FrameCover false false 7 6 7 4 2 3 k93 :=
  by_words idx93 3 0 3 4 3 rfl rfl rfl rfl rfl rowProofs%[rowProofs%[rowProofs%[h93_0_0_0,h93_0_0_1,h93_0_0_2,h93_0_0_3],rowProofs%[h93_0_1_0,h93_0_1_1,h93_0_1_2,h93_0_1_3],rowProofs%[h93_0_2_0,h93_0_2_1,h93_0_2_2,h93_0_2_3],rowProofs%[h93_0_3_0,h93_0_3_1,h93_0_3_2,h93_0_3_3]],rowProofs%[rowProofs%[h93_1_0_0,h93_1_0_1,h93_1_0_2,h93_1_0_3],rowProofs%[h93_1_1_0,h93_1_1_1,h93_1_1_2,h93_1_1_3],rowProofs%[h93_1_2_0,h93_1_2_1,h93_1_2_2,h93_1_2_3],rowProofs%[h93_1_3_0,h93_1_3_1,h93_1_3_2,h93_1_3_3]],rowProofs%[rowProofs%[h93_2_0_0,h93_2_0_1,h93_2_0_2,h93_2_0_3],rowProofs%[h93_2_1_0,h93_2_1_1,h93_2_1_2,h93_2_1_3],rowProofs%[h93_2_2_0,h93_2_2_1,h93_2_2_2,h93_2_2_3],rowProofs%[h93_2_3_0,h93_2_3_1,h93_2_3_2,h93_2_3_3]],rowProofs%[rowProofs%[h93_3_0_0,h93_3_0_1,h93_3_0_2,h93_3_0_3],rowProofs%[h93_3_1_0,h93_3_1_1,h93_3_1_2,h93_3_1_3],rowProofs%[h93_3_2_0,h93_3_2_1,h93_3_2_2,h93_3_2_3],rowProofs%[h93_3_3_0,h93_3_3_1,h93_3_3_2,h93_3_3_3]]]
end Blc.SelfintSingleObject.Compact45
