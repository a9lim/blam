import Blc.SelfintRowCoverNotation
import Blc.SelfintCompact45.TreeF1169P00
import Blc.SelfintCompact45.TreeF1169P01
import Blc.SelfintCompact45.TreeF1169P02
import Blc.SelfintCompact45.TreeF1169P03
import Blc.SelfintCompact45.TreeF1169P04
import Blc.SelfintCompact45.TreeF1169P05
import Blc.SelfintCompact45.TreeF1169P06
import Blc.SelfintCompact45.TreeF1169P07
import Blc.SelfintCompact45.TreeF1169P08
import Blc.SelfintCompact45.TreeF1169P09
import Blc.SelfintCompact45.TreeF1169P10
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar TreeWords
set_option maxRecDepth 30000
set_option maxHeartbeats 30000000
set_option Elab.async false
theorem f1169 : BadRow (Grammar43.fourRow ⟨0,2,0,4,6,3⟩ [0,0] [0,0,2,0,1,0]) := four_cover 4 (by decide) ⟨0,2,0,4,6,3⟩ [0,0] [0,0,2,0,1,0] rowProofs%[(f1169Tree0 .nil),(f1169Tree1 .nil),(f1169Tree2 .nil),(f1169Tree3 .nil),(f1169Tree4 .nil),(f1169Tree5 .nil),(f1169Tree6 .nil),(f1169Tree7 .nil),(f1169Tree8 .nil),(f1169Tree9 .nil),(f1169Tree10 .nil),(f1169Tree11 .nil),(f1169Tree12 .nil),(f1169Tree13 .nil),(f1169Tree14 .nil),(f1169Tree15 .nil),(f1169Tree16 .nil),(f1169Tree17 .nil),(f1169Tree18 .nil),(f1169Tree19 .nil),(f1169Tree20 .nil),(f1169Tree21 .nil),(f1169Tree22 .nil),(f1169Tree23 .nil),(f1169Tree24 .nil),(f1169Tree25 .nil),(f1169Tree26 .nil),(f1169Tree27 .nil),(f1169Tree28 .nil),(f1169Tree29 .nil),(f1169Tree30 .nil),(f1169Tree31 .nil),(f1169Tree32 .nil),(f1169Tree33 .nil),(f1169Tree34 .nil),(f1169Tree35 .nil),(f1169Tree36 .nil),(f1169Tree37 .nil),(f1169Tree38 .nil),(f1169Tree39 .nil),(f1169Tree40 .nil),(f1169Tree41 .nil)]
end Blc.SelfintSingleObject.Compact45
