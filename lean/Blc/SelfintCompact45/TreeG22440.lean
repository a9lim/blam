import Blc.SelfintRowCoverNotation
import Blc.SelfintCompact45.TreeG22440P00
import Blc.SelfintCompact45.TreeG22440P01
import Blc.SelfintCompact45.TreeG22440P02
import Blc.SelfintCompact45.TreeG22440P03
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
theorem g22440 : BadRow (Fast45.row false false k260 8 3 6 5 [0,0,2,1,0]) := frame_cover 8 (by decide) false false k260 8 3 6 5 [0,0,2,1,0] rowProofs%[(g22440Tree0 .nil),(g22440Tree1 .nil),(g22440Tree2 .nil),(g22440Tree3 .nil),(g22440Tree4 .nil),(g22440Tree5 .nil),(g22440Tree6 .nil),(g22440Tree7 .nil),(g22440Tree8 .nil),(g22440Tree9 .nil),(g22440Tree10 .nil),(g22440Tree11 .nil),(g22440Tree12 .nil),(g22440Tree13 .nil)]
end Blc.SelfintSingleObject.Compact45
