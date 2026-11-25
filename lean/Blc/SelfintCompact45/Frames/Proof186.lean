import Blc.SelfintCompact45.Frames.Frame186R0M4
import Blc.SelfintCompact45.Frames.Frame186R1M4
import Blc.SelfintCompact45.Frames.Frame186R2M0
import Blc.SelfintCompact45.Frames.Frame186R2M1
import Blc.SelfintCompact45.Frames.Frame186R2M2
import Blc.SelfintCompact45.Frames.Frame186R2M3
import Blc.SelfintCompact45.Frames.Frame186R2M4
import Blc.SelfintCompact45.Frames.Frame186R3M0
import Blc.SelfintCompact45.Frames.Frame186R3M1
import Blc.SelfintCompact45.Frames.Frame186R3M2
import Blc.SelfintCompact45.Frames.Frame186R3M3
import Blc.SelfintCompact45.Frames.Frame186R3M4
namespace Blc.SelfintSingleObject.Compact45
open Fast45 SourceRefutations FrameCertificate
set_option maxRecDepth 24000
set_option maxHeartbeats 8000000
set_option Elab.async false
theorem cf186 : FrameCover false false 7 7 5 4 2 3 k186 :=
  by_words idx186 3 0 4 4 1 rfl rfl rfl rfl rfl rowProofs%[rowProofs%[rowProofs%[h186_0_0_0,h186_0_0_1],rowProofs%[h186_0_1_0,h186_0_1_1],rowProofs%[h186_0_2_0,h186_0_2_1],rowProofs%[h186_0_3_0,h186_0_3_1],rowProofs%[h186_0_4_0,h186_0_4_1]],rowProofs%[rowProofs%[h186_1_0_0,h186_1_0_1],rowProofs%[h186_1_1_0,h186_1_1_1],rowProofs%[h186_1_2_0,h186_1_2_1],rowProofs%[h186_1_3_0,h186_1_3_1],rowProofs%[h186_1_4_0,h186_1_4_1]],rowProofs%[rowProofs%[h186_2_0_0,h186_2_0_1],rowProofs%[h186_2_1_0,h186_2_1_1],rowProofs%[h186_2_2_0,h186_2_2_1],rowProofs%[h186_2_3_0,h186_2_3_1],rowProofs%[h186_2_4_0,h186_2_4_1]],rowProofs%[rowProofs%[h186_3_0_0,h186_3_0_1],rowProofs%[h186_3_1_0,h186_3_1_1],rowProofs%[h186_3_2_0,h186_3_2_1],rowProofs%[h186_3_3_0,h186_3_3_1],rowProofs%[h186_3_4_0,h186_3_4_1]]]
end Blc.SelfintSingleObject.Compact45
