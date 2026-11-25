import Blc.SelfintCompact45.Frames.Frame246R0M5
import Blc.SelfintCompact45.Frames.Frame246R1M5
import Blc.SelfintCompact45.Frames.Frame246R2M0
import Blc.SelfintCompact45.Frames.Frame246R2M1
import Blc.SelfintCompact45.Frames.Frame246R2M2
import Blc.SelfintCompact45.Frames.Frame246R2M3
import Blc.SelfintCompact45.Frames.Frame246R2M4
import Blc.SelfintCompact45.Frames.Frame246R2M5
import Blc.SelfintCompact45.Frames.Frame246R3M0
import Blc.SelfintCompact45.Frames.Frame246R3M1
import Blc.SelfintCompact45.Frames.Frame246R3M2
import Blc.SelfintCompact45.Frames.Frame246R3M3
import Blc.SelfintCompact45.Frames.Frame246R3M4
import Blc.SelfintCompact45.Frames.Frame246R3M5
namespace Blc.SelfintSingleObject.Compact45
open Fast45 SourceRefutations FrameCertificate
set_option maxRecDepth 24000
set_option maxHeartbeats 8000000
set_option Elab.async false
theorem cf246 : FrameCover false false 7 8 3 3 2 3 k246 :=
  by_words idx246 3 0 5 4 0 rfl rfl rfl rfl rfl rowProofs%[rowProofs%[rowProofs%[h246_0_0_0],rowProofs%[h246_0_1_0],rowProofs%[h246_0_2_0],rowProofs%[h246_0_3_0],rowProofs%[h246_0_4_0],rowProofs%[h246_0_5_0]],rowProofs%[rowProofs%[h246_1_0_0],rowProofs%[h246_1_1_0],rowProofs%[h246_1_2_0],rowProofs%[h246_1_3_0],rowProofs%[h246_1_4_0],rowProofs%[h246_1_5_0]],rowProofs%[rowProofs%[h246_2_0_0],rowProofs%[h246_2_1_0],rowProofs%[h246_2_2_0],rowProofs%[h246_2_3_0],rowProofs%[h246_2_4_0],rowProofs%[h246_2_5_0]],rowProofs%[rowProofs%[h246_3_0_0],rowProofs%[h246_3_1_0],rowProofs%[h246_3_2_0],rowProofs%[h246_3_3_0],rowProofs%[h246_3_4_0],rowProofs%[h246_3_5_0]]]
end Blc.SelfintSingleObject.Compact45
