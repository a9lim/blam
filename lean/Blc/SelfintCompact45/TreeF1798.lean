import Blc.SelfintRowCoverNotation
import Blc.SelfintCompact45.TreeF1798P00
import Blc.SelfintCompact45.TreeF1798P01
import Blc.SelfintCompact45.TreeF1798P02
import Blc.SelfintCompact45.TreeF1798P03
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
theorem f1798 : BadRow (Grammar43.fourRow ⟨0,2,0,6,5,3⟩ [0,0] [0,2,0,1,0]) := four_cover 8 (by decide) ⟨0,2,0,6,5,3⟩ [0,0] [0,2,0,1,0] rowProofs%[(f1798Tree0 .nil),(f1798Tree1 .nil),(f1798Tree2 .nil),(f1798Tree3 .nil),(f1798Tree4 .nil),(f1798Tree5 .nil),(f1798Tree6 .nil),(f1798Tree7 .nil),(f1798Tree8 .nil),(f1798Tree9 .nil),(f1798Tree10 .nil),(f1798Tree11 .nil),(f1798Tree12 .nil),(f1798Tree13 .nil)]
end Blc.SelfintSingleObject.Compact45
