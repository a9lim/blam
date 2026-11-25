import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g5247 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 4 [1,1,2,0]) :=
  row_of_forall (discharge bank [4,41,4,1,1,1,4,41,4,1,1,1,4,41,4,1,1,1,3,26,15,16,8,1,1,1,1,2] (hard := []) (by decide +kernel) .nil)


end Blc.SelfintSingleObject.Compact43
