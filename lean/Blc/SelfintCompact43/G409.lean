import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g6544 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [0,2,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6545 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [0,2,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6546 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [0,3,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6547 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [0,3,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6548 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [0,3,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6549 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [0,3,0,1,1]) :=
  row_of_forall (discharge bank [7,7] (hard := []) (by decide +kernel) .nil)

theorem g6550 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [0,3,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6551 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [0,3,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6552 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [0,3,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6553 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [0,3,1,0,1]) :=
  row_of_forall (discharge bank [7] (hard := []) (by decide +kernel) .nil)

theorem g6554 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [0,3,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6555 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [0,3,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6556 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [0,3,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6557 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [0,3,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6558 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [0,4,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6559 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [0,4,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
