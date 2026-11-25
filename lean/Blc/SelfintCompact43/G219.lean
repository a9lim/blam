import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3504 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,2,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3505 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,2,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3506 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,2,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3507 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,2,1,3,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,1,1,17] (hard := []) (by decide +kernel) .nil)

theorem g3508 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,2,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3509 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,2,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3510 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,2,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3511 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,2,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3512 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,2,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3513 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,2,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3514 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,2,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3515 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,2,3,0,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,31,1,17,1,17] (hard := []) (by decide +kernel) .nil)

theorem g3516 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,2,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3517 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,2,3,1,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,1,1,17] (hard := []) (by decide +kernel) .nil)

theorem g3518 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,2,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3519 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,2,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
