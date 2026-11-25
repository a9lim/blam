import Blc.SelfintCompact45.Frames.Frame340R0M1
import Blc.SelfintCompact45.Frames.Frame340R1M1
import Blc.SelfintCompact45.Frames.Frame340R2M0
import Blc.SelfintCompact45.Frames.Frame340R2M1
import Blc.SelfintCompact45.Frames.Frame340R3M0
import Blc.SelfintCompact45.Frames.Frame340R3M1
import Blc.SelfintCompact45.Frames.Frame340R4M0
import Blc.SelfintCompact45.Frames.Frame340R4M1
namespace Blc.SelfintSingleObject.Compact45
open Fast45 SourceRefutations FrameCertificate
set_option maxRecDepth 24000
set_option maxHeartbeats 8000000
set_option Elab.async false
theorem cf340 : FrameCover true true 8 6 3 3 3 3 k340 :=
  by_words idx340 4 1 1 5 0 rfl rfl rfl rfl rfl rowProofs%[rowProofs%[rowProofs%[h340_0_0_0],rowProofs%[h340_0_1_0]],rowProofs%[rowProofs%[h340_1_0_0],rowProofs%[h340_1_1_0]],rowProofs%[rowProofs%[h340_2_0_0],rowProofs%[h340_2_1_0]],rowProofs%[rowProofs%[h340_3_0_0],rowProofs%[h340_3_1_0]],rowProofs%[rowProofs%[h340_4_0_0],rowProofs%[h340_4_1_0]]]
end Blc.SelfintSingleObject.Compact45
