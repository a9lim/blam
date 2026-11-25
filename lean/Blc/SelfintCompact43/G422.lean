import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g6752 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 4 [0,0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6753 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 4 [0,0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6754 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 4 [0,0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6755 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 4 [0,0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6756 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 4 [0,0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6757 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 4 [0,0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6758 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 4 [0,0,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6759 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 4 [0,0,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6760 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 4 [0,1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6761 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 4 [0,1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6762 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 4 [0,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6763 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 4 [0,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6764 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 4 [0,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6765 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 4 [0,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6766 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 4 [0,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6767 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 4 [0,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
