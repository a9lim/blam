import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3648 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [2,2,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3649 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [2,2,2,1,0]) :=
  row_of_forall (discharge bank [25,25,1] (hard := []) (by decide +kernel) .nil)

theorem g3650 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [2,2,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3651 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [2,2,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3652 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [2,3,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3653 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [2,3,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3654 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [2,3,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3655 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [2,3,0,1,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g3656 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [2,3,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3657 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [2,3,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3658 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [2,3,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3659 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [2,3,1,0,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g3660 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [2,3,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3661 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [2,3,1,1,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g3662 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [2,3,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3663 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [2,3,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
