import Blc.SelfintRowCoverNotation
import Blc.SelfintCompact45.TreeG22448P00
import Blc.SelfintCompact45.TreeG22448P01
import Blc.SelfintCompact45.TreeG22448P02
import Blc.SelfintCompact45.TreeG22448P03
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
theorem g22448 : BadRow (Fast45.row false false k260 8 3 6 5 [0,1,0,2,0]) := frame_cover 8 (by decide) false false k260 8 3 6 5 [0,1,0,2,0] rowProofs%[(g22448Tree0 .nil),(g22448Tree1 .nil),(g22448Tree2 .nil),(g22448Tree3 .nil),(g22448Tree4 .nil),(g22448Tree5 .nil),(g22448Tree6 .nil),(g22448Tree7 .nil),(g22448Tree8 .nil),(g22448Tree9 .nil),(g22448Tree10 .nil),(g22448Tree11 .nil),(g22448Tree12 .nil),(g22448Tree13 .nil)]
end Blc.SelfintSingleObject.Compact45
