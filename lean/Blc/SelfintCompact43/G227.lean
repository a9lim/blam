import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3632 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [2,2,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3633 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [2,2,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3634 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [2,2,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3635 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [2,2,0,1,2]) :=
  row_of_forall (discharge bank [1,1,39,39,39] (hard := []) (by decide +kernel) .nil)

theorem g3636 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [2,2,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3637 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [2,2,0,2,1]) :=
  row_of_forall (discharge bank [25,1,39,1,39] (hard := []) (by decide +kernel) .nil)

theorem g3638 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [2,2,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3639 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [2,2,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3640 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [2,2,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3641 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [2,2,1,0,2]) :=
  row_of_forall (discharge bank [1,1,39,39,39] (hard := []) (by decide +kernel) .nil)

theorem g3642 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [2,2,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3643 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [2,2,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3644 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [2,2,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3645 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [2,2,1,2,0]) :=
  row_of_forall (discharge bank [25,1,39] (hard := []) (by decide +kernel) .nil)

theorem g3646 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [2,2,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3647 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [2,2,2,0,1]) :=
  row_of_forall (discharge bank [25,25,1,30,1] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
