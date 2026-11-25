import Blc.SelfintCompact45.Frames.Frame175R0M4
import Blc.SelfintCompact45.Frames.Frame175R1M4
import Blc.SelfintCompact45.Frames.Frame175R2M0
import Blc.SelfintCompact45.Frames.Frame175R2M1
import Blc.SelfintCompact45.Frames.Frame175R2M2
import Blc.SelfintCompact45.Frames.Frame175R2M3
import Blc.SelfintCompact45.Frames.Frame175R2M4
namespace Blc.SelfintSingleObject.Compact45
open Fast45 SourceRefutations FrameCertificate
set_option maxRecDepth 24000
set_option maxHeartbeats 8000000
set_option Elab.async false
theorem cf175 : FrameCover false false 7 7 5 3 2 4 k175 :=
  by_words idx175 2 0 4 3 2 rfl rfl rfl rfl rfl rowProofs%[rowProofs%[rowProofs%[h175_0_0_0,h175_0_0_1,h175_0_0_2],rowProofs%[h175_0_1_0,h175_0_1_1,h175_0_1_2],rowProofs%[h175_0_2_0,h175_0_2_1,h175_0_2_2],rowProofs%[h175_0_3_0,h175_0_3_1,h175_0_3_2],rowProofs%[h175_0_4_0,h175_0_4_1,h175_0_4_2]],rowProofs%[rowProofs%[h175_1_0_0,h175_1_0_1,h175_1_0_2],rowProofs%[h175_1_1_0,h175_1_1_1,h175_1_1_2],rowProofs%[h175_1_2_0,h175_1_2_1,h175_1_2_2],rowProofs%[h175_1_3_0,h175_1_3_1,h175_1_3_2],rowProofs%[h175_1_4_0,h175_1_4_1,h175_1_4_2]],rowProofs%[rowProofs%[h175_2_0_0,h175_2_0_1,h175_2_0_2],rowProofs%[h175_2_1_0,h175_2_1_1,h175_2_1_2],rowProofs%[h175_2_2_0,h175_2_2_1,h175_2_2_2],rowProofs%[h175_2_3_0,h175_2_3_1,h175_2_3_2],rowProofs%[h175_2_4_0,h175_2_4_1,h175_2_4_2]]]
end Blc.SelfintSingleObject.Compact45
