import Blc.SelfintRowCoverNotation
import Blc.SelfintCompact45.TreeG22458P00
import Blc.SelfintCompact45.TreeG22458P01
import Blc.SelfintCompact45.TreeG22458P02
import Blc.SelfintCompact45.TreeG22458P03
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
theorem g22458 : BadRow (Fast45.row false false k260 8 3 6 5 [0,2,0,1,0]) := frame_cover 8 (by decide) false false k260 8 3 6 5 [0,2,0,1,0] rowProofs%[(g22458Tree0 .nil),(g22458Tree1 .nil),(g22458Tree2 .nil),(g22458Tree3 .nil),(g22458Tree4 .nil),(g22458Tree5 .nil),(g22458Tree6 .nil),(g22458Tree7 .nil),(g22458Tree8 .nil),(g22458Tree9 .nil),(g22458Tree10 .nil),(g22458Tree11 .nil),(g22458Tree12 .nil),(g22458Tree13 .nil)]
end Blc.SelfintSingleObject.Compact45
