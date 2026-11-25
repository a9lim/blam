import Blc.SelfintCompact45.Frames.Frame234R0M3
import Blc.SelfintCompact45.Frames.Frame234R1M3
import Blc.SelfintCompact45.Frames.Frame234R2M0
import Blc.SelfintCompact45.Frames.Frame234R2M1
import Blc.SelfintCompact45.Frames.Frame234R2M2
import Blc.SelfintCompact45.Frames.Frame234R2M3
import Blc.SelfintCompact45.Frames.Frame234R3M0
import Blc.SelfintCompact45.Frames.Frame234R3M1
import Blc.SelfintCompact45.Frames.Frame234R3M2
import Blc.SelfintCompact45.Frames.Frame234R3M3
namespace Blc.SelfintSingleObject.Compact45
open Fast45 SourceRefutations FrameCertificate
set_option maxRecDepth 24000
set_option maxHeartbeats 8000000
set_option Elab.async false
theorem cf234 : FrameCover false true 7 7 5 5 2 3 k234 :=
  by_words idx234 3 1 3 4 0 rfl rfl rfl rfl rfl rowProofs%[rowProofs%[rowProofs%[h234_0_0_0],rowProofs%[h234_0_1_0],rowProofs%[h234_0_2_0],rowProofs%[h234_0_3_0]],rowProofs%[rowProofs%[h234_1_0_0],rowProofs%[h234_1_1_0],rowProofs%[h234_1_2_0],rowProofs%[h234_1_3_0]],rowProofs%[rowProofs%[h234_2_0_0],rowProofs%[h234_2_1_0],rowProofs%[h234_2_2_0],rowProofs%[h234_2_3_0]],rowProofs%[rowProofs%[h234_3_0_0],rowProofs%[h234_3_1_0],rowProofs%[h234_3_2_0],rowProofs%[h234_3_3_0]]]
end Blc.SelfintSingleObject.Compact45
