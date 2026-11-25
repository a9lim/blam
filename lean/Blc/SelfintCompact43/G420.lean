import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g6720 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 3 [1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6721 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 3 [1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6722 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 3 [1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6723 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 3 [1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6724 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 3 [1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6725 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 3 [1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6726 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 3 [1,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6727 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 3 [1,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6728 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 3 [2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6729 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 3 [2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6730 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 3 [2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6731 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 3 [2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6732 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 3 [2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6733 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 3 [2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6734 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 3 [2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6735 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 3 [2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
