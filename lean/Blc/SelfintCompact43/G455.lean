import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g7280 : BadRow (Grammar43.fiveRow 7 7 3 false 3 3 4 [0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7281 : BadRow (Grammar43.fiveRow 7 7 3 true 3 3 4 [0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7282 : BadRow (Grammar43.fiveRow 7 7 3 false 3 3 4 [1,0,0,2]) :=
  row_of_forall (discharge bank [2,2,2,5,2,2,2,5,2,2,2,5,2,2,2,5,2,2,2,5] (hard := []) (by decide +kernel) .nil)

theorem g7283 : BadRow (Grammar43.fiveRow 7 7 3 true 3 3 4 [1,0,0,2]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g7284 : BadRow (Grammar43.fiveRow 7 7 3 false 3 3 4 [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7285 : BadRow (Grammar43.fiveRow 7 7 3 true 3 3 4 [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7286 : BadRow (Grammar43.fiveRow 7 7 3 false 3 3 4 [1,0,2,0]) :=
  row_of_forall (discharge bank [2,2,2,5,2,2,2,5,2,2,2,5,2,2,2,5,2,2,2,5] (hard := []) (by decide +kernel) .nil)

theorem g7287 : BadRow (Grammar43.fiveRow 7 7 3 true 3 3 4 [1,0,2,0]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g7288 : BadRow (Grammar43.fiveRow 7 7 3 false 3 3 4 [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7289 : BadRow (Grammar43.fiveRow 7 7 3 true 3 3 4 [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7290 : BadRow (Grammar43.fiveRow 7 7 3 false 3 3 4 [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7291 : BadRow (Grammar43.fiveRow 7 7 3 true 3 3 4 [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7292 : BadRow (Grammar43.fiveRow 7 7 3 false 3 3 4 [1,2,0,0]) :=
  row_of_forall (discharge bank [2,2,2,5,2,2,2,5,2,2,2,5] (hard := []) (by decide +kernel) .nil)

theorem g7293 : BadRow (Grammar43.fiveRow 7 7 3 true 3 3 4 [1,2,0,0]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g7294 : BadRow (Grammar43.fiveRow 7 7 3 false 3 3 4 [2,0,0,1]) :=
  row_of_forall (discharge bank [2,2,2,5,2,2,2,5,2,2,2,5,2,2,2,5,2,2,2,5] (hard := []) (by decide +kernel) .nil)

theorem g7295 : BadRow (Grammar43.fiveRow 7 7 3 true 3 3 4 [2,0,0,1]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
