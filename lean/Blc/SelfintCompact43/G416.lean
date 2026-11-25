import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g6656 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [2,1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6657 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [2,1,0,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem g6658 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [2,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6659 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [2,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6660 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [2,1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6661 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [2,1,0,2,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem g6662 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [2,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6663 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [2,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6664 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [2,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6665 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [2,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6666 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [2,1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6667 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [2,1,2,0,0]) :=
  row_of_forall (discharge bank [2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem g6668 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [2,2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6669 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [2,2,0,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem g6670 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [2,2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6671 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [2,2,0,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
