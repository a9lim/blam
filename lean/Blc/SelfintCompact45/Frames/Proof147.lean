import Blc.SelfintCompact45.Frames.Frame147R0M2
import Blc.SelfintCompact45.Frames.Frame147R1M2
import Blc.SelfintCompact45.Frames.Frame147R2M0
import Blc.SelfintCompact45.Frames.Frame147R2M1
import Blc.SelfintCompact45.Frames.Frame147R2M2
import Blc.SelfintCompact45.Frames.Frame147R3M0
import Blc.SelfintCompact45.Frames.Frame147R3M1
import Blc.SelfintCompact45.Frames.Frame147R3M2
namespace Blc.SelfintSingleObject.Compact45
open Fast45 SourceRefutations FrameCertificate
set_option maxRecDepth 24000
set_option maxHeartbeats 8000000
set_option Elab.async false
theorem cf147 : FrameCover false true 7 6 7 5 2 3 k147 :=
  by_words idx147 3 1 2 4 2 rfl rfl rfl rfl rfl rowProofs%[rowProofs%[rowProofs%[h147_0_0_0,h147_0_0_1,h147_0_0_2],rowProofs%[h147_0_1_0,h147_0_1_1,h147_0_1_2],rowProofs%[h147_0_2_0,h147_0_2_1,h147_0_2_2]],rowProofs%[rowProofs%[h147_1_0_0,h147_1_0_1,h147_1_0_2],rowProofs%[h147_1_1_0,h147_1_1_1,h147_1_1_2],rowProofs%[h147_1_2_0,h147_1_2_1,h147_1_2_2]],rowProofs%[rowProofs%[h147_2_0_0,h147_2_0_1,h147_2_0_2],rowProofs%[h147_2_1_0,h147_2_1_1,h147_2_1_2],rowProofs%[h147_2_2_0,h147_2_2_1,h147_2_2_2]],rowProofs%[rowProofs%[h147_3_0_0,h147_3_0_1,h147_3_0_2],rowProofs%[h147_3_1_0,h147_3_1_1,h147_3_1_2],rowProofs%[h147_3_2_0,h147_3_2_1,h147_3_2_2]]]
end Blc.SelfintSingleObject.Compact45
