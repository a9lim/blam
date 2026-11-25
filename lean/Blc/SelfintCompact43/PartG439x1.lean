import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g7036 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [1,3,0,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,1,30,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,2,4,4,4,4,4,4,4,2,2,4,2,2,4,4,4,4,4,4,4,4,15,15,15,15,15,1,1,17,17,1,17,14,11,4,4] (hard := []) (by decide +kernel) .nil)

theorem g7037 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [1,3,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7038 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [1,3,1,0,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,1,1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,2,2,4,2,1,20,4,4,4,1,4,4,4,4,4,4,15,15,15,1,1,1,1,14,4] (hard := []) (by decide +kernel) .nil)

theorem g7039 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [1,3,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)


end Blc.SelfintSingleObject.Compact43
