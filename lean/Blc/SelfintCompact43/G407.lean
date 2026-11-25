import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g6512 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [0,1,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6513 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [0,1,1,3,0]) :=
  row_of_forall (discharge bank [1,6] (hard := []) (by decide +kernel) .nil)

theorem g6514 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [0,1,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6515 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [0,1,2,0,2]) :=
  row_of_forall (discharge bank [2,1,1,6,6,13] (hard := []) (by decide +kernel) .nil)

theorem g6516 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [0,1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6517 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [0,1,2,1,1]) :=
  row_of_forall (discharge bank [1,30,6,6,13] (hard := []) (by decide +kernel) .nil)

theorem g6518 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [0,1,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6519 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [0,1,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6520 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [0,1,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6521 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [0,1,3,0,1]) :=
  row_of_forall (discharge bank [1,1,6,6,7] (hard := []) (by decide +kernel) .nil)

theorem g6522 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [0,1,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6523 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [0,1,3,1,0]) :=
  row_of_forall (discharge bank [1,6] (hard := []) (by decide +kernel) .nil)

theorem g6524 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [0,1,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6525 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [0,1,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6526 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [0,2,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6527 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [0,2,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
