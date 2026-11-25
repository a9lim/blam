import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g6688 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [3,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6689 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [3,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6690 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [3,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6691 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [3,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6692 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [3,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6693 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [3,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6694 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [3,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6695 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [3,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6696 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [4,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6697 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [4,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6698 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [4,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6699 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [4,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6700 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [4,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6701 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [4,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6702 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [4,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6703 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [4,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
