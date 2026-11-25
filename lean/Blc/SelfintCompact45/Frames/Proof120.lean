import Blc.SelfintCompact45.Frames.Frame120R0M3
import Blc.SelfintCompact45.Frames.Frame120R1M3
import Blc.SelfintCompact45.Frames.Frame120R2M0
import Blc.SelfintCompact45.Frames.Frame120R2M1
import Blc.SelfintCompact45.Frames.Frame120R2M2
import Blc.SelfintCompact45.Frames.Frame120R2M3
import Blc.SelfintCompact45.Frames.Frame120R3M0
import Blc.SelfintCompact45.Frames.Frame120R3M1
import Blc.SelfintCompact45.Frames.Frame120R3M2
import Blc.SelfintCompact45.Frames.Frame120R3M3
namespace Blc.SelfintSingleObject.Compact45
open Fast45 SourceRefutations FrameCertificate
set_option maxRecDepth 24000
set_option maxHeartbeats 8000000
set_option Elab.async false
theorem cf120 : FrameCover false false 7 6 7 7 2 3 k120 :=
  by_words idx120 3 0 3 4 0 rfl rfl rfl rfl rfl rowProofs%[rowProofs%[rowProofs%[h120_0_0_0],rowProofs%[h120_0_1_0],rowProofs%[h120_0_2_0],rowProofs%[h120_0_3_0]],rowProofs%[rowProofs%[h120_1_0_0],rowProofs%[h120_1_1_0],rowProofs%[h120_1_2_0],rowProofs%[h120_1_3_0]],rowProofs%[rowProofs%[h120_2_0_0],rowProofs%[h120_2_1_0],rowProofs%[h120_2_2_0],rowProofs%[h120_2_3_0]],rowProofs%[rowProofs%[h120_3_0_0],rowProofs%[h120_3_1_0],rowProofs%[h120_3_2_0],rowProofs%[h120_3_3_0]]]
end Blc.SelfintSingleObject.Compact45
