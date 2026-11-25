import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g752 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 3 [1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g753 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 3 [1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g754 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 3 [1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g755 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 3 [1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g756 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 3 [1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g757 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 3 [1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g758 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 3 [1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g759 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 3 [1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g760 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 3 [1,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g761 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 3 [1,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g762 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 3 [2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g763 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 3 [2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g764 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 3 [2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g765 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 3 [2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g766 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 3 [2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g767 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 3 [2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
