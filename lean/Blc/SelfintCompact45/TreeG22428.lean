import Blc.SelfintRowCoverNotation
import Blc.SelfintCompact45.TreeG22428P00
import Blc.SelfintCompact45.TreeG22428P01
import Blc.SelfintCompact45.TreeG22428P02
import Blc.SelfintCompact45.TreeG22428P03
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
theorem g22428 : BadRow (Fast45.row false false k260 8 3 6 5 [0,0,0,2,1]) := frame_cover 8 (by decide) false false k260 8 3 6 5 [0,0,0,2,1] rowProofs%[(g22428Tree0 .nil),(g22428Tree1 .nil),(g22428Tree2 .nil),(g22428Tree3 .nil),(g22428Tree4 .nil),(g22428Tree5 .nil),(g22428Tree6 .nil),(g22428Tree7 .nil),(g22428Tree8 .nil),(g22428Tree9 .nil),(g22428Tree10 .nil),(g22428Tree11 .nil),(g22428Tree12 .nil),(g22428Tree13 .nil)]
end Blc.SelfintSingleObject.Compact45
