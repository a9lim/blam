import Blc.SelfintRowCoverNotation
import Blc.SelfintCompact45.TreeF1182P00
import Blc.SelfintCompact45.TreeF1182P01
import Blc.SelfintCompact45.TreeF1182P02
import Blc.SelfintCompact45.TreeF1182P03
import Blc.SelfintCompact45.TreeF1182P04
import Blc.SelfintCompact45.TreeF1182P05
import Blc.SelfintCompact45.TreeF1182P06
import Blc.SelfintCompact45.TreeF1182P07
import Blc.SelfintCompact45.TreeF1182P08
import Blc.SelfintCompact45.TreeF1182P09
import Blc.SelfintCompact45.TreeF1182P10
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
theorem f1182 : BadRow (Grammar43.fourRow ⟨0,2,0,4,6,3⟩ [0,0] [0,2,0,0,0,1]) := four_cover 4 (by decide) ⟨0,2,0,4,6,3⟩ [0,0] [0,2,0,0,0,1] rowProofs%[(f1182Tree0 .nil),(f1182Tree1 .nil),(f1182Tree2 .nil),(f1182Tree3 .nil),(f1182Tree4 .nil),(f1182Tree5 .nil),(f1182Tree6 .nil),(f1182Tree7 .nil),(f1182Tree8 .nil),(f1182Tree9 .nil),(f1182Tree10 .nil),(f1182Tree11 .nil),(f1182Tree12 .nil),(f1182Tree13 .nil),(f1182Tree14 .nil),(f1182Tree15 .nil),(f1182Tree16 .nil),(f1182Tree17 .nil),(f1182Tree18 .nil),(f1182Tree19 .nil),(f1182Tree20 .nil),(f1182Tree21 .nil),(f1182Tree22 .nil),(f1182Tree23 .nil),(f1182Tree24 .nil),(f1182Tree25 .nil),(f1182Tree26 .nil),(f1182Tree27 .nil),(f1182Tree28 .nil),(f1182Tree29 .nil),(f1182Tree30 .nil),(f1182Tree31 .nil),(f1182Tree32 .nil),(f1182Tree33 .nil),(f1182Tree34 .nil),(f1182Tree35 .nil),(f1182Tree36 .nil),(f1182Tree37 .nil),(f1182Tree38 .nil),(f1182Tree39 .nil),(f1182Tree40 .nil),(f1182Tree41 .nil)]
end Blc.SelfintSingleObject.Compact45
