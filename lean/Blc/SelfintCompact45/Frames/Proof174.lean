import Blc.SelfintCompact45.Frames.Frame174R0M4
import Blc.SelfintCompact45.Frames.Frame174R1M4
import Blc.SelfintCompact45.Frames.Frame174R2M0
import Blc.SelfintCompact45.Frames.Frame174R2M1
import Blc.SelfintCompact45.Frames.Frame174R2M2
import Blc.SelfintCompact45.Frames.Frame174R2M3
import Blc.SelfintCompact45.Frames.Frame174R2M4
import Blc.SelfintCompact45.Frames.Frame174R3M0
import Blc.SelfintCompact45.Frames.Frame174R3M1
import Blc.SelfintCompact45.Frames.Frame174R3M2
import Blc.SelfintCompact45.Frames.Frame174R3M3
import Blc.SelfintCompact45.Frames.Frame174R3M4
namespace Blc.SelfintSingleObject.Compact45
open Fast45 SourceRefutations FrameCertificate
set_option maxRecDepth 24000
set_option maxHeartbeats 8000000
set_option Elab.async false
theorem cf174 : FrameCover false false 7 7 5 3 2 3 k174 :=
  by_words idx174 3 0 4 4 2 rfl rfl rfl rfl rfl rowProofs%[rowProofs%[rowProofs%[h174_0_0_0,h174_0_0_1,h174_0_0_2],rowProofs%[h174_0_1_0,h174_0_1_1,h174_0_1_2],rowProofs%[h174_0_2_0,h174_0_2_1,h174_0_2_2],rowProofs%[h174_0_3_0,h174_0_3_1,h174_0_3_2],rowProofs%[h174_0_4_0,h174_0_4_1,h174_0_4_2]],rowProofs%[rowProofs%[h174_1_0_0,h174_1_0_1,h174_1_0_2],rowProofs%[h174_1_1_0,h174_1_1_1,h174_1_1_2],rowProofs%[h174_1_2_0,h174_1_2_1,h174_1_2_2],rowProofs%[h174_1_3_0,h174_1_3_1,h174_1_3_2],rowProofs%[h174_1_4_0,h174_1_4_1,h174_1_4_2]],rowProofs%[rowProofs%[h174_2_0_0,h174_2_0_1,h174_2_0_2],rowProofs%[h174_2_1_0,h174_2_1_1,h174_2_1_2],rowProofs%[h174_2_2_0,h174_2_2_1,h174_2_2_2],rowProofs%[h174_2_3_0,h174_2_3_1,h174_2_3_2],rowProofs%[h174_2_4_0,h174_2_4_1,h174_2_4_2]],rowProofs%[rowProofs%[h174_3_0_0,h174_3_0_1,h174_3_0_2],rowProofs%[h174_3_1_0,h174_3_1_1,h174_3_1_2],rowProofs%[h174_3_2_0,h174_3_2_1,h174_3_2_2],rowProofs%[h174_3_3_0,h174_3_3_1,h174_3_3_2],rowProofs%[h174_3_4_0,h174_3_4_1,h174_3_4_2]]]
end Blc.SelfintSingleObject.Compact45
