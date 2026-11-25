import Blc.SelfintRowCoverNotation
import Blc.SelfintCompact45.TreeF1788P00
import Blc.SelfintCompact45.TreeF1788P01
import Blc.SelfintCompact45.TreeF1788P02
import Blc.SelfintCompact45.TreeF1788P03
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
theorem f1788 : BadRow (Grammar43.fourRow ⟨0,2,0,6,5,3⟩ [0,0] [0,0,2,0,1]) := four_cover 8 (by decide) ⟨0,2,0,6,5,3⟩ [0,0] [0,0,2,0,1] rowProofs%[(f1788Tree0 .nil),(f1788Tree1 .nil),(f1788Tree2 .nil),(f1788Tree3 .nil),(f1788Tree4 .nil),(f1788Tree5 .nil),(f1788Tree6 .nil),(f1788Tree7 .nil),(f1788Tree8 .nil),(f1788Tree9 .nil),(f1788Tree10 .nil),(f1788Tree11 .nil),(f1788Tree12 .nil),(f1788Tree13 .nil)]
end Blc.SelfintSingleObject.Compact45
