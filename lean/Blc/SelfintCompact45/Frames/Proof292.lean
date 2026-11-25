import Blc.SelfintCompact45.Frames.Frame292R0M2
import Blc.SelfintCompact45.Frames.Frame292R1M2
import Blc.SelfintCompact45.Frames.Frame292R2M0
import Blc.SelfintCompact45.Frames.Frame292R2M1
import Blc.SelfintCompact45.Frames.Frame292R2M2
import Blc.SelfintCompact45.Frames.Frame292R3M0
import Blc.SelfintCompact45.Frames.Frame292R3M1
import Blc.SelfintCompact45.Frames.Frame292R3M2
import Blc.SelfintCompact45.Frames.Frame292R4M0
import Blc.SelfintCompact45.Frames.Frame292R4M1
import Blc.SelfintCompact45.Frames.Frame292R4M2
namespace Blc.SelfintSingleObject.Compact45
open Fast45 SourceRefutations FrameCertificate
set_option maxRecDepth 24000
set_option maxHeartbeats 8000000
set_option Elab.async false
theorem cf292 : FrameCover false false 8 5 5 5 2 3 k292 :=
  by_words idx292 4 0 2 5 0 rfl rfl rfl rfl rfl rowProofs%[rowProofs%[rowProofs%[h292_0_0_0],rowProofs%[h292_0_1_0],rowProofs%[h292_0_2_0]],rowProofs%[rowProofs%[h292_1_0_0],rowProofs%[h292_1_1_0],rowProofs%[h292_1_2_0]],rowProofs%[rowProofs%[h292_2_0_0],rowProofs%[h292_2_1_0],rowProofs%[h292_2_2_0]],rowProofs%[rowProofs%[h292_3_0_0],rowProofs%[h292_3_1_0],rowProofs%[h292_3_2_0]],rowProofs%[rowProofs%[h292_4_0_0],rowProofs%[h292_4_1_0],rowProofs%[h292_4_2_0]]]
end Blc.SelfintSingleObject.Compact45
