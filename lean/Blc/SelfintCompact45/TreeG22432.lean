import Blc.SelfintRowCoverNotation
import Blc.SelfintCompact45.TreeG22432P00
import Blc.SelfintCompact45.TreeG22432P01
import Blc.SelfintCompact45.TreeG22432P02
import Blc.SelfintCompact45.TreeG22432P03
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
theorem g22432 : BadRow (Fast45.row false false k260 8 3 6 5 [0,0,1,0,2]) := frame_cover 8 (by decide) false false k260 8 3 6 5 [0,0,1,0,2] rowProofs%[(g22432Tree0 .nil),(g22432Tree1 .nil),(g22432Tree2 .nil),(g22432Tree3 .nil),(g22432Tree4 .nil),(g22432Tree5 .nil),(g22432Tree6 .nil),(g22432Tree7 .nil),(g22432Tree8 .nil),(g22432Tree9 .nil),(g22432Tree10 .nil),(g22432Tree11 .nil),(g22432Tree12 .nil),(g22432Tree13 .nil)]
end Blc.SelfintSingleObject.Compact45
