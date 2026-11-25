import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3568 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [2,0,0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3569 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [2,0,0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3570 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [2,0,0,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3571 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [2,0,0,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3572 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [2,0,1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3573 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [2,0,1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3574 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [2,0,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3575 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [2,0,1,1,3]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g3576 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [2,0,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3577 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [2,0,1,2,2]) :=
  row_of_forall (discharge bank [1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g3578 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [2,0,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3579 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [2,0,1,3,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g3580 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [2,0,1,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3581 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [2,0,1,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3582 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [2,0,2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3583 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [2,0,2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
