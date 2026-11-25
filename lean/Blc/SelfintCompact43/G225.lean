import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3600 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [2,0,5,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3601 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [2,0,5,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3602 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [2,1,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3603 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [2,1,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3604 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [2,1,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3605 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [2,1,0,1,3]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g3606 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [2,1,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3607 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [2,1,0,2,2]) :=
  row_of_forall (discharge bank [1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g3608 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [2,1,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3609 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [2,1,0,3,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g3610 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [2,1,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3611 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [2,1,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3612 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [2,1,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3613 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [2,1,1,0,3]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g3614 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [2,1,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3615 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [2,1,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
