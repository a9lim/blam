import Blc.SelfintCompact45.Frames.Frame211R0M3
import Blc.SelfintCompact45.Frames.Frame211R1M3
import Blc.SelfintCompact45.Frames.Frame211R2M0
import Blc.SelfintCompact45.Frames.Frame211R2M1
import Blc.SelfintCompact45.Frames.Frame211R2M2
import Blc.SelfintCompact45.Frames.Frame211R2M3
namespace Blc.SelfintSingleObject.Compact45
open Fast45 SourceRefutations FrameCertificate
set_option maxRecDepth 24000
set_option maxHeartbeats 8000000
set_option Elab.async false
theorem cf211 : FrameCover false true 7 7 5 3 2 4 k211 :=
  by_words idx211 2 1 3 3 2 rfl rfl rfl rfl rfl rowProofs%[rowProofs%[rowProofs%[h211_0_0_0,h211_0_0_1,h211_0_0_2],rowProofs%[h211_0_1_0,h211_0_1_1,h211_0_1_2],rowProofs%[h211_0_2_0,h211_0_2_1,h211_0_2_2],rowProofs%[h211_0_3_0,h211_0_3_1,h211_0_3_2]],rowProofs%[rowProofs%[h211_1_0_0,h211_1_0_1,h211_1_0_2],rowProofs%[h211_1_1_0,h211_1_1_1,h211_1_1_2],rowProofs%[h211_1_2_0,h211_1_2_1,h211_1_2_2],rowProofs%[h211_1_3_0,h211_1_3_1,h211_1_3_2]],rowProofs%[rowProofs%[h211_2_0_0,h211_2_0_1,h211_2_0_2],rowProofs%[h211_2_1_0,h211_2_1_1,h211_2_1_2],rowProofs%[h211_2_2_0,h211_2_2_1,h211_2_2_2],rowProofs%[h211_2_3_0,h211_2_3_1,h211_2_3_2]]]
end Blc.SelfintSingleObject.Compact45
