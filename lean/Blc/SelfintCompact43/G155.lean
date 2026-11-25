import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2480 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,1,0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2481 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,1,0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2482 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,1,0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2483 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,1,0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2484 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,1,0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2485 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,1,0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2486 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,1,0,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2487 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,1,0,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2488 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,1,1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2489 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,1,1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2490 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,1,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2491 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,1,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2492 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,1,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2493 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,1,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2494 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,1,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2495 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,1,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
