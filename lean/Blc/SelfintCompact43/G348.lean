import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g5568 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 5 [0,2,0,2,0]) :=
  row_of_forall (discharge bank [4,4,14,14,4,4,4,4,4,4,4,4,3,5,3,5] (hard := []) (by decide +kernel) .nil)

theorem g5569 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 5 [0,2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5570 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 5 [0,2,1,0,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,5,5,5,3,5,3,5] (hard := []) (by decide +kernel) .nil)

theorem g5571 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 5 [0,2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5572 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 5 [0,2,1,1,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,5,5,5,3,5] (hard := []) (by decide +kernel) .nil)

theorem g5573 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 5 [0,2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5574 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 5 [0,2,2,0,0]) :=
  row_of_forall (discharge bank [14,14,4] (hard := []) (by decide +kernel) .nil)

theorem g5575 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 5 [0,2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5576 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 5 [0,3,0,0,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g5577 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 5 [0,3,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5578 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 5 [0,3,0,1,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g5579 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 5 [0,3,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5580 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 5 [0,3,1,0,0]) :=
  row_of_forall (discharge bank [4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g5581 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 5 [0,3,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5582 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 5 [0,4,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5583 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 5 [0,4,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
