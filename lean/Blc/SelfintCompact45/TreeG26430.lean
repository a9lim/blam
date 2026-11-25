import Blc.SelfintRowCoverNotation
import Blc.SelfintCompact45.TreeG26430P00
import Blc.SelfintCompact45.TreeG26430P01
import Blc.SelfintCompact45.TreeG26430P02
import Blc.SelfintCompact45.TreeG26430P03
import Blc.SelfintCompact45.TreeG26430P04
import Blc.SelfintCompact45.TreeG26430P05
import Blc.SelfintCompact45.TreeG26430P06
import Blc.SelfintCompact45.TreeG26430P07
import Blc.SelfintCompact45.TreeG26430P08
import Blc.SelfintCompact45.TreeG26430P09
import Blc.SelfintCompact45.TreeG26430P10
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
theorem g26430 (h : BadRow thg26430) : BadRow (Fast45.row true false k335 6 3 4 6 [0,0,2,0,1,0]) := frame_cover 4 (by decide) true false k335 6 3 4 6 [0,0,2,0,1,0] rowProofs%[(g26430Tree0 h),(g26430Tree1 h),(g26430Tree2 h),(g26430Tree3 h),(g26430Tree4 h),(g26430Tree5 h),(g26430Tree6 h),(g26430Tree7 h),(g26430Tree8 h),(g26430Tree9 h),(g26430Tree10 h),(g26430Tree11 h),(g26430Tree12 h),(g26430Tree13 h),(g26430Tree14 h),(g26430Tree15 h),(g26430Tree16 h),(g26430Tree17 h),(g26430Tree18 h),(g26430Tree19 h),(g26430Tree20 h),(g26430Tree21 h),(g26430Tree22 h),(g26430Tree23 h),(g26430Tree24 h),(g26430Tree25 h),(g26430Tree26 h),(g26430Tree27 h),(g26430Tree28 h),(g26430Tree29 h),(g26430Tree30 h),(g26430Tree31 h),(g26430Tree32 h),(g26430Tree33 h),(g26430Tree34 h),(g26430Tree35 h),(g26430Tree36 h),(g26430Tree37 h),(g26430Tree38 h),(g26430Tree39 h),(g26430Tree40 h),(g26430Tree41 h)]
end Blc.SelfintSingleObject.Compact45
