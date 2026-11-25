import Blc.SelfintCompact45.Frames.Frame111R0M3
import Blc.SelfintCompact45.Frames.Frame111R1M3
import Blc.SelfintCompact45.Frames.Frame111R2M0
import Blc.SelfintCompact45.Frames.Frame111R2M1
import Blc.SelfintCompact45.Frames.Frame111R2M2
import Blc.SelfintCompact45.Frames.Frame111R2M3
import Blc.SelfintCompact45.Frames.Frame111R3M0
import Blc.SelfintCompact45.Frames.Frame111R3M1
import Blc.SelfintCompact45.Frames.Frame111R3M2
import Blc.SelfintCompact45.Frames.Frame111R3M3
namespace Blc.SelfintSingleObject.Compact45
open Fast45 SourceRefutations FrameCertificate
set_option maxRecDepth 24000
set_option maxHeartbeats 8000000
set_option Elab.async false
theorem cf111 : FrameCover false false 7 6 7 6 2 3 k111 :=
  by_words idx111 3 0 3 4 1 rfl rfl rfl rfl rfl rowProofs%[rowProofs%[rowProofs%[h111_0_0_0,h111_0_0_1],rowProofs%[h111_0_1_0,h111_0_1_1],rowProofs%[h111_0_2_0,h111_0_2_1],rowProofs%[h111_0_3_0,h111_0_3_1]],rowProofs%[rowProofs%[h111_1_0_0,h111_1_0_1],rowProofs%[h111_1_1_0,h111_1_1_1],rowProofs%[h111_1_2_0,h111_1_2_1],rowProofs%[h111_1_3_0,h111_1_3_1]],rowProofs%[rowProofs%[h111_2_0_0,h111_2_0_1],rowProofs%[h111_2_1_0,h111_2_1_1],rowProofs%[h111_2_2_0,h111_2_2_1],rowProofs%[h111_2_3_0,h111_2_3_1]],rowProofs%[rowProofs%[h111_3_0_0,h111_3_0_1],rowProofs%[h111_3_1_0,h111_3_1_1],rowProofs%[h111_3_2_0,h111_3_2_1],rowProofs%[h111_3_3_0,h111_3_3_1]]]
end Blc.SelfintSingleObject.Compact45
