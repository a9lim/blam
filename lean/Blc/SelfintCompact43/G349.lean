import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g5584 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 5 [1,0,0,0,3]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g5585 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 5 [1,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5586 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 5 [1,0,0,1,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,1,1,4,4,4,4,4,4,4,5,5,5,5,3,5,4,4,3,14] (hard := []) (by decide +kernel) .nil)

theorem g5587 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 5 [1,0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5588 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 5 [1,0,0,2,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,5,5,5,5,3,5,4,4,3,14] (hard := []) (by decide +kernel) .nil)

theorem g5589 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 5 [1,0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5590 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 5 [1,0,0,3,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g5591 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 5 [1,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5592 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 5 [1,0,1,0,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,1,1,4,4,4,4,4,4,4,4,4,4,5,5,5,5,5,5,5,3,5,3,5,4,4,4,4,3,14,3,14] (hard := []) (by decide +kernel) .nil)

theorem g5593 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 5 [1,0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5594 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 5 [1,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5595 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 5 [1,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5596 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 5 [1,0,1,2,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,5,5,3,5,3,5,4,4,3,14,3,5,4] (hard := []) (by decide +kernel) .nil)

theorem g5597 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 5 [1,0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5598 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 5 [1,0,2,0,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,5,5,5,5,5,3,5,3,5,4,4,4,4,3,14,3,11] (hard := []) (by decide +kernel) .nil)

theorem g5599 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 5 [1,0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
