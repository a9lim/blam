import Blc.SelfintRowCoverNotation
import Blc.SelfintCompact45.TreeG22468P00
import Blc.SelfintCompact45.TreeG22468P01
import Blc.SelfintCompact45.TreeG22468P02
import Blc.SelfintCompact45.TreeG22468P03
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
theorem g22468 : BadRow (Fast45.row false false k260 8 3 6 5 [1,0,0,2,0]) := frame_cover 8 (by decide) false false k260 8 3 6 5 [1,0,0,2,0] rowProofs%[(g22468Tree0 .nil),(g22468Tree1 .nil),(g22468Tree2 .nil),(g22468Tree3 .nil),(g22468Tree4 .nil),(g22468Tree5 .nil),(g22468Tree6 .nil),(g22468Tree7 .nil),(g22468Tree8 .nil),(g22468Tree9 .nil),(g22468Tree10 .nil),(g22468Tree11 .nil),(g22468Tree12 .nil),(g22468Tree13 .nil)]
end Blc.SelfintSingleObject.Compact45
