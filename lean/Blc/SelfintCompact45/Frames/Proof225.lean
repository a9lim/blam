import Blc.SelfintCompact45.Frames.Frame225R0M2
import Blc.SelfintCompact45.Frames.Frame225R1M2
import Blc.SelfintCompact45.Frames.Frame225R2M0
import Blc.SelfintCompact45.Frames.Frame225R2M1
import Blc.SelfintCompact45.Frames.Frame225R2M2
import Blc.SelfintCompact45.Frames.Frame225R3M0
import Blc.SelfintCompact45.Frames.Frame225R3M1
import Blc.SelfintCompact45.Frames.Frame225R3M2
namespace Blc.SelfintSingleObject.Compact45
open Fast45 SourceRefutations FrameCertificate
set_option maxRecDepth 24000
set_option maxHeartbeats 8000000
set_option Elab.async false
theorem cf225 : FrameCover false true 7 7 5 4 3 3 k225 :=
  by_words idx225 3 1 2 4 1 rfl rfl rfl rfl rfl rowProofs%[rowProofs%[rowProofs%[h225_0_0_0,h225_0_0_1],rowProofs%[h225_0_1_0,h225_0_1_1],rowProofs%[h225_0_2_0,h225_0_2_1]],rowProofs%[rowProofs%[h225_1_0_0,h225_1_0_1],rowProofs%[h225_1_1_0,h225_1_1_1],rowProofs%[h225_1_2_0,h225_1_2_1]],rowProofs%[rowProofs%[h225_2_0_0,h225_2_0_1],rowProofs%[h225_2_1_0,h225_2_1_1],rowProofs%[h225_2_2_0,h225_2_2_1]],rowProofs%[rowProofs%[h225_3_0_0,h225_3_0_1],rowProofs%[h225_3_1_0,h225_3_1_1],rowProofs%[h225_3_2_0,h225_3_2_1]]]
end Blc.SelfintSingleObject.Compact45
