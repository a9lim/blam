import Blc.SelfintCompact45.Frames.Frame189R0M3
import Blc.SelfintCompact45.Frames.Frame189R1M3
import Blc.SelfintCompact45.Frames.Frame189R2M0
import Blc.SelfintCompact45.Frames.Frame189R2M1
import Blc.SelfintCompact45.Frames.Frame189R2M2
import Blc.SelfintCompact45.Frames.Frame189R2M3
import Blc.SelfintCompact45.Frames.Frame189R3M0
import Blc.SelfintCompact45.Frames.Frame189R3M1
import Blc.SelfintCompact45.Frames.Frame189R3M2
import Blc.SelfintCompact45.Frames.Frame189R3M3
namespace Blc.SelfintSingleObject.Compact45
open Fast45 SourceRefutations FrameCertificate
set_option maxRecDepth 24000
set_option maxHeartbeats 8000000
set_option Elab.async false
theorem cf189 : FrameCover false false 7 7 5 4 3 3 k189 :=
  by_words idx189 3 0 3 4 1 rfl rfl rfl rfl rfl rowProofs%[rowProofs%[rowProofs%[h189_0_0_0,h189_0_0_1],rowProofs%[h189_0_1_0,h189_0_1_1],rowProofs%[h189_0_2_0,h189_0_2_1],rowProofs%[h189_0_3_0,h189_0_3_1]],rowProofs%[rowProofs%[h189_1_0_0,h189_1_0_1],rowProofs%[h189_1_1_0,h189_1_1_1],rowProofs%[h189_1_2_0,h189_1_2_1],rowProofs%[h189_1_3_0,h189_1_3_1]],rowProofs%[rowProofs%[h189_2_0_0,h189_2_0_1],rowProofs%[h189_2_1_0,h189_2_1_1],rowProofs%[h189_2_2_0,h189_2_2_1],rowProofs%[h189_2_3_0,h189_2_3_1]],rowProofs%[rowProofs%[h189_3_0_0,h189_3_0_1],rowProofs%[h189_3_1_0,h189_3_1_1],rowProofs%[h189_3_2_0,h189_3_2_1],rowProofs%[h189_3_3_0,h189_3_3_1]]]
end Blc.SelfintSingleObject.Compact45
