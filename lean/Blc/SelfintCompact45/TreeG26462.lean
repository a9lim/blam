import Blc.SelfintRowCoverNotation
import Blc.SelfintCompact45.TreeG26462P00
import Blc.SelfintCompact45.TreeG26462P01
import Blc.SelfintCompact45.TreeG26462P02
import Blc.SelfintCompact45.TreeG26462P03
import Blc.SelfintCompact45.TreeG26462P04
import Blc.SelfintCompact45.TreeG26462P05
import Blc.SelfintCompact45.TreeG26462P06
import Blc.SelfintCompact45.TreeG26462P07
import Blc.SelfintCompact45.TreeG26462P08
import Blc.SelfintCompact45.TreeG26462P09
import Blc.SelfintCompact45.TreeG26462P10
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
theorem g26462 (h : BadRow thg26462) : BadRow (Fast45.row true false k335 6 3 4 6 [0,2,1,0,0,0]) := frame_cover 4 (by decide) true false k335 6 3 4 6 [0,2,1,0,0,0] rowProofs%[(g26462Tree0 h),(g26462Tree1 h),(g26462Tree2 h),(g26462Tree3 h),(g26462Tree4 h),(g26462Tree5 h),(g26462Tree6 h),(g26462Tree7 h),(g26462Tree8 h),(g26462Tree9 h),(g26462Tree10 h),(g26462Tree11 h),(g26462Tree12 h),(g26462Tree13 h),(g26462Tree14 h),(g26462Tree15 h),(g26462Tree16 h),(g26462Tree17 h),(g26462Tree18 h),(g26462Tree19 h),(g26462Tree20 h),(g26462Tree21 h),(g26462Tree22 h),(g26462Tree23 h),(g26462Tree24 h),(g26462Tree25 h),(g26462Tree26 h),(g26462Tree27 h),(g26462Tree28 h),(g26462Tree29 h),(g26462Tree30 h),(g26462Tree31 h),(g26462Tree32 h),(g26462Tree33 h),(g26462Tree34 h),(g26462Tree35 h),(g26462Tree36 h),(g26462Tree37 h),(g26462Tree38 h),(g26462Tree39 h),(g26462Tree40 h),(g26462Tree41 h)]
end Blc.SelfintSingleObject.Compact45
