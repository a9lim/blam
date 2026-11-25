import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2512 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,1,4,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2513 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,1,4,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2514 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,1,4,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2515 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,1,4,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2516 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,1,5,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2517 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,1,5,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2518 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,2,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2519 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,2,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2520 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,2,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2521 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,2,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2522 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,2,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2523 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,2,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2524 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,2,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2525 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,2,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2526 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,2,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2527 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,2,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
