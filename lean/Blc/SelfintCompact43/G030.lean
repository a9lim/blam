import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g480 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 5 [2,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g481 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 5 [2,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g482 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 5 [2,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g483 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 5 [2,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g484 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 5 [2,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g485 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 5 [2,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g486 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 5 [2,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g487 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 5 [2,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g488 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 5 [2,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g489 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 5 [2,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g490 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 5 [3,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g491 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 5 [3,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g492 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 5 [3,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g493 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 5 [3,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g494 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 5 [3,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g495 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 5 [3,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
