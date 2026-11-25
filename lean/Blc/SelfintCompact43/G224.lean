import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3584 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [2,0,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3585 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [2,0,2,1,2]) :=
  row_of_forall (discharge bank [1,39,1] (hard := []) (by decide +kernel) .nil)

theorem g3586 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [2,0,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3587 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [2,0,2,2,1]) :=
  row_of_forall (discharge bank [39,1,1] (hard := []) (by decide +kernel) .nil)

theorem g3588 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [2,0,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3589 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [2,0,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3590 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [2,0,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3591 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [2,0,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3592 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [2,0,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3593 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [2,0,3,1,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g3594 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [2,0,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3595 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [2,0,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3596 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [2,0,4,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3597 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [2,0,4,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3598 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [2,0,4,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3599 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [2,0,4,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
