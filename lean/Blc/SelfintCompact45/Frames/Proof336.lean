import Blc.SelfintCompact45.Frames.Frame336R0M2
import Blc.SelfintCompact45.Frames.Frame336R1M2
import Blc.SelfintCompact45.Frames.Frame336R2M0
import Blc.SelfintCompact45.Frames.Frame336R2M1
import Blc.SelfintCompact45.Frames.Frame336R2M2
import Blc.SelfintCompact45.Frames.Frame336R3M0
import Blc.SelfintCompact45.Frames.Frame336R3M1
import Blc.SelfintCompact45.Frames.Frame336R3M2
import Blc.SelfintCompact45.Frames.Frame336R4M0
import Blc.SelfintCompact45.Frames.Frame336R4M1
import Blc.SelfintCompact45.Frames.Frame336R4M2
namespace Blc.SelfintSingleObject.Compact45
open Fast45 SourceRefutations FrameCertificate
set_option maxRecDepth 24000
set_option maxHeartbeats 8000000
set_option Elab.async false
theorem cf336 : FrameCover true true 8 6 3 3 2 3 k336 :=
  by_words idx336 4 1 2 5 0 rfl rfl rfl rfl rfl rowProofs%[rowProofs%[rowProofs%[h336_0_0_0],rowProofs%[h336_0_1_0],rowProofs%[h336_0_2_0]],rowProofs%[rowProofs%[h336_1_0_0],rowProofs%[h336_1_1_0],rowProofs%[h336_1_2_0]],rowProofs%[rowProofs%[h336_2_0_0],rowProofs%[h336_2_1_0],rowProofs%[h336_2_2_0]],rowProofs%[rowProofs%[h336_3_0_0],rowProofs%[h336_3_1_0],rowProofs%[h336_3_2_0]],rowProofs%[rowProofs%[h336_4_0_0],rowProofs%[h336_4_1_0],rowProofs%[h336_4_2_0]]]
end Blc.SelfintSingleObject.Compact45
