import Blc.SelfintCompact45.Frames.Frame267R0M2
import Blc.SelfintCompact45.Frames.Frame267R1M2
import Blc.SelfintCompact45.Frames.Frame267R2M0
import Blc.SelfintCompact45.Frames.Frame267R2M1
import Blc.SelfintCompact45.Frames.Frame267R2M2
import Blc.SelfintCompact45.Frames.Frame267R3M0
import Blc.SelfintCompact45.Frames.Frame267R3M1
import Blc.SelfintCompact45.Frames.Frame267R3M2
namespace Blc.SelfintSingleObject.Compact45
open Fast45 SourceRefutations FrameCertificate
set_option maxRecDepth 24000
set_option maxHeartbeats 8000000
set_option Elab.async false
theorem cf267 : FrameCover false true 7 8 3 3 4 3 k267 :=
  by_words idx267 3 1 2 4 0 rfl rfl rfl rfl rfl rowProofs%[rowProofs%[rowProofs%[h267_0_0_0],rowProofs%[h267_0_1_0],rowProofs%[h267_0_2_0]],rowProofs%[rowProofs%[h267_1_0_0],rowProofs%[h267_1_1_0],rowProofs%[h267_1_2_0]],rowProofs%[rowProofs%[h267_2_0_0],rowProofs%[h267_2_1_0],rowProofs%[h267_2_2_0]],rowProofs%[rowProofs%[h267_3_0_0],rowProofs%[h267_3_1_0],rowProofs%[h267_3_2_0]]]
end Blc.SelfintSingleObject.Compact45
