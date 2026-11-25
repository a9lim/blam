import Blc.SelfintCompact45.Frames.Frame337R0M2
import Blc.SelfintCompact45.Frames.Frame337R1M2
import Blc.SelfintCompact45.Frames.Frame337R2M0
import Blc.SelfintCompact45.Frames.Frame337R2M1
import Blc.SelfintCompact45.Frames.Frame337R2M2
import Blc.SelfintCompact45.Frames.Frame337R3M0
import Blc.SelfintCompact45.Frames.Frame337R3M1
import Blc.SelfintCompact45.Frames.Frame337R3M2
namespace Blc.SelfintSingleObject.Compact45
open Fast45 SourceRefutations FrameCertificate
set_option maxRecDepth 24000
set_option maxHeartbeats 8000000
set_option Elab.async false
theorem cf337 : FrameCover true true 8 6 3 3 2 4 k337 :=
  by_words idx337 3 1 2 4 0 rfl rfl rfl rfl rfl rowProofs%[rowProofs%[rowProofs%[h337_0_0_0],rowProofs%[h337_0_1_0],rowProofs%[h337_0_2_0]],rowProofs%[rowProofs%[h337_1_0_0],rowProofs%[h337_1_1_0],rowProofs%[h337_1_2_0]],rowProofs%[rowProofs%[h337_2_0_0],rowProofs%[h337_2_1_0],rowProofs%[h337_2_2_0]],rowProofs%[rowProofs%[h337_3_0_0],rowProofs%[h337_3_1_0],rowProofs%[h337_3_2_0]]]
end Blc.SelfintSingleObject.Compact45
