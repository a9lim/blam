import Blc.SelfintRowCoverNotation
import Blc.SelfintCompact45.TreeF1783P00
import Blc.SelfintCompact45.TreeF1783P01
import Blc.SelfintCompact45.TreeF1783P02
import Blc.SelfintCompact45.TreeF1783P03
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
theorem f1783 : BadRow (Grammar43.fourRow ⟨0,2,0,6,5,3⟩ [0,0] [0,0,0,2,1]) := four_cover 8 (by decide) ⟨0,2,0,6,5,3⟩ [0,0] [0,0,0,2,1] rowProofs%[(f1783Tree0 .nil),(f1783Tree1 .nil),(f1783Tree2 .nil),(f1783Tree3 .nil),(f1783Tree4 .nil),(f1783Tree5 .nil),(f1783Tree6 .nil),(f1783Tree7 .nil),(f1783Tree8 .nil),(f1783Tree9 .nil),(f1783Tree10 .nil),(f1783Tree11 .nil),(f1783Tree12 .nil),(f1783Tree13 .nil)]
end Blc.SelfintSingleObject.Compact45
