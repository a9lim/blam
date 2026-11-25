import Blc.SelfintCompact45.Frames.Frame252R0M3
import Blc.SelfintCompact45.Frames.Frame252R1M3
import Blc.SelfintCompact45.Frames.Frame252R2M0
import Blc.SelfintCompact45.Frames.Frame252R2M1
import Blc.SelfintCompact45.Frames.Frame252R2M2
import Blc.SelfintCompact45.Frames.Frame252R2M3
import Blc.SelfintCompact45.Frames.Frame252R3M0
import Blc.SelfintCompact45.Frames.Frame252R3M1
import Blc.SelfintCompact45.Frames.Frame252R3M2
import Blc.SelfintCompact45.Frames.Frame252R3M3
namespace Blc.SelfintSingleObject.Compact45
open Fast45 SourceRefutations FrameCertificate
set_option maxRecDepth 24000
set_option maxHeartbeats 8000000
set_option Elab.async false
theorem cf252 : FrameCover false false 7 8 3 3 4 3 k252 :=
  by_words idx252 3 0 3 4 0 rfl rfl rfl rfl rfl rowProofs%[rowProofs%[rowProofs%[h252_0_0_0],rowProofs%[h252_0_1_0],rowProofs%[h252_0_2_0],rowProofs%[h252_0_3_0]],rowProofs%[rowProofs%[h252_1_0_0],rowProofs%[h252_1_1_0],rowProofs%[h252_1_2_0],rowProofs%[h252_1_3_0]],rowProofs%[rowProofs%[h252_2_0_0],rowProofs%[h252_2_1_0],rowProofs%[h252_2_2_0],rowProofs%[h252_2_3_0]],rowProofs%[rowProofs%[h252_3_0_0],rowProofs%[h252_3_1_0],rowProofs%[h252_3_2_0],rowProofs%[h252_3_3_0]]]
end Blc.SelfintSingleObject.Compact45
