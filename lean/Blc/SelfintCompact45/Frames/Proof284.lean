import Blc.SelfintCompact45.Frames.Frame284R0M2
import Blc.SelfintCompact45.Frames.Frame284R1M2
import Blc.SelfintCompact45.Frames.Frame284R2M0
import Blc.SelfintCompact45.Frames.Frame284R2M1
import Blc.SelfintCompact45.Frames.Frame284R2M2
import Blc.SelfintCompact45.Frames.Frame284R3M0
import Blc.SelfintCompact45.Frames.Frame284R3M1
import Blc.SelfintCompact45.Frames.Frame284R3M2
import Blc.SelfintCompact45.Frames.Frame284R4M0
import Blc.SelfintCompact45.Frames.Frame284R4M1
import Blc.SelfintCompact45.Frames.Frame284R4M2
namespace Blc.SelfintSingleObject.Compact45
open Fast45 SourceRefutations FrameCertificate
set_option maxRecDepth 24000
set_option maxHeartbeats 8000000
set_option Elab.async false
theorem cf284 : FrameCover false false 8 5 5 4 2 3 k284 :=
  by_words idx284 4 0 2 5 1 rfl rfl rfl rfl rfl rowProofs%[rowProofs%[rowProofs%[h284_0_0_0,h284_0_0_1],rowProofs%[h284_0_1_0,h284_0_1_1],rowProofs%[h284_0_2_0,h284_0_2_1]],rowProofs%[rowProofs%[h284_1_0_0,h284_1_0_1],rowProofs%[h284_1_1_0,h284_1_1_1],rowProofs%[h284_1_2_0,h284_1_2_1]],rowProofs%[rowProofs%[h284_2_0_0,h284_2_0_1],rowProofs%[h284_2_1_0,h284_2_1_1],rowProofs%[h284_2_2_0,h284_2_2_1]],rowProofs%[rowProofs%[h284_3_0_0,h284_3_0_1],rowProofs%[h284_3_1_0,h284_3_1_1],rowProofs%[h284_3_2_0,h284_3_2_1]],rowProofs%[rowProofs%[h284_4_0_0,h284_4_0_1],rowProofs%[h284_4_1_0,h284_4_1_1],rowProofs%[h284_4_2_0,h284_4_2_1]]]
end Blc.SelfintSingleObject.Compact45
