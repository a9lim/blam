import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3536 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,3,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3537 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,3,2,1,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,1,30,1] (hard := []) (by decide +kernel) .nil)

theorem g3538 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,3,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3539 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,3,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3540 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,4,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3541 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,4,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3542 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,4,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3543 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,4,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3544 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,4,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3545 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,4,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3546 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,4,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3547 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,4,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3548 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,4,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3549 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,4,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3550 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,4,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3551 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,4,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
