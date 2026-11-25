import Blc.SelfintRowCoverNotation
import Blc.SelfintCompact45.TreeG26412P00
import Blc.SelfintCompact45.TreeG26412P01
import Blc.SelfintCompact45.TreeG26412P02
import Blc.SelfintCompact45.TreeG26412P03
import Blc.SelfintCompact45.TreeG26412P04
import Blc.SelfintCompact45.TreeG26412P05
import Blc.SelfintCompact45.TreeG26412P06
import Blc.SelfintCompact45.TreeG26412P07
import Blc.SelfintCompact45.TreeG26412P08
import Blc.SelfintCompact45.TreeG26412P09
import Blc.SelfintCompact45.TreeG26412P10
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
theorem g26412 (h : BadRow thg26412) : BadRow (Fast45.row true false k335 6 3 4 6 [0,0,0,2,1,0]) := frame_cover 4 (by decide) true false k335 6 3 4 6 [0,0,0,2,1,0] rowProofs%[(g26412Tree0 h),(g26412Tree1 h),(g26412Tree2 h),(g26412Tree3 h),(g26412Tree4 h),(g26412Tree5 h),(g26412Tree6 h),(g26412Tree7 h),(g26412Tree8 h),(g26412Tree9 h),(g26412Tree10 h),(g26412Tree11 h),(g26412Tree12 h),(g26412Tree13 h),(g26412Tree14 h),(g26412Tree15 h),(g26412Tree16 h),(g26412Tree17 h),(g26412Tree18 h),(g26412Tree19 h),(g26412Tree20 h),(g26412Tree21 h),(g26412Tree22 h),(g26412Tree23 h),(g26412Tree24 h),(g26412Tree25 h),(g26412Tree26 h),(g26412Tree27 h),(g26412Tree28 h),(g26412Tree29 h),(g26412Tree30 h),(g26412Tree31 h),(g26412Tree32 h),(g26412Tree33 h),(g26412Tree34 h),(g26412Tree35 h),(g26412Tree36 h),(g26412Tree37 h),(g26412Tree38 h),(g26412Tree39 h),(g26412Tree40 h),(g26412Tree41 h)]
end Blc.SelfintSingleObject.Compact45
