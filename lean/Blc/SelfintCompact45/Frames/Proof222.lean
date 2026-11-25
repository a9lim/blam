import Blc.SelfintCompact45.Frames.Frame222R0M3
import Blc.SelfintCompact45.Frames.Frame222R1M3
import Blc.SelfintCompact45.Frames.Frame222R2M0
import Blc.SelfintCompact45.Frames.Frame222R2M1
import Blc.SelfintCompact45.Frames.Frame222R2M2
import Blc.SelfintCompact45.Frames.Frame222R2M3
import Blc.SelfintCompact45.Frames.Frame222R3M0
import Blc.SelfintCompact45.Frames.Frame222R3M1
import Blc.SelfintCompact45.Frames.Frame222R3M2
import Blc.SelfintCompact45.Frames.Frame222R3M3
namespace Blc.SelfintSingleObject.Compact45
open Fast45 SourceRefutations FrameCertificate
set_option maxRecDepth 24000
set_option maxHeartbeats 8000000
set_option Elab.async false
theorem cf222 : FrameCover false true 7 7 5 4 2 3 k222 :=
  by_words idx222 3 1 3 4 1 rfl rfl rfl rfl rfl rowProofs%[rowProofs%[rowProofs%[h222_0_0_0,h222_0_0_1],rowProofs%[h222_0_1_0,h222_0_1_1],rowProofs%[h222_0_2_0,h222_0_2_1],rowProofs%[h222_0_3_0,h222_0_3_1]],rowProofs%[rowProofs%[h222_1_0_0,h222_1_0_1],rowProofs%[h222_1_1_0,h222_1_1_1],rowProofs%[h222_1_2_0,h222_1_2_1],rowProofs%[h222_1_3_0,h222_1_3_1]],rowProofs%[rowProofs%[h222_2_0_0,h222_2_0_1],rowProofs%[h222_2_1_0,h222_2_1_1],rowProofs%[h222_2_2_0,h222_2_2_1],rowProofs%[h222_2_3_0,h222_2_3_1]],rowProofs%[rowProofs%[h222_3_0_0,h222_3_0_1],rowProofs%[h222_3_1_0,h222_3_1_1],rowProofs%[h222_3_2_0,h222_3_2_1],rowProofs%[h222_3_3_0,h222_3_3_1]]]
end Blc.SelfintSingleObject.Compact45
