import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g5744 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 4 [2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5745 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 4 [2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5746 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 4 [3,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5747 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 4 [3,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5748 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 4 [3,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5749 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 4 [3,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5750 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 4 [3,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5751 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 4 [3,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5752 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 4 [4,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5753 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 4 [4,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5754 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 5 [0,0,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5755 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 5 [0,0,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5756 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 5 [0,0,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5757 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 5 [0,0,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5758 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 5 [0,0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5759 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 5 [0,0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
