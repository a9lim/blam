import Blc.SelfintRowCoverNotation
import Blc.SelfintCompact45.TreeG22460P00
import Blc.SelfintCompact45.TreeG22460P01
import Blc.SelfintCompact45.TreeG22460P02
import Blc.SelfintCompact45.TreeG22460P03
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
theorem g22460 : BadRow (Fast45.row false false k260 8 3 6 5 [0,2,1,0,0]) := frame_cover 8 (by decide) false false k260 8 3 6 5 [0,2,1,0,0] rowProofs%[(g22460Tree0 .nil),(g22460Tree1 .nil),(g22460Tree2 .nil),(g22460Tree3 .nil),(g22460Tree4 .nil),(g22460Tree5 .nil),(g22460Tree6 .nil),(g22460Tree7 .nil),(g22460Tree8 .nil),(g22460Tree9 .nil),(g22460Tree10 .nil),(g22460Tree11 .nil),(g22460Tree12 .nil),(g22460Tree13 .nil)]
end Blc.SelfintSingleObject.Compact45
