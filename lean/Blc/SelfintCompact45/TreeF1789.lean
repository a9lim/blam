import Blc.SelfintRowCoverNotation
import Blc.SelfintCompact45.TreeF1789P00
import Blc.SelfintCompact45.TreeF1789P01
import Blc.SelfintCompact45.TreeF1789P02
import Blc.SelfintCompact45.TreeF1789P03
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
theorem f1789 : BadRow (Grammar43.fourRow ⟨0,2,0,6,5,3⟩ [0,0] [0,0,2,1,0]) := four_cover 8 (by decide) ⟨0,2,0,6,5,3⟩ [0,0] [0,0,2,1,0] rowProofs%[(f1789Tree0 .nil),(f1789Tree1 .nil),(f1789Tree2 .nil),(f1789Tree3 .nil),(f1789Tree4 .nil),(f1789Tree5 .nil),(f1789Tree6 .nil),(f1789Tree7 .nil),(f1789Tree8 .nil),(f1789Tree9 .nil),(f1789Tree10 .nil),(f1789Tree11 .nil),(f1789Tree12 .nil),(f1789Tree13 .nil)]
end Blc.SelfintSingleObject.Compact45
