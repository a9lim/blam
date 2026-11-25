import Blc.SelfintRowCoverNotation
import Blc.SelfintCompact45.TreeF1799P00
import Blc.SelfintCompact45.TreeF1799P01
import Blc.SelfintCompact45.TreeF1799P02
import Blc.SelfintCompact45.TreeF1799P03
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
theorem f1799 : BadRow (Grammar43.fourRow ⟨0,2,0,6,5,3⟩ [0,0] [0,2,1,0,0]) := four_cover 8 (by decide) ⟨0,2,0,6,5,3⟩ [0,0] [0,2,1,0,0] rowProofs%[(f1799Tree0 .nil),(f1799Tree1 .nil),(f1799Tree2 .nil),(f1799Tree3 .nil),(f1799Tree4 .nil),(f1799Tree5 .nil),(f1799Tree6 .nil),(f1799Tree7 .nil),(f1799Tree8 .nil),(f1799Tree9 .nil),(f1799Tree10 .nil),(f1799Tree11 .nil),(f1799Tree12 .nil),(f1799Tree13 .nil)]
end Blc.SelfintSingleObject.Compact45
