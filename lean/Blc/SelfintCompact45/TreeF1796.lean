import Blc.SelfintRowCoverNotation
import Blc.SelfintCompact45.TreeF1796P00
import Blc.SelfintCompact45.TreeF1796P01
import Blc.SelfintCompact45.TreeF1796P02
import Blc.SelfintCompact45.TreeF1796P03
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
theorem f1796 : BadRow (Grammar43.fourRow ⟨0,2,0,6,5,3⟩ [0,0] [0,1,2,0,0]) := four_cover 8 (by decide) ⟨0,2,0,6,5,3⟩ [0,0] [0,1,2,0,0] rowProofs%[(f1796Tree0 .nil),(f1796Tree1 .nil),(f1796Tree2 .nil),(f1796Tree3 .nil),(f1796Tree4 .nil),(f1796Tree5 .nil),(f1796Tree6 .nil),(f1796Tree7 .nil),(f1796Tree8 .nil),(f1796Tree9 .nil),(f1796Tree10 .nil),(f1796Tree11 .nil),(f1796Tree12 .nil),(f1796Tree13 .nil)]
end Blc.SelfintSingleObject.Compact45
