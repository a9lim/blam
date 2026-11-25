import Blc.SelfintCompact45.Frames.Frame129R0M2
import Blc.SelfintCompact45.Frames.Frame129R1M2
import Blc.SelfintCompact45.Frames.Frame129R2M0
import Blc.SelfintCompact45.Frames.Frame129R2M1
import Blc.SelfintCompact45.Frames.Frame129R2M2
import Blc.SelfintCompact45.Frames.Frame129R3M0
import Blc.SelfintCompact45.Frames.Frame129R3M1
import Blc.SelfintCompact45.Frames.Frame129R3M2
namespace Blc.SelfintSingleObject.Compact45
open Fast45 SourceRefutations FrameCertificate
set_option maxRecDepth 24000
set_option maxHeartbeats 8000000
set_option Elab.async false
theorem cf129 : FrameCover false true 7 6 7 3 2 3 k129 :=
  by_words idx129 3 1 2 4 4 rfl rfl rfl rfl rfl rowProofs%[rowProofs%[rowProofs%[h129_0_0_0,h129_0_0_1,h129_0_0_2,h129_0_0_3,h129_0_0_4],rowProofs%[h129_0_1_0,h129_0_1_1,h129_0_1_2,h129_0_1_3,h129_0_1_4],rowProofs%[h129_0_2_0,h129_0_2_1,h129_0_2_2,h129_0_2_3,h129_0_2_4]],rowProofs%[rowProofs%[h129_1_0_0,h129_1_0_1,h129_1_0_2,h129_1_0_3,h129_1_0_4],rowProofs%[h129_1_1_0,h129_1_1_1,h129_1_1_2,h129_1_1_3,h129_1_1_4],rowProofs%[h129_1_2_0,h129_1_2_1,h129_1_2_2,h129_1_2_3,h129_1_2_4]],rowProofs%[rowProofs%[h129_2_0_0,h129_2_0_1,h129_2_0_2,h129_2_0_3,h129_2_0_4],rowProofs%[h129_2_1_0,h129_2_1_1,h129_2_1_2,h129_2_1_3,h129_2_1_4],rowProofs%[h129_2_2_0,h129_2_2_1,h129_2_2_2,h129_2_2_3,h129_2_2_4]],rowProofs%[rowProofs%[h129_3_0_0,h129_3_0_1,h129_3_0_2,h129_3_0_3,h129_3_0_4],rowProofs%[h129_3_1_0,h129_3_1_1,h129_3_1_2,h129_3_1_3,h129_3_1_4],rowProofs%[h129_3_2_0,h129_3_2_1,h129_3_2_2,h129_3_2_3,h129_3_2_4]]]
end Blc.SelfintSingleObject.Compact45
