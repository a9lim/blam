import Blc.SelfintCompact45.Frames.Frame328R0M2
import Blc.SelfintCompact45.Frames.Frame328R1M2
import Blc.SelfintCompact45.Frames.Frame328R2M0
import Blc.SelfintCompact45.Frames.Frame328R2M1
import Blc.SelfintCompact45.Frames.Frame328R2M2
import Blc.SelfintCompact45.Frames.Frame328R3M0
import Blc.SelfintCompact45.Frames.Frame328R3M1
import Blc.SelfintCompact45.Frames.Frame328R3M2
import Blc.SelfintCompact45.Frames.Frame328R4M0
import Blc.SelfintCompact45.Frames.Frame328R4M1
import Blc.SelfintCompact45.Frames.Frame328R4M2
namespace Blc.SelfintSingleObject.Compact45
open Fast45 SourceRefutations FrameCertificate
set_option maxRecDepth 24000
set_option maxHeartbeats 8000000
set_option Elab.async false
theorem cf328 : FrameCover true false 8 6 3 3 3 3 k328 :=
  by_words idx328 4 0 2 5 0 rfl rfl rfl rfl rfl rowProofs%[rowProofs%[rowProofs%[h328_0_0_0],rowProofs%[h328_0_1_0],rowProofs%[h328_0_2_0]],rowProofs%[rowProofs%[h328_1_0_0],rowProofs%[h328_1_1_0],rowProofs%[h328_1_2_0]],rowProofs%[rowProofs%[h328_2_0_0],rowProofs%[h328_2_1_0],rowProofs%[h328_2_2_0]],rowProofs%[rowProofs%[h328_3_0_0],rowProofs%[h328_3_1_0],rowProofs%[h328_3_2_0]],rowProofs%[rowProofs%[h328_4_0_0],rowProofs%[h328_4_1_0],rowProofs%[h328_4_2_0]]]
end Blc.SelfintSingleObject.Compact45
