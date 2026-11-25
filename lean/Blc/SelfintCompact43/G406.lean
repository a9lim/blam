import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g6496 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [0,1,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6497 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [0,1,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6498 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [0,1,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6499 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [0,1,0,1,3]) :=
  row_of_forall (discharge bank [1,1,6,6] (hard := []) (by decide +kernel) .nil)

theorem g6500 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [0,1,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6501 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [0,1,0,2,2]) :=
  row_of_forall (discharge bank [2,2,1,1,6,6,13,13] (hard := []) (by decide +kernel) .nil)

theorem g6502 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [0,1,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6503 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [0,1,0,3,1]) :=
  row_of_forall (discharge bank [1,1,6,6,7,7,14,14] (hard := []) (by decide +kernel) .nil)

theorem g6504 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [0,1,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6505 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [0,1,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6506 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [0,1,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6507 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [0,1,1,0,3]) :=
  row_of_forall (discharge bank [1,1,1,1,6,6,6,6] (hard := []) (by decide +kernel) .nil)

theorem g6508 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [0,1,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6509 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [0,1,1,1,2]) :=
  row_of_forall (discharge bank [1,6] (hard := []) (by decide +kernel) .nil)

theorem g6510 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [0,1,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6511 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [0,1,1,2,1]) :=
  row_of_forall (discharge bank [30,6,13] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
