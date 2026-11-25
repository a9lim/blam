import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g6624 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [1,2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6625 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [1,2,1,1,0]) :=
  row_of_forall (discharge bank [2,2,2,4,4,4,4,1,1] (hard := []) (by decide +kernel) .nil)

theorem g6626 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [1,2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6627 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [1,2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6628 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [1,3,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6629 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [1,3,0,0,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g6630 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [1,3,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6631 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [1,3,0,1,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,1,1] (hard := []) (by decide +kernel) .nil)

theorem g6632 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [1,3,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6633 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [1,3,1,0,0]) :=
  row_of_forall (discharge bank [4,4,4,1] (hard := []) (by decide +kernel) .nil)

theorem g6634 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [1,4,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6635 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [1,4,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6636 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [2,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6637 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [2,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6638 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [2,0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6639 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [2,0,0,1,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
