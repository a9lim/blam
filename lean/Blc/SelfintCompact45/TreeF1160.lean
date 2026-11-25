import Blc.SelfintRowCoverNotation
import Blc.SelfintCompact45.TreeF1160P00
import Blc.SelfintCompact45.TreeF1160P01
import Blc.SelfintCompact45.TreeF1160P02
import Blc.SelfintCompact45.TreeF1160P03
import Blc.SelfintCompact45.TreeF1160P04
import Blc.SelfintCompact45.TreeF1160P05
import Blc.SelfintCompact45.TreeF1160P06
import Blc.SelfintCompact45.TreeF1160P07
import Blc.SelfintCompact45.TreeF1160P08
import Blc.SelfintCompact45.TreeF1160P09
import Blc.SelfintCompact45.TreeF1160P10
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
theorem f1160 : BadRow (Grammar43.fourRow ⟨0,2,0,4,6,3⟩ [0,0] [0,0,0,2,1,0]) := four_cover 4 (by decide) ⟨0,2,0,4,6,3⟩ [0,0] [0,0,0,2,1,0] rowProofs%[(f1160Tree0 .nil),(f1160Tree1 .nil),(f1160Tree2 .nil),(f1160Tree3 .nil),(f1160Tree4 .nil),(f1160Tree5 .nil),(f1160Tree6 .nil),(f1160Tree7 .nil),(f1160Tree8 .nil),(f1160Tree9 .nil),(f1160Tree10 .nil),(f1160Tree11 .nil),(f1160Tree12 .nil),(f1160Tree13 .nil),(f1160Tree14 .nil),(f1160Tree15 .nil),(f1160Tree16 .nil),(f1160Tree17 .nil),(f1160Tree18 .nil),(f1160Tree19 .nil),(f1160Tree20 .nil),(f1160Tree21 .nil),(f1160Tree22 .nil),(f1160Tree23 .nil),(f1160Tree24 .nil),(f1160Tree25 .nil),(f1160Tree26 .nil),(f1160Tree27 .nil),(f1160Tree28 .nil),(f1160Tree29 .nil),(f1160Tree30 .nil),(f1160Tree31 .nil),(f1160Tree32 .nil),(f1160Tree33 .nil),(f1160Tree34 .nil),(f1160Tree35 .nil),(f1160Tree36 .nil),(f1160Tree37 .nil),(f1160Tree38 .nil),(f1160Tree39 .nil),(f1160Tree40 .nil),(f1160Tree41 .nil)]
end Blc.SelfintSingleObject.Compact45
