import Blc.SelfintRowCoverNotation
import Blc.SelfintCompact45.TreeF1810P00
import Blc.SelfintCompact45.TreeF1810P01
import Blc.SelfintCompact45.TreeF1810P02
import Blc.SelfintCompact45.TreeF1810P03
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
theorem f1810 : BadRow (Grammar43.fourRow ⟨0,2,0,6,5,3⟩ [0,0] [1,2,0,0,0]) := four_cover 8 (by decide) ⟨0,2,0,6,5,3⟩ [0,0] [1,2,0,0,0] rowProofs%[(f1810Tree0 .nil),(f1810Tree1 .nil),(f1810Tree2 .nil),(f1810Tree3 .nil),(f1810Tree4 .nil),(f1810Tree5 .nil),(f1810Tree6 .nil),(f1810Tree7 .nil),(f1810Tree8 .nil),(f1810Tree9 .nil),(f1810Tree10 .nil),(f1810Tree11 .nil),(f1810Tree12 .nil),(f1810Tree13 .nil)]
end Blc.SelfintSingleObject.Compact45
