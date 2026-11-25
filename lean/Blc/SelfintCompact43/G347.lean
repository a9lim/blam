import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g5552 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 5 [0,1,1,0,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,5,5,5,5,5,3,5,9,5,14,5] (hard := []) (by decide +kernel) .nil)

theorem g5553 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 5 [0,1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5554 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 5 [0,1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5555 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 5 [0,1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5556 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 5 [0,1,1,2,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,5,5,5,5,9,5] (hard := []) (by decide +kernel) .nil)

theorem g5557 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 5 [0,1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5558 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 5 [0,1,2,0,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,5,5,5,5,5,3,5,8,5,14,5] (hard := []) (by decide +kernel) .nil)

theorem g5559 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 5 [0,1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5560 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 5 [0,1,2,1,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,5,5,3,5,8,5] (hard := []) (by decide +kernel) .nil)

theorem g5561 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 5 [0,1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5562 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 5 [0,1,3,0,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g5563 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 5 [0,1,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5564 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 5 [0,2,0,0,2]) :=
  row_of_forall (discharge bank [4,4,14,14,4,4,4,4,1,1,4,4,4,3,5,3,5] (hard := []) (by decide +kernel) .nil)

theorem g5565 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 5 [0,2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5566 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 5 [0,2,0,1,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,5,5,5,5,5,3,5] (hard := []) (by decide +kernel) .nil)

theorem g5567 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 5 [0,2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
