import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g5392 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 5 [2,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5393 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 5 [2,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5394 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 5 [2,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5395 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 5 [2,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5396 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 5 [2,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5397 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 5 [2,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5398 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 5 [2,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5399 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 5 [2,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5400 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 5 [2,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5401 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 5 [2,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5402 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 5 [2,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5403 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 5 [2,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5404 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 5 [3,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5405 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 5 [3,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5406 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 5 [3,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5407 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 5 [3,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
