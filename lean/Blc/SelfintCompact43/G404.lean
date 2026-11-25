import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g6464 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [0,0,0,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6465 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [0,0,0,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6466 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [0,0,1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6467 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [0,0,1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6468 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [0,0,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6469 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [0,0,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6470 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [0,0,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6471 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [0,0,1,2,2]) :=
  row_of_forall (discharge bank [2,9] (hard := []) (by decide +kernel) .nil)

theorem g6472 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [0,0,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6473 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [0,0,1,3,1]) :=
  row_of_forall (discharge bank [7,1] (hard := []) (by decide +kernel) .nil)

theorem g6474 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [0,0,1,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6475 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [0,0,1,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6476 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [0,0,2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6477 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [0,0,2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6478 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [0,0,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6479 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [0,0,2,1,2]) :=
  row_of_forall (discharge bank [2,9] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
