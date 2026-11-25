import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g5280 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 5 [0,0,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5281 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 5 [0,0,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5282 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 5 [0,0,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5283 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 5 [0,0,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5284 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 5 [0,0,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5285 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 5 [0,0,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5286 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 5 [0,0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5287 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 5 [0,0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5288 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 5 [0,0,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5289 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 5 [0,0,1,2,1]) :=
  row_of_forall (discharge bank [3,5] (hard := []) (by decide +kernel) .nil)

theorem g5290 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 5 [0,0,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5291 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 5 [0,0,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5292 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 5 [0,0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5293 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 5 [0,0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5294 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 5 [0,0,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5295 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 5 [0,0,2,1,1]) :=
  row_of_forall (discharge bank [3,5] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
