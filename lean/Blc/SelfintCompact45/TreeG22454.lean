import Blc.SelfintRowCoverNotation
import Blc.SelfintCompact45.TreeG22454P00
import Blc.SelfintCompact45.TreeG22454P01
import Blc.SelfintCompact45.TreeG22454P02
import Blc.SelfintCompact45.TreeG22454P03
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
theorem g22454 : BadRow (Fast45.row false false k260 8 3 6 5 [0,1,2,0,0]) := frame_cover 8 (by decide) false false k260 8 3 6 5 [0,1,2,0,0] rowProofs%[(g22454Tree0 .nil),(g22454Tree1 .nil),(g22454Tree2 .nil),(g22454Tree3 .nil),(g22454Tree4 .nil),(g22454Tree5 .nil),(g22454Tree6 .nil),(g22454Tree7 .nil),(g22454Tree8 .nil),(g22454Tree9 .nil),(g22454Tree10 .nil),(g22454Tree11 .nil),(g22454Tree12 .nil),(g22454Tree13 .nil)]
end Blc.SelfintSingleObject.Compact45
