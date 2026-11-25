import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g4560 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [2,0,2,3,0]) :=
  row_of_forall (discharge bank [1,1,6,6,1,1,1,6,6,1] (hard := []) (by decide +kernel) .nil)

theorem g4561 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [2,0,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4562 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [2,0,3,0,2]) :=
  row_of_forall (discharge bank [1,1,6,6,1,1,6,6] (hard := []) (by decide +kernel) .nil)

theorem g4563 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [2,0,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4564 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [2,0,3,1,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,11,36,4,4,4,4,4,4,4,4,4,4,4,4,4,4,11,36] (hard := []) (by decide +kernel) .nil)

theorem g4565 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [2,0,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4566 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [2,0,3,2,0]) :=
  row_of_forall (discharge bank [1,25,6,6,36,1,25,6,6,36] (hard := []) (by decide +kernel) .nil)

theorem g4567 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [2,0,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4568 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [2,0,4,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4569 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [2,0,4,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4570 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [2,0,4,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4571 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [2,0,4,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4572 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [2,0,5,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4573 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [2,0,5,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4574 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [2,1,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4575 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [2,1,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
