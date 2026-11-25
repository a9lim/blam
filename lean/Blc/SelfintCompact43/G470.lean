import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g7520 : BadRow (Grammar43.fiveRow 7 7 3 false 3 5 3 [3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7521 : BadRow (Grammar43.fiveRow 7 7 3 true 3 5 3 [3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7522 : BadRow (Grammar43.fiveRow 7 7 3 false 3 5 4 [0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7523 : BadRow (Grammar43.fiveRow 7 7 3 true 3 5 4 [0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7524 : BadRow (Grammar43.fiveRow 7 7 3 false 3 5 4 [0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7525 : BadRow (Grammar43.fiveRow 7 7 3 true 3 5 4 [0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7526 : BadRow (Grammar43.fiveRow 7 7 3 false 3 5 4 [0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7527 : BadRow (Grammar43.fiveRow 7 7 3 true 3 5 4 [0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7528 : BadRow (Grammar43.fiveRow 7 7 3 false 3 5 4 [0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7529 : BadRow (Grammar43.fiveRow 7 7 3 true 3 5 4 [0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7530 : BadRow (Grammar43.fiveRow 7 7 3 false 3 5 4 [0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7531 : BadRow (Grammar43.fiveRow 7 7 3 true 3 5 4 [0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7532 : BadRow (Grammar43.fiveRow 7 7 3 false 3 5 4 [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7533 : BadRow (Grammar43.fiveRow 7 7 3 true 3 5 4 [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7534 : BadRow (Grammar43.fiveRow 7 7 3 false 3 5 4 [0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7535 : BadRow (Grammar43.fiveRow 7 7 3 true 3 5 4 [0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
