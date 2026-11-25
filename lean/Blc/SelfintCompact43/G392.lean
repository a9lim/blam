import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g6272 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [3,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6273 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [3,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6274 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [3,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6275 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [3,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6276 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [3,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6277 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [3,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6278 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [3,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6279 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [3,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6280 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [3,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6281 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [3,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6282 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [3,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6283 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [3,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6284 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [3,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6285 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [3,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6286 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [3,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6287 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [3,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
