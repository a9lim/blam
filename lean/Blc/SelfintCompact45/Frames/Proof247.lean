import Blc.SelfintCompact45.Frames.Frame247R0M5
import Blc.SelfintCompact45.Frames.Frame247R1M5
import Blc.SelfintCompact45.Frames.Frame247R2M0
import Blc.SelfintCompact45.Frames.Frame247R2M1
import Blc.SelfintCompact45.Frames.Frame247R2M2
import Blc.SelfintCompact45.Frames.Frame247R2M3
import Blc.SelfintCompact45.Frames.Frame247R2M4
import Blc.SelfintCompact45.Frames.Frame247R2M5
namespace Blc.SelfintSingleObject.Compact45
open Fast45 SourceRefutations FrameCertificate
set_option maxRecDepth 24000
set_option maxHeartbeats 8000000
set_option Elab.async false
theorem cf247 : FrameCover false false 7 8 3 3 2 4 k247 :=
  by_words idx247 2 0 5 3 0 rfl rfl rfl rfl rfl rowProofs%[rowProofs%[rowProofs%[h247_0_0_0],rowProofs%[h247_0_1_0],rowProofs%[h247_0_2_0],rowProofs%[h247_0_3_0],rowProofs%[h247_0_4_0],rowProofs%[h247_0_5_0]],rowProofs%[rowProofs%[h247_1_0_0],rowProofs%[h247_1_1_0],rowProofs%[h247_1_2_0],rowProofs%[h247_1_3_0],rowProofs%[h247_1_4_0],rowProofs%[h247_1_5_0]],rowProofs%[rowProofs%[h247_2_0_0],rowProofs%[h247_2_1_0],rowProofs%[h247_2_2_0],rowProofs%[h247_2_3_0],rowProofs%[h247_2_4_0],rowProofs%[h247_2_5_0]]]
end Blc.SelfintSingleObject.Compact45
