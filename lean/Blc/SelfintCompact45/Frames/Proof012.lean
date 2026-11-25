import Blc.SelfintCompact45.Frames.Frame012R0M2
import Blc.SelfintCompact45.Frames.Frame012R1M2
import Blc.SelfintCompact45.Frames.Frame012R2M0
import Blc.SelfintCompact45.Frames.Frame012R2M1
import Blc.SelfintCompact45.Frames.Frame012R2M2
import Blc.SelfintCompact45.Frames.Frame012R3M0
import Blc.SelfintCompact45.Frames.Frame012R3M1
import Blc.SelfintCompact45.Frames.Frame012R3M2
namespace Blc.SelfintSingleObject.Compact45
open Fast45 SourceRefutations FrameCertificate
set_option maxRecDepth 24000
set_option maxHeartbeats 8000000
set_option Elab.async false
theorem cf12 : FrameCover false false 7 5 9 5 2 3 k12 :=
  by_words idx12 3 0 2 4 4 rfl rfl rfl rfl rfl rowProofs%[rowProofs%[rowProofs%[h12_0_0_0,h12_0_0_1,h12_0_0_2,h12_0_0_3,h12_0_0_4],rowProofs%[h12_0_1_0,h12_0_1_1,h12_0_1_2,h12_0_1_3,h12_0_1_4],rowProofs%[h12_0_2_0,h12_0_2_1,h12_0_2_2,h12_0_2_3,h12_0_2_4]],rowProofs%[rowProofs%[h12_1_0_0,h12_1_0_1,h12_1_0_2,h12_1_0_3,h12_1_0_4],rowProofs%[h12_1_1_0,h12_1_1_1,h12_1_1_2,h12_1_1_3,h12_1_1_4],rowProofs%[h12_1_2_0,h12_1_2_1,h12_1_2_2,h12_1_2_3,h12_1_2_4]],rowProofs%[rowProofs%[h12_2_0_0,h12_2_0_1,h12_2_0_2,h12_2_0_3,h12_2_0_4],rowProofs%[h12_2_1_0,h12_2_1_1,h12_2_1_2,h12_2_1_3,h12_2_1_4],rowProofs%[h12_2_2_0,h12_2_2_1,h12_2_2_2,h12_2_2_3,h12_2_2_4]],rowProofs%[rowProofs%[h12_3_0_0,h12_3_0_1,h12_3_0_2,h12_3_0_3,h12_3_0_4],rowProofs%[h12_3_1_0,h12_3_1_1,h12_3_1_2,h12_3_1_3,h12_3_1_4],rowProofs%[h12_3_2_0,h12_3_2_1,h12_3_2_2,h12_3_2_3,h12_3_2_4]]]
end Blc.SelfintSingleObject.Compact45
