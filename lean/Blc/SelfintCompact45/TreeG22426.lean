import Blc.SelfintRowCoverNotation
import Blc.SelfintCompact45.TreeG22426P00
import Blc.SelfintCompact45.TreeG22426P01
import Blc.SelfintCompact45.TreeG22426P02
import Blc.SelfintCompact45.TreeG22426P03
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
theorem g22426 : BadRow (Fast45.row false false k260 8 3 6 5 [0,0,0,1,2]) := frame_cover 8 (by decide) false false k260 8 3 6 5 [0,0,0,1,2] rowProofs%[(g22426Tree0 .nil),(g22426Tree1 .nil),(g22426Tree2 .nil),(g22426Tree3 .nil),(g22426Tree4 .nil),(g22426Tree5 .nil),(g22426Tree6 .nil),(g22426Tree7 .nil),(g22426Tree8 .nil),(g22426Tree9 .nil),(g22426Tree10 .nil),(g22426Tree11 .nil),(g22426Tree12 .nil),(g22426Tree13 .nil)]
end Blc.SelfintSingleObject.Compact45
