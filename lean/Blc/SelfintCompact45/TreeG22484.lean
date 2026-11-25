import Blc.SelfintRowCoverNotation
import Blc.SelfintCompact45.TreeG22484P00
import Blc.SelfintCompact45.TreeG22484P01
import Blc.SelfintCompact45.TreeG22484P02
import Blc.SelfintCompact45.TreeG22484P03
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
theorem g22484 : BadRow (Fast45.row false false k260 8 3 6 5 [2,0,0,0,1]) := frame_cover 8 (by decide) false false k260 8 3 6 5 [2,0,0,0,1] rowProofs%[(g22484Tree0 .nil),(g22484Tree1 .nil),(g22484Tree2 .nil),(g22484Tree3 .nil),(g22484Tree4 .nil),(g22484Tree5 .nil),(g22484Tree6 .nil),(g22484Tree7 .nil),(g22484Tree8 .nil),(g22484Tree9 .nil),(g22484Tree10 .nil),(g22484Tree11 .nil),(g22484Tree12 .nil),(g22484Tree13 .nil)]
end Blc.SelfintSingleObject.Compact45
