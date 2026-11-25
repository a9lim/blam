import Blc.SelfintCompact45.Frames.Frame300R0M1
import Blc.SelfintCompact45.Frames.Frame300R1M1
import Blc.SelfintCompact45.Frames.Frame300R2M0
import Blc.SelfintCompact45.Frames.Frame300R2M1
import Blc.SelfintCompact45.Frames.Frame300R3M0
import Blc.SelfintCompact45.Frames.Frame300R3M1
import Blc.SelfintCompact45.Frames.Frame300R4M0
import Blc.SelfintCompact45.Frames.Frame300R4M1
namespace Blc.SelfintSingleObject.Compact45
open Fast45 SourceRefutations FrameCertificate
set_option maxRecDepth 24000
set_option maxHeartbeats 8000000
set_option Elab.async false
theorem cf300 : FrameCover false true 8 5 5 3 2 3 k300 :=
  by_words idx300 4 1 1 5 2 rfl rfl rfl rfl rfl rowProofs%[rowProofs%[rowProofs%[h300_0_0_0,h300_0_0_1,h300_0_0_2],rowProofs%[h300_0_1_0,h300_0_1_1,h300_0_1_2]],rowProofs%[rowProofs%[h300_1_0_0,h300_1_0_1,h300_1_0_2],rowProofs%[h300_1_1_0,h300_1_1_1,h300_1_1_2]],rowProofs%[rowProofs%[h300_2_0_0,h300_2_0_1,h300_2_0_2],rowProofs%[h300_2_1_0,h300_2_1_1,h300_2_1_2]],rowProofs%[rowProofs%[h300_3_0_0,h300_3_0_1,h300_3_0_2],rowProofs%[h300_3_1_0,h300_3_1_1,h300_3_1_2]],rowProofs%[rowProofs%[h300_4_0_0,h300_4_0_1,h300_4_0_2],rowProofs%[h300_4_1_0,h300_4_1_1,h300_4_1_2]]]
end Blc.SelfintSingleObject.Compact45
