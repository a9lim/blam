import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g6480 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [0,0,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6481 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [0,0,2,2,1]) :=
  row_of_forall (discharge bank [1,1] (hard := []) (by decide +kernel) .nil)

theorem g6482 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [0,0,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6483 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [0,0,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6484 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [0,0,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6485 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [0,0,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6486 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [0,0,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6487 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [0,0,3,1,1]) :=
  row_of_forall (discharge bank [7,1] (hard := []) (by decide +kernel) .nil)

theorem g6488 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [0,0,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6489 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [0,0,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6490 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [0,0,4,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6491 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [0,0,4,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6492 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [0,0,4,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6493 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [0,0,4,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6494 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [0,0,5,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6495 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [0,0,5,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
