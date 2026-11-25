import Blc.SelfintRowCoverNotation
import Blc.SelfintCompact45.TreeG26420P00
import Blc.SelfintCompact45.TreeG26420P01
import Blc.SelfintCompact45.TreeG26420P02
import Blc.SelfintCompact45.TreeG26420P03
import Blc.SelfintCompact45.TreeG26420P04
import Blc.SelfintCompact45.TreeG26420P05
import Blc.SelfintCompact45.TreeG26420P06
import Blc.SelfintCompact45.TreeG26420P07
import Blc.SelfintCompact45.TreeG26420P08
import Blc.SelfintCompact45.TreeG26420P09
import Blc.SelfintCompact45.TreeG26420P10
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
theorem g26420 (h : BadRow thg26420) : BadRow (Fast45.row true false k335 6 3 4 6 [0,0,1,0,2,0]) := frame_cover 4 (by decide) true false k335 6 3 4 6 [0,0,1,0,2,0] rowProofs%[(g26420Tree0 h),(g26420Tree1 h),(g26420Tree2 h),(g26420Tree3 h),(g26420Tree4 h),(g26420Tree5 h),(g26420Tree6 h),(g26420Tree7 h),(g26420Tree8 h),(g26420Tree9 h),(g26420Tree10 h),(g26420Tree11 h),(g26420Tree12 h),(g26420Tree13 h),(g26420Tree14 h),(g26420Tree15 h),(g26420Tree16 h),(g26420Tree17 h),(g26420Tree18 h),(g26420Tree19 h),(g26420Tree20 h),(g26420Tree21 h),(g26420Tree22 h),(g26420Tree23 h),(g26420Tree24 h),(g26420Tree25 h),(g26420Tree26 h),(g26420Tree27 h),(g26420Tree28 h),(g26420Tree29 h),(g26420Tree30 h),(g26420Tree31 h),(g26420Tree32 h),(g26420Tree33 h),(g26420Tree34 h),(g26420Tree35 h),(g26420Tree36 h),(g26420Tree37 h),(g26420Tree38 h),(g26420Tree39 h),(g26420Tree40 h),(g26420Tree41 h)]
end Blc.SelfintSingleObject.Compact45
