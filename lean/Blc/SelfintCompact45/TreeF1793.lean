import Blc.SelfintRowCoverNotation
import Blc.SelfintCompact45.TreeF1793P00
import Blc.SelfintCompact45.TreeF1793P01
import Blc.SelfintCompact45.TreeF1793P02
import Blc.SelfintCompact45.TreeF1793P03
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
theorem f1793 : BadRow (Grammar43.fourRow ⟨0,2,0,6,5,3⟩ [0,0] [0,1,0,2,0]) := four_cover 8 (by decide) ⟨0,2,0,6,5,3⟩ [0,0] [0,1,0,2,0] rowProofs%[(f1793Tree0 .nil),(f1793Tree1 .nil),(f1793Tree2 .nil),(f1793Tree3 .nil),(f1793Tree4 .nil),(f1793Tree5 .nil),(f1793Tree6 .nil),(f1793Tree7 .nil),(f1793Tree8 .nil),(f1793Tree9 .nil),(f1793Tree10 .nil),(f1793Tree11 .nil),(f1793Tree12 .nil),(f1793Tree13 .nil)]
end Blc.SelfintSingleObject.Compact45
