import Blc.SelfintCompact45.Frames.Frame264R0M3
import Blc.SelfintCompact45.Frames.Frame264R1M3
import Blc.SelfintCompact45.Frames.Frame264R2M0
import Blc.SelfintCompact45.Frames.Frame264R2M1
import Blc.SelfintCompact45.Frames.Frame264R2M2
import Blc.SelfintCompact45.Frames.Frame264R2M3
import Blc.SelfintCompact45.Frames.Frame264R3M0
import Blc.SelfintCompact45.Frames.Frame264R3M1
import Blc.SelfintCompact45.Frames.Frame264R3M2
import Blc.SelfintCompact45.Frames.Frame264R3M3
namespace Blc.SelfintSingleObject.Compact45
open Fast45 SourceRefutations FrameCertificate
set_option maxRecDepth 24000
set_option maxHeartbeats 8000000
set_option Elab.async false
theorem cf264 : FrameCover false true 7 8 3 3 3 3 k264 :=
  by_words idx264 3 1 3 4 0 rfl rfl rfl rfl rfl rowProofs%[rowProofs%[rowProofs%[h264_0_0_0],rowProofs%[h264_0_1_0],rowProofs%[h264_0_2_0],rowProofs%[h264_0_3_0]],rowProofs%[rowProofs%[h264_1_0_0],rowProofs%[h264_1_1_0],rowProofs%[h264_1_2_0],rowProofs%[h264_1_3_0]],rowProofs%[rowProofs%[h264_2_0_0],rowProofs%[h264_2_1_0],rowProofs%[h264_2_2_0],rowProofs%[h264_2_3_0]],rowProofs%[rowProofs%[h264_3_0_0],rowProofs%[h264_3_1_0],rowProofs%[h264_3_2_0],rowProofs%[h264_3_3_0]]]
end Blc.SelfintSingleObject.Compact45
