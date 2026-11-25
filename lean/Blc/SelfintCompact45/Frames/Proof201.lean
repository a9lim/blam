import Blc.SelfintCompact45.Frames.Frame201R0M3
import Blc.SelfintCompact45.Frames.Frame201R1M3
import Blc.SelfintCompact45.Frames.Frame201R2M0
import Blc.SelfintCompact45.Frames.Frame201R2M1
import Blc.SelfintCompact45.Frames.Frame201R2M2
import Blc.SelfintCompact45.Frames.Frame201R2M3
import Blc.SelfintCompact45.Frames.Frame201R3M0
import Blc.SelfintCompact45.Frames.Frame201R3M1
import Blc.SelfintCompact45.Frames.Frame201R3M2
import Blc.SelfintCompact45.Frames.Frame201R3M3
namespace Blc.SelfintSingleObject.Compact45
open Fast45 SourceRefutations FrameCertificate
set_option maxRecDepth 24000
set_option maxHeartbeats 8000000
set_option Elab.async false
theorem cf201 : FrameCover false false 7 7 5 5 3 3 k201 :=
  by_words idx201 3 0 3 4 0 rfl rfl rfl rfl rfl rowProofs%[rowProofs%[rowProofs%[h201_0_0_0],rowProofs%[h201_0_1_0],rowProofs%[h201_0_2_0],rowProofs%[h201_0_3_0]],rowProofs%[rowProofs%[h201_1_0_0],rowProofs%[h201_1_1_0],rowProofs%[h201_1_2_0],rowProofs%[h201_1_3_0]],rowProofs%[rowProofs%[h201_2_0_0],rowProofs%[h201_2_1_0],rowProofs%[h201_2_2_0],rowProofs%[h201_2_3_0]],rowProofs%[rowProofs%[h201_3_0_0],rowProofs%[h201_3_1_0],rowProofs%[h201_3_2_0],rowProofs%[h201_3_3_0]]]
end Blc.SelfintSingleObject.Compact45
