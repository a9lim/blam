import Blc.SelfintCompact45.Frames.Frame006R0M2
import Blc.SelfintCompact45.Frames.Frame006R1M2
import Blc.SelfintCompact45.Frames.Frame006R2M0
import Blc.SelfintCompact45.Frames.Frame006R2M1
import Blc.SelfintCompact45.Frames.Frame006R2M2
import Blc.SelfintCompact45.Frames.Frame006R3M0
import Blc.SelfintCompact45.Frames.Frame006R3M1
import Blc.SelfintCompact45.Frames.Frame006R3M2
namespace Blc.SelfintSingleObject.Compact45
open Fast45 SourceRefutations FrameCertificate
set_option maxRecDepth 24000
set_option maxHeartbeats 8000000
set_option Elab.async false
theorem cf6 : FrameCover false false 7 5 9 4 2 3 k6 :=
  by_words idx6 3 0 2 4 5 rfl rfl rfl rfl rfl rowProofs%[rowProofs%[rowProofs%[h6_0_0_0,h6_0_0_1,h6_0_0_2,h6_0_0_3,h6_0_0_4,h6_0_0_5],rowProofs%[h6_0_1_0,h6_0_1_1,h6_0_1_2,h6_0_1_3,h6_0_1_4,h6_0_1_5],rowProofs%[h6_0_2_0,h6_0_2_1,h6_0_2_2,h6_0_2_3,h6_0_2_4,h6_0_2_5]],rowProofs%[rowProofs%[h6_1_0_0,h6_1_0_1,h6_1_0_2,h6_1_0_3,h6_1_0_4,h6_1_0_5],rowProofs%[h6_1_1_0,h6_1_1_1,h6_1_1_2,h6_1_1_3,h6_1_1_4,h6_1_1_5],rowProofs%[h6_1_2_0,h6_1_2_1,h6_1_2_2,h6_1_2_3,h6_1_2_4,h6_1_2_5]],rowProofs%[rowProofs%[h6_2_0_0,h6_2_0_1,h6_2_0_2,h6_2_0_3,h6_2_0_4,h6_2_0_5],rowProofs%[h6_2_1_0,h6_2_1_1,h6_2_1_2,h6_2_1_3,h6_2_1_4,h6_2_1_5],rowProofs%[h6_2_2_0,h6_2_2_1,h6_2_2_2,h6_2_2_3,h6_2_2_4,h6_2_2_5]],rowProofs%[rowProofs%[h6_3_0_0,h6_3_0_1,h6_3_0_2,h6_3_0_3,h6_3_0_4,h6_3_0_5],rowProofs%[h6_3_1_0,h6_3_1_1,h6_3_1_2,h6_3_1_3,h6_3_1_4,h6_3_1_5],rowProofs%[h6_3_2_0,h6_3_2_1,h6_3_2_2,h6_3_2_3,h6_3_2_4,h6_3_2_5]]]
end Blc.SelfintSingleObject.Compact45
