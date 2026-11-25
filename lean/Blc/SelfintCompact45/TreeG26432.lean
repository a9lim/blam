import Blc.SelfintRowCoverNotation
import Blc.SelfintCompact45.TreeG26432P00
import Blc.SelfintCompact45.TreeG26432P01
import Blc.SelfintCompact45.TreeG26432P02
import Blc.SelfintCompact45.TreeG26432P03
import Blc.SelfintCompact45.TreeG26432P04
import Blc.SelfintCompact45.TreeG26432P05
import Blc.SelfintCompact45.TreeG26432P06
import Blc.SelfintCompact45.TreeG26432P07
import Blc.SelfintCompact45.TreeG26432P08
import Blc.SelfintCompact45.TreeG26432P09
import Blc.SelfintCompact45.TreeG26432P10
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
theorem g26432 (h : BadRow thg26432) : BadRow (Fast45.row true false k335 6 3 4 6 [0,0,2,1,0,0]) := frame_cover 4 (by decide) true false k335 6 3 4 6 [0,0,2,1,0,0] rowProofs%[(g26432Tree0 h),(g26432Tree1 h),(g26432Tree2 h),(g26432Tree3 h),(g26432Tree4 h),(g26432Tree5 h),(g26432Tree6 h),(g26432Tree7 h),(g26432Tree8 h),(g26432Tree9 h),(g26432Tree10 h),(g26432Tree11 h),(g26432Tree12 h),(g26432Tree13 h),(g26432Tree14 h),(g26432Tree15 h),(g26432Tree16 h),(g26432Tree17 h),(g26432Tree18 h),(g26432Tree19 h),(g26432Tree20 h),(g26432Tree21 h),(g26432Tree22 h),(g26432Tree23 h),(g26432Tree24 h),(g26432Tree25 h),(g26432Tree26 h),(g26432Tree27 h),(g26432Tree28 h),(g26432Tree29 h),(g26432Tree30 h),(g26432Tree31 h),(g26432Tree32 h),(g26432Tree33 h),(g26432Tree34 h),(g26432Tree35 h),(g26432Tree36 h),(g26432Tree37 h),(g26432Tree38 h),(g26432Tree39 h),(g26432Tree40 h),(g26432Tree41 h)]
end Blc.SelfintSingleObject.Compact45
