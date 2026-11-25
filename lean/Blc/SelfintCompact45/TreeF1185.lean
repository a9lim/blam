import Blc.SelfintRowCoverNotation
import Blc.SelfintCompact45.TreeF1185P00
import Blc.SelfintCompact45.TreeF1185P01
import Blc.SelfintCompact45.TreeF1185P02
import Blc.SelfintCompact45.TreeF1185P03
import Blc.SelfintCompact45.TreeF1185P04
import Blc.SelfintCompact45.TreeF1185P05
import Blc.SelfintCompact45.TreeF1185P06
import Blc.SelfintCompact45.TreeF1185P07
import Blc.SelfintCompact45.TreeF1185P08
import Blc.SelfintCompact45.TreeF1185P09
import Blc.SelfintCompact45.TreeF1185P10
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
theorem f1185 : BadRow (Grammar43.fourRow ⟨0,2,0,4,6,3⟩ [0,0] [0,2,1,0,0,0]) := four_cover 4 (by decide) ⟨0,2,0,4,6,3⟩ [0,0] [0,2,1,0,0,0] rowProofs%[(f1185Tree0 .nil),(f1185Tree1 .nil),(f1185Tree2 .nil),(f1185Tree3 .nil),(f1185Tree4 .nil),(f1185Tree5 .nil),(f1185Tree6 .nil),(f1185Tree7 .nil),(f1185Tree8 .nil),(f1185Tree9 .nil),(f1185Tree10 .nil),(f1185Tree11 .nil),(f1185Tree12 .nil),(f1185Tree13 .nil),(f1185Tree14 .nil),(f1185Tree15 .nil),(f1185Tree16 .nil),(f1185Tree17 .nil),(f1185Tree18 .nil),(f1185Tree19 .nil),(f1185Tree20 .nil),(f1185Tree21 .nil),(f1185Tree22 .nil),(f1185Tree23 .nil),(f1185Tree24 .nil),(f1185Tree25 .nil),(f1185Tree26 .nil),(f1185Tree27 .nil),(f1185Tree28 .nil),(f1185Tree29 .nil),(f1185Tree30 .nil),(f1185Tree31 .nil),(f1185Tree32 .nil),(f1185Tree33 .nil),(f1185Tree34 .nil),(f1185Tree35 .nil),(f1185Tree36 .nil),(f1185Tree37 .nil),(f1185Tree38 .nil),(f1185Tree39 .nil),(f1185Tree40 .nil),(f1185Tree41 .nil)]
end Blc.SelfintSingleObject.Compact45
