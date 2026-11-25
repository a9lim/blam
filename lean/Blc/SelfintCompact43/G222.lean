import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3552 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,5,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3553 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,5,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3554 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,5,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3555 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,5,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3556 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,5,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3557 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,5,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3558 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,6,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3559 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,6,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3560 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [2,0,0,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3561 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [2,0,0,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3562 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [2,0,0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3563 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [2,0,0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3564 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [2,0,0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3565 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [2,0,0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3566 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [2,0,0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3567 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [2,0,0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
