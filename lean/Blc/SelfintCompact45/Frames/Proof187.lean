import Blc.SelfintCompact45.Frames.Frame187R0M4
import Blc.SelfintCompact45.Frames.Frame187R1M4
import Blc.SelfintCompact45.Frames.Frame187R2M0
import Blc.SelfintCompact45.Frames.Frame187R2M1
import Blc.SelfintCompact45.Frames.Frame187R2M2
import Blc.SelfintCompact45.Frames.Frame187R2M3
import Blc.SelfintCompact45.Frames.Frame187R2M4
namespace Blc.SelfintSingleObject.Compact45
open Fast45 SourceRefutations FrameCertificate
set_option maxRecDepth 24000
set_option maxHeartbeats 8000000
set_option Elab.async false
theorem cf187 : FrameCover false false 7 7 5 4 2 4 k187 :=
  by_words idx187 2 0 4 3 1 rfl rfl rfl rfl rfl rowProofs%[rowProofs%[rowProofs%[h187_0_0_0,h187_0_0_1],rowProofs%[h187_0_1_0,h187_0_1_1],rowProofs%[h187_0_2_0,h187_0_2_1],rowProofs%[h187_0_3_0,h187_0_3_1],rowProofs%[h187_0_4_0,h187_0_4_1]],rowProofs%[rowProofs%[h187_1_0_0,h187_1_0_1],rowProofs%[h187_1_1_0,h187_1_1_1],rowProofs%[h187_1_2_0,h187_1_2_1],rowProofs%[h187_1_3_0,h187_1_3_1],rowProofs%[h187_1_4_0,h187_1_4_1]],rowProofs%[rowProofs%[h187_2_0_0,h187_2_0_1],rowProofs%[h187_2_1_0,h187_2_1_1],rowProofs%[h187_2_2_0,h187_2_2_1],rowProofs%[h187_2_3_0,h187_2_3_1],rowProofs%[h187_2_4_0,h187_2_4_1]]]
end Blc.SelfintSingleObject.Compact45
