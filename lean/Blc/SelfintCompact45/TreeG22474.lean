import Blc.SelfintRowCoverNotation
import Blc.SelfintCompact45.TreeG22474P00
import Blc.SelfintCompact45.TreeG22474P01
import Blc.SelfintCompact45.TreeG22474P02
import Blc.SelfintCompact45.TreeG22474P03
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
theorem g22474 : BadRow (Fast45.row false false k260 8 3 6 5 [1,0,2,0,0]) := frame_cover 8 (by decide) false false k260 8 3 6 5 [1,0,2,0,0] rowProofs%[(g22474Tree0 .nil),(g22474Tree1 .nil),(g22474Tree2 .nil),(g22474Tree3 .nil),(g22474Tree4 .nil),(g22474Tree5 .nil),(g22474Tree6 .nil),(g22474Tree7 .nil),(g22474Tree8 .nil),(g22474Tree9 .nil),(g22474Tree10 .nil),(g22474Tree11 .nil),(g22474Tree12 .nil),(g22474Tree13 .nil)]
end Blc.SelfintSingleObject.Compact45
