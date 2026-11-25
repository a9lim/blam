import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g6528 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [0,2,0,1,2]) :=
  row_of_forall (discharge bank [3,2,3,2] (hard := []) (by decide +kernel) .nil)

theorem g6529 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [0,2,0,1,2]) :=
  row_of_forall (discharge bank [2,2,2,2,6,11,9] (hard := []) (by decide +kernel) .nil)

theorem g6530 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [0,2,0,2,1]) :=
  row_of_forall (discharge bank [3,2,3,2] (hard := []) (by decide +kernel) .nil)

theorem g6531 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [0,2,0,2,1]) :=
  row_of_forall (discharge bank [2,2,6,14,9] (hard := []) (by decide +kernel) .nil)

theorem g6532 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [0,2,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6533 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [0,2,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6534 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [0,2,1,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem g6535 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [0,2,1,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,6,6,40] (hard := []) (by decide +kernel) .nil)

theorem g6536 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [0,2,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6537 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [0,2,1,1,1]) :=
  row_of_forall (discharge bank [40,9] (hard := []) (by decide +kernel) .nil)

theorem g6538 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [0,2,1,2,0]) :=
  row_of_forall (discharge bank [2,3,2,3] (hard := []) (by decide +kernel) .nil)

theorem g6539 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [0,2,1,2,0]) :=
  row_of_forall (discharge bank [2,2,6] (hard := []) (by decide +kernel) .nil)

theorem g6540 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [0,2,2,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem g6541 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [0,2,2,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,6,6] (hard := []) (by decide +kernel) .nil)

theorem g6542 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [0,2,2,1,0]) :=
  row_of_forall (discharge bank [2,3,2,3] (hard := []) (by decide +kernel) .nil)

theorem g6543 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [0,2,2,1,0]) :=
  row_of_forall (discharge bank [2,2,6] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
