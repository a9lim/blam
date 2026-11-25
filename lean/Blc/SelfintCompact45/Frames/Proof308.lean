import Blc.SelfintCompact45.Frames.Frame308R0M1
import Blc.SelfintCompact45.Frames.Frame308R1M1
import Blc.SelfintCompact45.Frames.Frame308R2M0
import Blc.SelfintCompact45.Frames.Frame308R2M1
import Blc.SelfintCompact45.Frames.Frame308R3M0
import Blc.SelfintCompact45.Frames.Frame308R3M1
import Blc.SelfintCompact45.Frames.Frame308R4M0
import Blc.SelfintCompact45.Frames.Frame308R4M1
namespace Blc.SelfintSingleObject.Compact45
open Fast45 SourceRefutations FrameCertificate
set_option maxRecDepth 24000
set_option maxHeartbeats 8000000
set_option Elab.async false
theorem cf308 : FrameCover false true 8 5 5 4 2 3 k308 :=
  by_words idx308 4 1 1 5 1 rfl rfl rfl rfl rfl rowProofs%[rowProofs%[rowProofs%[h308_0_0_0,h308_0_0_1],rowProofs%[h308_0_1_0,h308_0_1_1]],rowProofs%[rowProofs%[h308_1_0_0,h308_1_0_1],rowProofs%[h308_1_1_0,h308_1_1_1]],rowProofs%[rowProofs%[h308_2_0_0,h308_2_0_1],rowProofs%[h308_2_1_0,h308_2_1_1]],rowProofs%[rowProofs%[h308_3_0_0,h308_3_0_1],rowProofs%[h308_3_1_0,h308_3_1_1]],rowProofs%[rowProofs%[h308_4_0_0,h308_4_0_1],rowProofs%[h308_4_1_0,h308_4_1_1]]]
end Blc.SelfintSingleObject.Compact45
