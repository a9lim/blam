import Blc.SelfintRowCoverNotation
import Blc.SelfintCompact45.TreeG22438P00
import Blc.SelfintCompact45.TreeG22438P01
import Blc.SelfintCompact45.TreeG22438P02
import Blc.SelfintCompact45.TreeG22438P03
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
theorem g22438 : BadRow (Fast45.row false false k260 8 3 6 5 [0,0,2,0,1]) := frame_cover 8 (by decide) false false k260 8 3 6 5 [0,0,2,0,1] rowProofs%[(g22438Tree0 .nil),(g22438Tree1 .nil),(g22438Tree2 .nil),(g22438Tree3 .nil),(g22438Tree4 .nil),(g22438Tree5 .nil),(g22438Tree6 .nil),(g22438Tree7 .nil),(g22438Tree8 .nil),(g22438Tree9 .nil),(g22438Tree10 .nil),(g22438Tree11 .nil),(g22438Tree12 .nil),(g22438Tree13 .nil)]
end Blc.SelfintSingleObject.Compact45
