import Blc.SelfintCompact45.Frames.Frame177R0M3
import Blc.SelfintCompact45.Frames.Frame177R1M3
import Blc.SelfintCompact45.Frames.Frame177R2M0
import Blc.SelfintCompact45.Frames.Frame177R2M1
import Blc.SelfintCompact45.Frames.Frame177R2M2
import Blc.SelfintCompact45.Frames.Frame177R2M3
import Blc.SelfintCompact45.Frames.Frame177R3M0
import Blc.SelfintCompact45.Frames.Frame177R3M1
import Blc.SelfintCompact45.Frames.Frame177R3M2
import Blc.SelfintCompact45.Frames.Frame177R3M3
namespace Blc.SelfintSingleObject.Compact45
open Fast45 SourceRefutations FrameCertificate
set_option maxRecDepth 24000
set_option maxHeartbeats 8000000
set_option Elab.async false
theorem cf177 : FrameCover false false 7 7 5 3 3 3 k177 :=
  by_words idx177 3 0 3 4 2 rfl rfl rfl rfl rfl rowProofs%[rowProofs%[rowProofs%[h177_0_0_0,h177_0_0_1,h177_0_0_2],rowProofs%[h177_0_1_0,h177_0_1_1,h177_0_1_2],rowProofs%[h177_0_2_0,h177_0_2_1,h177_0_2_2],rowProofs%[h177_0_3_0,h177_0_3_1,h177_0_3_2]],rowProofs%[rowProofs%[h177_1_0_0,h177_1_0_1,h177_1_0_2],rowProofs%[h177_1_1_0,h177_1_1_1,h177_1_1_2],rowProofs%[h177_1_2_0,h177_1_2_1,h177_1_2_2],rowProofs%[h177_1_3_0,h177_1_3_1,h177_1_3_2]],rowProofs%[rowProofs%[h177_2_0_0,h177_2_0_1,h177_2_0_2],rowProofs%[h177_2_1_0,h177_2_1_1,h177_2_1_2],rowProofs%[h177_2_2_0,h177_2_2_1,h177_2_2_2],rowProofs%[h177_2_3_0,h177_2_3_1,h177_2_3_2]],rowProofs%[rowProofs%[h177_3_0_0,h177_3_0_1,h177_3_0_2],rowProofs%[h177_3_1_0,h177_3_1_1,h177_3_1_2],rowProofs%[h177_3_2_0,h177_3_2_1,h177_3_2_2],rowProofs%[h177_3_3_0,h177_3_3_1,h177_3_3_2]]]
end Blc.SelfintSingleObject.Compact45
