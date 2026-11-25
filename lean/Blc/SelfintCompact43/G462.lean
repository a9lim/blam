import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g7392 : BadRow (Grammar43.fiveRow 7 7 3 false 3 4 4 [0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7393 : BadRow (Grammar43.fiveRow 7 7 3 true 3 4 4 [0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7394 : BadRow (Grammar43.fiveRow 7 7 3 false 3 4 4 [0,0,1,2]) :=
  row_of_forall (discharge bank [2,2,2,5,2,2,2,5,2,2,2,5,2,2,2,5,2,2,2,5] (hard := []) (by decide +kernel) .nil)

theorem g7395 : BadRow (Grammar43.fiveRow 7 7 3 true 3 4 4 [0,0,1,2]) :=
  row_of_forall (discharge bank [2,42,1,1,1,2,42,1,1,1,2,42,1,1,1,2,42,1,1,1,2,42,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g7396 : BadRow (Grammar43.fiveRow 7 7 3 false 3 4 4 [0,0,2,1]) :=
  row_of_forall (discharge bank [2,2,2,5,2,2,2,5,2,2,2,5,2,2,2,5,2,2,2,5] (hard := []) (by decide +kernel) .nil)

theorem g7397 : BadRow (Grammar43.fiveRow 7 7 3 true 3 4 4 [0,0,2,1]) :=
  row_of_forall (discharge bank [2,42,1,1,1,2,42,1,1,1,2,42,1,1,1,2,42,1,1,1,2,42,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g7398 : BadRow (Grammar43.fiveRow 7 7 3 false 3 4 4 [0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7399 : BadRow (Grammar43.fiveRow 7 7 3 true 3 4 4 [0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7400 : BadRow (Grammar43.fiveRow 7 7 3 false 3 4 4 [0,1,0,2]) :=
  row_of_forall (discharge bank [2,2,2,5,2,2,2,5,2,2,2,5,2,2,2,5,2,2,2,5,2,2,2,5,2,2,2,5,2,2,2,5,2,2,2,5] (hard := []) (by decide +kernel) .nil)

theorem g7401 : BadRow (Grammar43.fiveRow 7 7 3 true 3 4 4 [0,1,0,2]) :=
  row_of_forall (discharge bank [2,42,1,1,1,2,42,1,1,1,2,42,1,1,1,2,42,1,1,1,2,42,1,1,1,2,42,1,1,1,2,42,1,1,1,2,42,1,1,1,2,42,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g7402 : BadRow (Grammar43.fiveRow 7 7 3 false 3 4 4 [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7403 : BadRow (Grammar43.fiveRow 7 7 3 true 3 4 4 [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7404 : BadRow (Grammar43.fiveRow 7 7 3 false 3 4 4 [0,1,2,0]) :=
  row_of_forall (discharge bank [2,2,2,5,2,2,2,5,2,2,2,5,2,2,2,5,2,2,2,5] (hard := []) (by decide +kernel) .nil)

theorem g7405 : BadRow (Grammar43.fiveRow 7 7 3 true 3 4 4 [0,1,2,0]) :=
  row_of_forall (discharge bank [2,42,1,1,1,2,42,1,1,1,2,42,1,1,1,2,42,1,1,1,2,42,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g7406 : BadRow (Grammar43.fiveRow 7 7 3 false 3 4 4 [0,2,0,1]) :=
  row_of_forall (discharge bank [2,2,2,5,2,2,2,5,2,2,2,5,2,2,2,5,2,2,2,5,2,2,2,5,2,2,2,5,2,2,2,5,2,2,2,5] (hard := []) (by decide +kernel) .nil)

theorem g7407 : BadRow (Grammar43.fiveRow 7 7 3 true 3 4 4 [0,2,0,1]) :=
  row_of_forall (discharge bank [2,42,1,1,1,2,42,1,1,1,2,42,1,1,1,2,42,1,1,1,2,42,1,1,1,2,42,1,1,1,2,42,1,1,1,2,42,1,1,1,2,42,1,1,1] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
