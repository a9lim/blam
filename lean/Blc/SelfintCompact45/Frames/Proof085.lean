import Blc.SelfintCompact45.Frames.Frame085R0M3
import Blc.SelfintCompact45.Frames.Frame085R1M3
import Blc.SelfintCompact45.Frames.Frame085R2M0
import Blc.SelfintCompact45.Frames.Frame085R2M1
import Blc.SelfintCompact45.Frames.Frame085R2M2
import Blc.SelfintCompact45.Frames.Frame085R2M3
namespace Blc.SelfintSingleObject.Compact45
open Fast45 SourceRefutations FrameCertificate
set_option maxRecDepth 24000
set_option maxHeartbeats 8000000
set_option Elab.async false
theorem cf85 : FrameCover false false 7 6 7 3 2 4 k85 :=
  by_words idx85 2 0 3 3 4 rfl rfl rfl rfl rfl rowProofs%[rowProofs%[rowProofs%[h85_0_0_0,h85_0_0_1,h85_0_0_2,h85_0_0_3,h85_0_0_4],rowProofs%[h85_0_1_0,h85_0_1_1,h85_0_1_2,h85_0_1_3,h85_0_1_4],rowProofs%[h85_0_2_0,h85_0_2_1,h85_0_2_2,h85_0_2_3,h85_0_2_4],rowProofs%[h85_0_3_0,h85_0_3_1,h85_0_3_2,h85_0_3_3,h85_0_3_4]],rowProofs%[rowProofs%[h85_1_0_0,h85_1_0_1,h85_1_0_2,h85_1_0_3,h85_1_0_4],rowProofs%[h85_1_1_0,h85_1_1_1,h85_1_1_2,h85_1_1_3,h85_1_1_4],rowProofs%[h85_1_2_0,h85_1_2_1,h85_1_2_2,h85_1_2_3,h85_1_2_4],rowProofs%[h85_1_3_0,h85_1_3_1,h85_1_3_2,h85_1_3_3,h85_1_3_4]],rowProofs%[rowProofs%[h85_2_0_0,h85_2_0_1,h85_2_0_2,h85_2_0_3,h85_2_0_4],rowProofs%[h85_2_1_0,h85_2_1_1,h85_2_1_2,h85_2_1_3,h85_2_1_4],rowProofs%[h85_2_2_0,h85_2_2_1,h85_2_2_2,h85_2_2_3,h85_2_2_4],rowProofs%[h85_2_3_0,h85_2_3_1,h85_2_3_2,h85_2_3_3,h85_2_3_4]]]
end Blc.SelfintSingleObject.Compact45
