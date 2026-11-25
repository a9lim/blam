import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g5536 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 5 [0,0,2,2,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,3,5] (hard := []) (by decide +kernel) .nil)

theorem g5537 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 5 [0,0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5538 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 5 [0,0,3,0,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,3,5,3,5,3,5] (hard := []) (by decide +kernel) .nil)

theorem g5539 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 5 [0,0,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5540 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 5 [0,0,3,1,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,3,5] (hard := []) (by decide +kernel) .nil)

theorem g5541 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 5 [0,0,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5542 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 5 [0,0,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5543 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 5 [0,0,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5544 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 5 [0,1,0,0,3]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,3,5,3,5] (hard := []) (by decide +kernel) .nil)

theorem g5545 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 5 [0,1,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5546 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 5 [0,1,0,1,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,5,5,5,5,5,5,3,5,1,5] (hard := []) (by decide +kernel) .nil)

theorem g5547 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 5 [0,1,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5548 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 5 [0,1,0,2,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,5,5,5,5,5,5,1,5] (hard := []) (by decide +kernel) .nil)

theorem g5549 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 5 [0,1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5550 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 5 [0,1,0,3,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,3,5,3,5] (hard := []) (by decide +kernel) .nil)

theorem g5551 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 5 [0,1,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
