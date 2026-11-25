import Blc.SelfintRowCoverNotation
import Blc.SelfintCompact45.TreeG22436P00
import Blc.SelfintCompact45.TreeG22436P01
import Blc.SelfintCompact45.TreeG22436P02
import Blc.SelfintCompact45.TreeG22436P03
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
theorem g22436 : BadRow (Fast45.row false false k260 8 3 6 5 [0,0,1,2,0]) := frame_cover 8 (by decide) false false k260 8 3 6 5 [0,0,1,2,0] rowProofs%[(g22436Tree0 .nil),(g22436Tree1 .nil),(g22436Tree2 .nil),(g22436Tree3 .nil),(g22436Tree4 .nil),(g22436Tree5 .nil),(g22436Tree6 .nil),(g22436Tree7 .nil),(g22436Tree8 .nil),(g22436Tree9 .nil),(g22436Tree10 .nil),(g22436Tree11 .nil),(g22436Tree12 .nil),(g22436Tree13 .nil)]
end Blc.SelfintSingleObject.Compact45
