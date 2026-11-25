import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g5471 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 4 [0,3,1,0]) :=
  row_of_forall (discharge bank [4,4,4,5,41,1,4,4,4,5,41,1,4,4,4,5,41,1,4,4,4,5,41,1,4,4,4,6,41,1,4,4,4,6,41,1,5,6,5,7,5,1,14,4,16,25,1,1] (hard := []) (by decide +kernel) .nil)


end Blc.SelfintSingleObject.Compact43
