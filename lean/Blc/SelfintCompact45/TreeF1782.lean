import Blc.SelfintRowCoverNotation
import Blc.SelfintCompact45.TreeF1782P00
import Blc.SelfintCompact45.TreeF1782P01
import Blc.SelfintCompact45.TreeF1782P02
import Blc.SelfintCompact45.TreeF1782P03
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
theorem f1782 : BadRow (Grammar43.fourRow ⟨0,2,0,6,5,3⟩ [0,0] [0,0,0,1,2]) := four_cover 8 (by decide) ⟨0,2,0,6,5,3⟩ [0,0] [0,0,0,1,2] rowProofs%[(f1782Tree0 .nil),(f1782Tree1 .nil),(f1782Tree2 .nil),(f1782Tree3 .nil),(f1782Tree4 .nil),(f1782Tree5 .nil),(f1782Tree6 .nil),(f1782Tree7 .nil),(f1782Tree8 .nil),(f1782Tree9 .nil),(f1782Tree10 .nil),(f1782Tree11 .nil),(f1782Tree12 .nil),(f1782Tree13 .nil)]
end Blc.SelfintSingleObject.Compact45
