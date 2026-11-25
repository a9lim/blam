import Blc.SelfintCompact45.Frames.Frame324R0M3
import Blc.SelfintCompact45.Frames.Frame324R1M3
import Blc.SelfintCompact45.Frames.Frame324R2M0
import Blc.SelfintCompact45.Frames.Frame324R2M1
import Blc.SelfintCompact45.Frames.Frame324R2M2
import Blc.SelfintCompact45.Frames.Frame324R2M3
import Blc.SelfintCompact45.Frames.Frame324R3M0
import Blc.SelfintCompact45.Frames.Frame324R3M1
import Blc.SelfintCompact45.Frames.Frame324R3M2
import Blc.SelfintCompact45.Frames.Frame324R3M3
import Blc.SelfintCompact45.Frames.Frame324R4M0
import Blc.SelfintCompact45.Frames.Frame324R4M1
import Blc.SelfintCompact45.Frames.Frame324R4M2
import Blc.SelfintCompact45.Frames.Frame324R4M3
namespace Blc.SelfintSingleObject.Compact45
open Fast45 SourceRefutations FrameCertificate
set_option maxRecDepth 24000
set_option maxHeartbeats 8000000
set_option Elab.async false
theorem cf324 : FrameCover true false 8 6 3 3 2 3 k324 :=
  by_words idx324 4 0 3 5 0 rfl rfl rfl rfl rfl rowProofs%[rowProofs%[rowProofs%[h324_0_0_0],rowProofs%[h324_0_1_0],rowProofs%[h324_0_2_0],rowProofs%[h324_0_3_0]],rowProofs%[rowProofs%[h324_1_0_0],rowProofs%[h324_1_1_0],rowProofs%[h324_1_2_0],rowProofs%[h324_1_3_0]],rowProofs%[rowProofs%[h324_2_0_0],rowProofs%[h324_2_1_0],rowProofs%[h324_2_2_0],rowProofs%[h324_2_3_0]],rowProofs%[rowProofs%[h324_3_0_0],rowProofs%[h324_3_1_0],rowProofs%[h324_3_2_0],rowProofs%[h324_3_3_0]],rowProofs%[rowProofs%[h324_4_0_0],rowProofs%[h324_4_1_0],rowProofs%[h324_4_2_0],rowProofs%[h324_4_3_0]]]
end Blc.SelfintSingleObject.Compact45
