import Blc.SelfintCompact45.Frames.Frame261R0M4
import Blc.SelfintCompact45.Frames.Frame261R1M4
import Blc.SelfintCompact45.Frames.Frame261R2M0
import Blc.SelfintCompact45.Frames.Frame261R2M1
import Blc.SelfintCompact45.Frames.Frame261R2M2
import Blc.SelfintCompact45.Frames.Frame261R2M3
import Blc.SelfintCompact45.Frames.Frame261R2M4
import Blc.SelfintCompact45.Frames.Frame261R3M0
import Blc.SelfintCompact45.Frames.Frame261R3M1
import Blc.SelfintCompact45.Frames.Frame261R3M2
import Blc.SelfintCompact45.Frames.Frame261R3M3
import Blc.SelfintCompact45.Frames.Frame261R3M4
namespace Blc.SelfintSingleObject.Compact45
open Fast45 SourceRefutations FrameCertificate
set_option maxRecDepth 24000
set_option maxHeartbeats 8000000
set_option Elab.async false
theorem cf261 : FrameCover false true 7 8 3 3 2 3 k261 :=
  by_words idx261 3 1 4 4 0 rfl rfl rfl rfl rfl rowProofs%[rowProofs%[rowProofs%[h261_0_0_0],rowProofs%[h261_0_1_0],rowProofs%[h261_0_2_0],rowProofs%[h261_0_3_0],rowProofs%[h261_0_4_0]],rowProofs%[rowProofs%[h261_1_0_0],rowProofs%[h261_1_1_0],rowProofs%[h261_1_2_0],rowProofs%[h261_1_3_0],rowProofs%[h261_1_4_0]],rowProofs%[rowProofs%[h261_2_0_0],rowProofs%[h261_2_1_0],rowProofs%[h261_2_2_0],rowProofs%[h261_2_3_0],rowProofs%[h261_2_4_0]],rowProofs%[rowProofs%[h261_3_0_0],rowProofs%[h261_3_1_0],rowProofs%[h261_3_2_0],rowProofs%[h261_3_3_0],rowProofs%[h261_3_4_0]]]
end Blc.SelfintSingleObject.Compact45
