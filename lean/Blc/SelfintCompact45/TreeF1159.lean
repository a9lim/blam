import Blc.SelfintRowCoverNotation
import Blc.SelfintCompact45.TreeF1159P00
import Blc.SelfintCompact45.TreeF1159P01
import Blc.SelfintCompact45.TreeF1159P02
import Blc.SelfintCompact45.TreeF1159P03
import Blc.SelfintCompact45.TreeF1159P04
import Blc.SelfintCompact45.TreeF1159P05
import Blc.SelfintCompact45.TreeF1159P06
import Blc.SelfintCompact45.TreeF1159P07
import Blc.SelfintCompact45.TreeF1159P08
import Blc.SelfintCompact45.TreeF1159P09
import Blc.SelfintCompact45.TreeF1159P10
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
theorem f1159 : BadRow (Grammar43.fourRow ⟨0,2,0,4,6,3⟩ [0,0] [0,0,0,2,0,1]) := four_cover 4 (by decide) ⟨0,2,0,4,6,3⟩ [0,0] [0,0,0,2,0,1] rowProofs%[(f1159Tree0 .nil),(f1159Tree1 .nil),(f1159Tree2 .nil),(f1159Tree3 .nil),(f1159Tree4 .nil),(f1159Tree5 .nil),(f1159Tree6 .nil),(f1159Tree7 .nil),(f1159Tree8 .nil),(f1159Tree9 .nil),(f1159Tree10 .nil),(f1159Tree11 .nil),(f1159Tree12 .nil),(f1159Tree13 .nil),(f1159Tree14 .nil),(f1159Tree15 .nil),(f1159Tree16 .nil),(f1159Tree17 .nil),(f1159Tree18 .nil),(f1159Tree19 .nil),(f1159Tree20 .nil),(f1159Tree21 .nil),(f1159Tree22 .nil),(f1159Tree23 .nil),(f1159Tree24 .nil),(f1159Tree25 .nil),(f1159Tree26 .nil),(f1159Tree27 .nil),(f1159Tree28 .nil),(f1159Tree29 .nil),(f1159Tree30 .nil),(f1159Tree31 .nil),(f1159Tree32 .nil),(f1159Tree33 .nil),(f1159Tree34 .nil),(f1159Tree35 .nil),(f1159Tree36 .nil),(f1159Tree37 .nil),(f1159Tree38 .nil),(f1159Tree39 .nil),(f1159Tree40 .nil),(f1159Tree41 .nil)]
end Blc.SelfintSingleObject.Compact45
