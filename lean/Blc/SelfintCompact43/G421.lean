import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g6736 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 3 [3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6737 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 3 [3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6738 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 3 [3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6739 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 3 [3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6740 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 3 [3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6741 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 3 [3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6742 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 3 [4,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6743 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 3 [4,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6744 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 3 [4,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6745 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 3 [4,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6746 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 3 [5,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6747 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 3 [5,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6748 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 4 [0,0,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6749 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 4 [0,0,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6750 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 4 [0,0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6751 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 4 [0,0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
