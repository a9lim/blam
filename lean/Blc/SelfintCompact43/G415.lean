import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g6640 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [2,0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6641 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [2,0,0,2,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem g6642 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [2,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6643 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [2,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6644 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [2,0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6645 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [2,0,1,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem g6646 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [2,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6647 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [2,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6648 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [2,0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6649 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [2,0,1,2,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem g6650 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [2,0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6651 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [2,0,2,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem g6652 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [2,0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6653 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [2,0,2,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem g6654 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [2,0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6655 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [2,0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
