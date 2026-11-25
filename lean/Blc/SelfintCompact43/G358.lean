import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g5728 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 4 [1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5729 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 4 [1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5730 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 4 [1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5731 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 4 [1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5732 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 4 [1,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5733 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 4 [1,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5734 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 4 [2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5735 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 4 [2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5736 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 4 [2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5737 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 4 [2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5738 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 4 [2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5739 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 4 [2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5740 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 4 [2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5741 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 4 [2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5742 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 4 [2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5743 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 4 [2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
