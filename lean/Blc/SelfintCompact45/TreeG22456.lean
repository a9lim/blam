import Blc.SelfintRowCoverNotation
import Blc.SelfintCompact45.TreeG22456P00
import Blc.SelfintCompact45.TreeG22456P01
import Blc.SelfintCompact45.TreeG22456P02
import Blc.SelfintCompact45.TreeG22456P03
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
theorem g22456 : BadRow (Fast45.row false false k260 8 3 6 5 [0,2,0,0,1]) := frame_cover 8 (by decide) false false k260 8 3 6 5 [0,2,0,0,1] rowProofs%[(g22456Tree0 .nil),(g22456Tree1 .nil),(g22456Tree2 .nil),(g22456Tree3 .nil),(g22456Tree4 .nil),(g22456Tree5 .nil),(g22456Tree6 .nil),(g22456Tree7 .nil),(g22456Tree8 .nil),(g22456Tree9 .nil),(g22456Tree10 .nil),(g22456Tree11 .nil),(g22456Tree12 .nil),(g22456Tree13 .nil)]
end Blc.SelfintSingleObject.Compact45
