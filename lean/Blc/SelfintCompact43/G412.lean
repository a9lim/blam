import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g6592 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [1,0,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6593 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [1,0,3,1,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,25,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g6594 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [1,0,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6595 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [1,0,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6596 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [1,1,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6597 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [1,1,0,0,3]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g6598 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [1,1,0,1,2]) :=
  row_of_forall (discharge bank [2,2] (hard := []) (by decide +kernel) .nil)

theorem g6599 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [1,1,0,1,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,4,4,4,1] (hard := []) (by decide +kernel) .nil)

theorem g6600 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [1,1,0,2,1]) :=
  row_of_forall (discharge bank [2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem g6601 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [1,1,0,2,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,4,4,4,4,4,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g6602 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [1,1,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6603 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [1,1,0,3,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g6604 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [1,1,1,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem g6605 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [1,1,1,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,4,4,1,1] (hard := []) (by decide +kernel) .nil)

theorem g6606 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [1,1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6607 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [1,1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
