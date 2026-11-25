import Blc.SelfintCompact45.Frames.Frame316R0M1
import Blc.SelfintCompact45.Frames.Frame316R1M1
import Blc.SelfintCompact45.Frames.Frame316R2M0
import Blc.SelfintCompact45.Frames.Frame316R2M1
import Blc.SelfintCompact45.Frames.Frame316R3M0
import Blc.SelfintCompact45.Frames.Frame316R3M1
import Blc.SelfintCompact45.Frames.Frame316R4M0
import Blc.SelfintCompact45.Frames.Frame316R4M1
namespace Blc.SelfintSingleObject.Compact45
open Fast45 SourceRefutations FrameCertificate
set_option maxRecDepth 24000
set_option maxHeartbeats 8000000
set_option Elab.async false
theorem cf316 : FrameCover false true 8 5 5 5 2 3 k316 :=
  by_words idx316 4 1 1 5 0 rfl rfl rfl rfl rfl rowProofs%[rowProofs%[rowProofs%[h316_0_0_0],rowProofs%[h316_0_1_0]],rowProofs%[rowProofs%[h316_1_0_0],rowProofs%[h316_1_1_0]],rowProofs%[rowProofs%[h316_2_0_0],rowProofs%[h316_2_1_0]],rowProofs%[rowProofs%[h316_3_0_0],rowProofs%[h316_3_1_0]],rowProofs%[rowProofs%[h316_4_0_0],rowProofs%[h316_4_1_0]]]
end Blc.SelfintSingleObject.Compact45
