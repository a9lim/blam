import Blc.SelfintCompact45.Frames.Frame325R0M3
import Blc.SelfintCompact45.Frames.Frame325R1M3
import Blc.SelfintCompact45.Frames.Frame325R2M0
import Blc.SelfintCompact45.Frames.Frame325R2M1
import Blc.SelfintCompact45.Frames.Frame325R2M2
import Blc.SelfintCompact45.Frames.Frame325R2M3
import Blc.SelfintCompact45.Frames.Frame325R3M0
import Blc.SelfintCompact45.Frames.Frame325R3M1
import Blc.SelfintCompact45.Frames.Frame325R3M2
import Blc.SelfintCompact45.Frames.Frame325R3M3
namespace Blc.SelfintSingleObject.Compact45
open Fast45 SourceRefutations FrameCertificate
set_option maxRecDepth 24000
set_option maxHeartbeats 8000000
set_option Elab.async false
theorem cf325 : FrameCover true false 8 6 3 3 2 4 k325 :=
  by_words idx325 3 0 3 4 0 rfl rfl rfl rfl rfl rowProofs%[rowProofs%[rowProofs%[h325_0_0_0],rowProofs%[h325_0_1_0],rowProofs%[h325_0_2_0],rowProofs%[h325_0_3_0]],rowProofs%[rowProofs%[h325_1_0_0],rowProofs%[h325_1_1_0],rowProofs%[h325_1_2_0],rowProofs%[h325_1_3_0]],rowProofs%[rowProofs%[h325_2_0_0],rowProofs%[h325_2_1_0],rowProofs%[h325_2_2_0],rowProofs%[h325_2_3_0]],rowProofs%[rowProofs%[h325_3_0_0],rowProofs%[h325_3_1_0],rowProofs%[h325_3_2_0],rowProofs%[h325_3_3_0]]]
end Blc.SelfintSingleObject.Compact45
