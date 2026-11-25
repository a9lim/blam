import Blc.SelfintRowCoverNotation
import Blc.SelfintCompact45.TreeF1168P00
import Blc.SelfintCompact45.TreeF1168P01
import Blc.SelfintCompact45.TreeF1168P02
import Blc.SelfintCompact45.TreeF1168P03
import Blc.SelfintCompact45.TreeF1168P04
import Blc.SelfintCompact45.TreeF1168P05
import Blc.SelfintCompact45.TreeF1168P06
import Blc.SelfintCompact45.TreeF1168P07
import Blc.SelfintCompact45.TreeF1168P08
import Blc.SelfintCompact45.TreeF1168P09
import Blc.SelfintCompact45.TreeF1168P10
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
theorem f1168 : BadRow (Grammar43.fourRow ⟨0,2,0,4,6,3⟩ [0,0] [0,0,2,0,0,1]) := four_cover 4 (by decide) ⟨0,2,0,4,6,3⟩ [0,0] [0,0,2,0,0,1] rowProofs%[(f1168Tree0 .nil),(f1168Tree1 .nil),(f1168Tree2 .nil),(f1168Tree3 .nil),(f1168Tree4 .nil),(f1168Tree5 .nil),(f1168Tree6 .nil),(f1168Tree7 .nil),(f1168Tree8 .nil),(f1168Tree9 .nil),(f1168Tree10 .nil),(f1168Tree11 .nil),(f1168Tree12 .nil),(f1168Tree13 .nil),(f1168Tree14 .nil),(f1168Tree15 .nil),(f1168Tree16 .nil),(f1168Tree17 .nil),(f1168Tree18 .nil),(f1168Tree19 .nil),(f1168Tree20 .nil),(f1168Tree21 .nil),(f1168Tree22 .nil),(f1168Tree23 .nil),(f1168Tree24 .nil),(f1168Tree25 .nil),(f1168Tree26 .nil),(f1168Tree27 .nil),(f1168Tree28 .nil),(f1168Tree29 .nil),(f1168Tree30 .nil),(f1168Tree31 .nil),(f1168Tree32 .nil),(f1168Tree33 .nil),(f1168Tree34 .nil),(f1168Tree35 .nil),(f1168Tree36 .nil),(f1168Tree37 .nil),(f1168Tree38 .nil),(f1168Tree39 .nil),(f1168Tree40 .nil),(f1168Tree41 .nil)]
end Blc.SelfintSingleObject.Compact45
