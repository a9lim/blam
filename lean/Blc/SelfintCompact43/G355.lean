import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g5680 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 3 [3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5681 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 3 [3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5682 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 3 [4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5683 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 3 [4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5684 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 4 [0,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5685 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 4 [0,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5686 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 4 [0,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5687 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 4 [0,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5688 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 4 [0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5689 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 4 [0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5690 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 4 [0,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5691 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 4 [0,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5692 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 4 [0,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5693 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 4 [0,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5694 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 4 [0,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5695 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 4 [0,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
