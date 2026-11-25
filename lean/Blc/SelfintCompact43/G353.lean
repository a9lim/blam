import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g5648 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 5 [3,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5649 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 5 [3,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5650 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 5 [3,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5651 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 5 [3,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5652 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 5 [4,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5653 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 5 [4,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5654 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 3 [0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5655 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 3 [0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5656 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 3 [0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5657 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 3 [0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5658 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 3 [0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5659 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 3 [0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5660 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 3 [0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5661 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 3 [0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5662 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 3 [0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5663 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 3 [0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
