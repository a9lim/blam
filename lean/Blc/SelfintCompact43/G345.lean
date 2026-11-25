import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g5520 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 5 [0,0,0,3,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,3,5,3,5] (hard := []) (by decide +kernel) .nil)

theorem g5521 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 5 [0,0,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5522 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 5 [0,0,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5523 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 5 [0,0,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5524 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 5 [0,0,1,0,3]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,3,5,3,5,3,5] (hard := []) (by decide +kernel) .nil)

theorem g5525 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 5 [0,0,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5526 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 5 [0,0,1,1,2]) :=
  row_of_forall (discharge bank [4,4,4,4,5,5,5] (hard := []) (by decide +kernel) .nil)

theorem g5527 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 5 [0,0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5528 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 5 [0,0,1,2,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,5,5,5] (hard := []) (by decide +kernel) .nil)

theorem g5529 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 5 [0,0,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5530 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 5 [0,0,1,3,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,3,5,3,5] (hard := []) (by decide +kernel) .nil)

theorem g5531 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 5 [0,0,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5532 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 5 [0,0,2,0,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,14,14,4,4,4,4,4,3,5,3,5] (hard := []) (by decide +kernel) .nil)

theorem g5533 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 5 [0,0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5534 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 5 [0,0,2,1,1]) :=
  row_of_forall (discharge bank [4,4,4,4,5,5,5] (hard := []) (by decide +kernel) .nil)

theorem g5535 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 5 [0,0,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
