import Blc.SelfintCompact45.Frames.Frame276R0M2
import Blc.SelfintCompact45.Frames.Frame276R1M2
import Blc.SelfintCompact45.Frames.Frame276R2M0
import Blc.SelfintCompact45.Frames.Frame276R2M1
import Blc.SelfintCompact45.Frames.Frame276R2M2
import Blc.SelfintCompact45.Frames.Frame276R3M0
import Blc.SelfintCompact45.Frames.Frame276R3M1
import Blc.SelfintCompact45.Frames.Frame276R3M2
import Blc.SelfintCompact45.Frames.Frame276R4M0
import Blc.SelfintCompact45.Frames.Frame276R4M1
import Blc.SelfintCompact45.Frames.Frame276R4M2
namespace Blc.SelfintSingleObject.Compact45
open Fast45 SourceRefutations FrameCertificate
set_option maxRecDepth 24000
set_option maxHeartbeats 8000000
set_option Elab.async false
theorem cf276 : FrameCover false false 8 5 5 3 2 3 k276 :=
  by_words idx276 4 0 2 5 2 rfl rfl rfl rfl rfl rowProofs%[rowProofs%[rowProofs%[h276_0_0_0,h276_0_0_1,h276_0_0_2],rowProofs%[h276_0_1_0,h276_0_1_1,h276_0_1_2],rowProofs%[h276_0_2_0,h276_0_2_1,h276_0_2_2]],rowProofs%[rowProofs%[h276_1_0_0,h276_1_0_1,h276_1_0_2],rowProofs%[h276_1_1_0,h276_1_1_1,h276_1_1_2],rowProofs%[h276_1_2_0,h276_1_2_1,h276_1_2_2]],rowProofs%[rowProofs%[h276_2_0_0,h276_2_0_1,h276_2_0_2],rowProofs%[h276_2_1_0,h276_2_1_1,h276_2_1_2],rowProofs%[h276_2_2_0,h276_2_2_1,h276_2_2_2]],rowProofs%[rowProofs%[h276_3_0_0,h276_3_0_1,h276_3_0_2],rowProofs%[h276_3_1_0,h276_3_1_1,h276_3_1_2],rowProofs%[h276_3_2_0,h276_3_2_1,h276_3_2_2]],rowProofs%[rowProofs%[h276_4_0_0,h276_4_0_1,h276_4_0_2],rowProofs%[h276_4_1_0,h276_4_1_1,h276_4_1_2],rowProofs%[h276_4_2_0,h276_4_2_1,h276_4_2_2]]]
end Blc.SelfintSingleObject.Compact45
