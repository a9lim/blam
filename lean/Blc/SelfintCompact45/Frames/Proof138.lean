import Blc.SelfintCompact45.Frames.Frame138R0M2
import Blc.SelfintCompact45.Frames.Frame138R1M2
import Blc.SelfintCompact45.Frames.Frame138R2M0
import Blc.SelfintCompact45.Frames.Frame138R2M1
import Blc.SelfintCompact45.Frames.Frame138R2M2
import Blc.SelfintCompact45.Frames.Frame138R3M0
import Blc.SelfintCompact45.Frames.Frame138R3M1
import Blc.SelfintCompact45.Frames.Frame138R3M2
namespace Blc.SelfintSingleObject.Compact45
open Fast45 SourceRefutations FrameCertificate
set_option maxRecDepth 24000
set_option maxHeartbeats 8000000
set_option Elab.async false
theorem cf138 : FrameCover false true 7 6 7 4 2 3 k138 :=
  by_words idx138 3 1 2 4 3 rfl rfl rfl rfl rfl rowProofs%[rowProofs%[rowProofs%[h138_0_0_0,h138_0_0_1,h138_0_0_2,h138_0_0_3],rowProofs%[h138_0_1_0,h138_0_1_1,h138_0_1_2,h138_0_1_3],rowProofs%[h138_0_2_0,h138_0_2_1,h138_0_2_2,h138_0_2_3]],rowProofs%[rowProofs%[h138_1_0_0,h138_1_0_1,h138_1_0_2,h138_1_0_3],rowProofs%[h138_1_1_0,h138_1_1_1,h138_1_1_2,h138_1_1_3],rowProofs%[h138_1_2_0,h138_1_2_1,h138_1_2_2,h138_1_2_3]],rowProofs%[rowProofs%[h138_2_0_0,h138_2_0_1,h138_2_0_2,h138_2_0_3],rowProofs%[h138_2_1_0,h138_2_1_1,h138_2_1_2,h138_2_1_3],rowProofs%[h138_2_2_0,h138_2_2_1,h138_2_2_2,h138_2_2_3]],rowProofs%[rowProofs%[h138_3_0_0,h138_3_0_1,h138_3_0_2,h138_3_0_3],rowProofs%[h138_3_1_0,h138_3_1_1,h138_3_1_2,h138_3_1_3],rowProofs%[h138_3_2_0,h138_3_2_1,h138_3_2_2,h138_3_2_3]]]
end Blc.SelfintSingleObject.Compact45
