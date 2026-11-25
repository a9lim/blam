import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3520 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,3,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3521 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,3,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3522 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,3,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3523 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,3,0,1,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g3524 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,3,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3525 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,3,0,2,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,38,1,38,1,1] (hard := []) (by decide +kernel) .nil)

theorem g3526 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,3,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3527 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,3,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3528 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,3,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3529 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,3,1,0,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g3530 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,3,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3531 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,3,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3532 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,3,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3533 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,3,1,2,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g3534 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,3,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3535 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,3,2,0,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,31,1,1,1,1] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
