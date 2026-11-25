import Blc.SelfintCompact45.Frames.Frame156R0M2
import Blc.SelfintCompact45.Frames.Frame156R1M2
import Blc.SelfintCompact45.Frames.Frame156R2M0
import Blc.SelfintCompact45.Frames.Frame156R2M1
import Blc.SelfintCompact45.Frames.Frame156R2M2
import Blc.SelfintCompact45.Frames.Frame156R3M0
import Blc.SelfintCompact45.Frames.Frame156R3M1
import Blc.SelfintCompact45.Frames.Frame156R3M2
namespace Blc.SelfintSingleObject.Compact45
open Fast45 SourceRefutations FrameCertificate
set_option maxRecDepth 24000
set_option maxHeartbeats 8000000
set_option Elab.async false
theorem cf156 : FrameCover false true 7 6 7 6 2 3 k156 :=
  by_words idx156 3 1 2 4 1 rfl rfl rfl rfl rfl rowProofs%[rowProofs%[rowProofs%[h156_0_0_0,h156_0_0_1],rowProofs%[h156_0_1_0,h156_0_1_1],rowProofs%[h156_0_2_0,h156_0_2_1]],rowProofs%[rowProofs%[h156_1_0_0,h156_1_0_1],rowProofs%[h156_1_1_0,h156_1_1_1],rowProofs%[h156_1_2_0,h156_1_2_1]],rowProofs%[rowProofs%[h156_2_0_0,h156_2_0_1],rowProofs%[h156_2_1_0,h156_2_1_1],rowProofs%[h156_2_2_0,h156_2_2_1]],rowProofs%[rowProofs%[h156_3_0_0,h156_3_0_1],rowProofs%[h156_3_1_0,h156_3_1_1],rowProofs%[h156_3_2_0,h156_3_2_1]]]
end Blc.SelfintSingleObject.Compact45
