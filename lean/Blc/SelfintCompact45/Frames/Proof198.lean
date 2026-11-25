import Blc.SelfintCompact45.Frames.Frame198R0M4
import Blc.SelfintCompact45.Frames.Frame198R1M4
import Blc.SelfintCompact45.Frames.Frame198R2M0
import Blc.SelfintCompact45.Frames.Frame198R2M1
import Blc.SelfintCompact45.Frames.Frame198R2M2
import Blc.SelfintCompact45.Frames.Frame198R2M3
import Blc.SelfintCompact45.Frames.Frame198R2M4
import Blc.SelfintCompact45.Frames.Frame198R3M0
import Blc.SelfintCompact45.Frames.Frame198R3M1
import Blc.SelfintCompact45.Frames.Frame198R3M2
import Blc.SelfintCompact45.Frames.Frame198R3M3
import Blc.SelfintCompact45.Frames.Frame198R3M4
namespace Blc.SelfintSingleObject.Compact45
open Fast45 SourceRefutations FrameCertificate
set_option maxRecDepth 24000
set_option maxHeartbeats 8000000
set_option Elab.async false
theorem cf198 : FrameCover false false 7 7 5 5 2 3 k198 :=
  by_words idx198 3 0 4 4 0 rfl rfl rfl rfl rfl rowProofs%[rowProofs%[rowProofs%[h198_0_0_0],rowProofs%[h198_0_1_0],rowProofs%[h198_0_2_0],rowProofs%[h198_0_3_0],rowProofs%[h198_0_4_0]],rowProofs%[rowProofs%[h198_1_0_0],rowProofs%[h198_1_1_0],rowProofs%[h198_1_2_0],rowProofs%[h198_1_3_0],rowProofs%[h198_1_4_0]],rowProofs%[rowProofs%[h198_2_0_0],rowProofs%[h198_2_1_0],rowProofs%[h198_2_2_0],rowProofs%[h198_2_3_0],rowProofs%[h198_2_4_0]],rowProofs%[rowProofs%[h198_3_0_0],rowProofs%[h198_3_1_0],rowProofs%[h198_3_2_0],rowProofs%[h198_3_3_0],rowProofs%[h198_3_4_0]]]
end Blc.SelfintSingleObject.Compact45
