import Blc.SelfintRowCoverNotation
import Blc.SelfintCompact45.TreeG22490P00
import Blc.SelfintCompact45.TreeG22490P01
import Blc.SelfintCompact45.TreeG22490P02
import Blc.SelfintCompact45.TreeG22490P03
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
theorem g22490 : BadRow (Fast45.row false false k260 8 3 6 5 [2,1,0,0,0]) := frame_cover 8 (by decide) false false k260 8 3 6 5 [2,1,0,0,0] rowProofs%[(g22490Tree0 .nil),(g22490Tree1 .nil),(g22490Tree2 .nil),(g22490Tree3 .nil),(g22490Tree4 .nil),(g22490Tree5 .nil),(g22490Tree6 .nil),(g22490Tree7 .nil),(g22490Tree8 .nil),(g22490Tree9 .nil),(g22490Tree10 .nil),(g22490Tree11 .nil),(g22490Tree12 .nil),(g22490Tree13 .nil)]
end Blc.SelfintSingleObject.Compact45
