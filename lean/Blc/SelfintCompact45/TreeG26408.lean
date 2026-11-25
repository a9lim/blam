import Blc.SelfintRowCoverNotation
import Blc.SelfintCompact45.TreeG26408P00
import Blc.SelfintCompact45.TreeG26408P01
import Blc.SelfintCompact45.TreeG26408P02
import Blc.SelfintCompact45.TreeG26408P03
import Blc.SelfintCompact45.TreeG26408P04
import Blc.SelfintCompact45.TreeG26408P05
import Blc.SelfintCompact45.TreeG26408P06
import Blc.SelfintCompact45.TreeG26408P07
import Blc.SelfintCompact45.TreeG26408P08
import Blc.SelfintCompact45.TreeG26408P09
import Blc.SelfintCompact45.TreeG26408P10
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
theorem g26408 (h : BadRow thg26408) : BadRow (Fast45.row true false k335 6 3 4 6 [0,0,0,1,2,0]) := frame_cover 4 (by decide) true false k335 6 3 4 6 [0,0,0,1,2,0] rowProofs%[(g26408Tree0 h),(g26408Tree1 h),(g26408Tree2 h),(g26408Tree3 h),(g26408Tree4 h),(g26408Tree5 h),(g26408Tree6 h),(g26408Tree7 h),(g26408Tree8 h),(g26408Tree9 h),(g26408Tree10 h),(g26408Tree11 h),(g26408Tree12 h),(g26408Tree13 h),(g26408Tree14 h),(g26408Tree15 h),(g26408Tree16 h),(g26408Tree17 h),(g26408Tree18 h),(g26408Tree19 h),(g26408Tree20 h),(g26408Tree21 h),(g26408Tree22 h),(g26408Tree23 h),(g26408Tree24 h),(g26408Tree25 h),(g26408Tree26 h),(g26408Tree27 h),(g26408Tree28 h),(g26408Tree29 h),(g26408Tree30 h),(g26408Tree31 h),(g26408Tree32 h),(g26408Tree33 h),(g26408Tree34 h),(g26408Tree35 h),(g26408Tree36 h),(g26408Tree37 h),(g26408Tree38 h),(g26408Tree39 h),(g26408Tree40 h),(g26408Tree41 h)]
end Blc.SelfintSingleObject.Compact45
