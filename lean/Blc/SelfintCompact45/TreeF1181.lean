import Blc.SelfintRowCoverNotation
import Blc.SelfintCompact45.TreeF1181P00
import Blc.SelfintCompact45.TreeF1181P01
import Blc.SelfintCompact45.TreeF1181P02
import Blc.SelfintCompact45.TreeF1181P03
import Blc.SelfintCompact45.TreeF1181P04
import Blc.SelfintCompact45.TreeF1181P05
import Blc.SelfintCompact45.TreeF1181P06
import Blc.SelfintCompact45.TreeF1181P07
import Blc.SelfintCompact45.TreeF1181P08
import Blc.SelfintCompact45.TreeF1181P09
import Blc.SelfintCompact45.TreeF1181P10
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
theorem f1181 : BadRow (Grammar43.fourRow ⟨0,2,0,4,6,3⟩ [0,0] [0,1,2,0,0,0]) := four_cover 4 (by decide) ⟨0,2,0,4,6,3⟩ [0,0] [0,1,2,0,0,0] rowProofs%[(f1181Tree0 .nil),(f1181Tree1 .nil),(f1181Tree2 .nil),(f1181Tree3 .nil),(f1181Tree4 .nil),(f1181Tree5 .nil),(f1181Tree6 .nil),(f1181Tree7 .nil),(f1181Tree8 .nil),(f1181Tree9 .nil),(f1181Tree10 .nil),(f1181Tree11 .nil),(f1181Tree12 .nil),(f1181Tree13 .nil),(f1181Tree14 .nil),(f1181Tree15 .nil),(f1181Tree16 .nil),(f1181Tree17 .nil),(f1181Tree18 .nil),(f1181Tree19 .nil),(f1181Tree20 .nil),(f1181Tree21 .nil),(f1181Tree22 .nil),(f1181Tree23 .nil),(f1181Tree24 .nil),(f1181Tree25 .nil),(f1181Tree26 .nil),(f1181Tree27 .nil),(f1181Tree28 .nil),(f1181Tree29 .nil),(f1181Tree30 .nil),(f1181Tree31 .nil),(f1181Tree32 .nil),(f1181Tree33 .nil),(f1181Tree34 .nil),(f1181Tree35 .nil),(f1181Tree36 .nil),(f1181Tree37 .nil),(f1181Tree38 .nil),(f1181Tree39 .nil),(f1181Tree40 .nil),(f1181Tree41 .nil)]
end Blc.SelfintSingleObject.Compact45
