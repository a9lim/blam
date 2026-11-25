import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g6560 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [0,4,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6561 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [0,4,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6562 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [0,4,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6563 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [0,4,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6564 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [0,5,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6565 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [0,5,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6566 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [1,0,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6567 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [1,0,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6568 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [1,0,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6569 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [1,0,0,1,3]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,25,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g6570 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [1,0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6571 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [1,0,0,2,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g6572 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [1,0,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6573 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [1,0,0,3,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,25,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g6574 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [1,0,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6575 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [1,0,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
