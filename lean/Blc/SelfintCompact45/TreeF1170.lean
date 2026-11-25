import Blc.SelfintRowCoverNotation
import Blc.SelfintCompact45.TreeF1170P00
import Blc.SelfintCompact45.TreeF1170P01
import Blc.SelfintCompact45.TreeF1170P02
import Blc.SelfintCompact45.TreeF1170P03
import Blc.SelfintCompact45.TreeF1170P04
import Blc.SelfintCompact45.TreeF1170P05
import Blc.SelfintCompact45.TreeF1170P06
import Blc.SelfintCompact45.TreeF1170P07
import Blc.SelfintCompact45.TreeF1170P08
import Blc.SelfintCompact45.TreeF1170P09
import Blc.SelfintCompact45.TreeF1170P10
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
theorem f1170 : BadRow (Grammar43.fourRow ⟨0,2,0,4,6,3⟩ [0,0] [0,0,2,1,0,0]) := four_cover 4 (by decide) ⟨0,2,0,4,6,3⟩ [0,0] [0,0,2,1,0,0] rowProofs%[(f1170Tree0 .nil),(f1170Tree1 .nil),(f1170Tree2 .nil),(f1170Tree3 .nil),(f1170Tree4 .nil),(f1170Tree5 .nil),(f1170Tree6 .nil),(f1170Tree7 .nil),(f1170Tree8 .nil),(f1170Tree9 .nil),(f1170Tree10 .nil),(f1170Tree11 .nil),(f1170Tree12 .nil),(f1170Tree13 .nil),(f1170Tree14 .nil),(f1170Tree15 .nil),(f1170Tree16 .nil),(f1170Tree17 .nil),(f1170Tree18 .nil),(f1170Tree19 .nil),(f1170Tree20 .nil),(f1170Tree21 .nil),(f1170Tree22 .nil),(f1170Tree23 .nil),(f1170Tree24 .nil),(f1170Tree25 .nil),(f1170Tree26 .nil),(f1170Tree27 .nil),(f1170Tree28 .nil),(f1170Tree29 .nil),(f1170Tree30 .nil),(f1170Tree31 .nil),(f1170Tree32 .nil),(f1170Tree33 .nil),(f1170Tree34 .nil),(f1170Tree35 .nil),(f1170Tree36 .nil),(f1170Tree37 .nil),(f1170Tree38 .nil),(f1170Tree39 .nil),(f1170Tree40 .nil),(f1170Tree41 .nil)]
end Blc.SelfintSingleObject.Compact45
