import Blc.SelfintRowCoverNotation
import Blc.SelfintCompact45.TreeF1787P00
import Blc.SelfintCompact45.TreeF1787P01
import Blc.SelfintCompact45.TreeF1787P02
import Blc.SelfintCompact45.TreeF1787P03
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
theorem f1787 : BadRow (Grammar43.fourRow ⟨0,2,0,6,5,3⟩ [0,0] [0,0,1,2,0]) := four_cover 4 (by decide) ⟨0,2,0,6,5,3⟩ [0,0] [0,0,1,2,0] rowProofs%[(f1787Tree0 .nil),(f1787Tree1 .nil),(f1787Tree2 .nil),(f1787Tree3 .nil),(f1787Tree4 .nil),(f1787Tree5 .nil),(f1787Tree6 .nil),(f1787Tree7 .nil),(f1787Tree8 .nil),(f1787Tree9 .nil),(f1787Tree10 .nil),(f1787Tree11 .nil),(f1787Tree12 .nil),(f1787Tree13 .nil)]
end Blc.SelfintSingleObject.Compact45
