import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g7408 : BadRow (Grammar43.fiveRow 7 7 3 false 3 4 4 [0,2,1,0]) :=
  row_of_forall (discharge bank [2,2,2,5,2,2,2,5,2,2,2,5,2,2,2,5,2,2,2,5] (hard := []) (by decide +kernel) .nil)

theorem g7409 : BadRow (Grammar43.fiveRow 7 7 3 true 3 4 4 [0,2,1,0]) :=
  row_of_forall (discharge bank [2,42,1,1,1,2,42,1,1,1,2,42,1,1,1,2,42,1,1,1,2,42,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g7410 : BadRow (Grammar43.fiveRow 7 7 3 false 3 4 4 [0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7411 : BadRow (Grammar43.fiveRow 7 7 3 true 3 4 4 [0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7412 : BadRow (Grammar43.fiveRow 7 7 3 false 3 4 4 [1,0,0,2]) :=
  row_of_forall (discharge bank [2,2,2,5,2,2,2,5,2,2,2,5,2,2,2,5,2,2,2,5] (hard := []) (by decide +kernel) .nil)

theorem g7413 : BadRow (Grammar43.fiveRow 7 7 3 true 3 4 4 [1,0,0,2]) :=
  row_of_forall (discharge bank [2,42,1,1,1,2,42,1,1,1,2,42,1,1,1,2,42,1,1,1,2,42,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g7414 : BadRow (Grammar43.fiveRow 7 7 3 false 3 4 4 [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7415 : BadRow (Grammar43.fiveRow 7 7 3 true 3 4 4 [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7416 : BadRow (Grammar43.fiveRow 7 7 3 false 3 4 4 [1,0,2,0]) :=
  row_of_forall (discharge bank [2,2,2,5,2,2,2,5,2,2,2,5,2,2,2,5,2,2,2,5] (hard := []) (by decide +kernel) .nil)

theorem g7417 : BadRow (Grammar43.fiveRow 7 7 3 true 3 4 4 [1,0,2,0]) :=
  row_of_forall (discharge bank [2,42,1,1,1,2,42,1,1,1,2,42,1,1,1,2,42,1,1,1,2,42,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g7418 : BadRow (Grammar43.fiveRow 7 7 3 false 3 4 4 [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7419 : BadRow (Grammar43.fiveRow 7 7 3 true 3 4 4 [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7420 : BadRow (Grammar43.fiveRow 7 7 3 false 3 4 4 [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7421 : BadRow (Grammar43.fiveRow 7 7 3 true 3 4 4 [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7422 : BadRow (Grammar43.fiveRow 7 7 3 false 3 4 4 [1,2,0,0]) :=
  row_of_forall (discharge bank [2,2,2,5,2,2,2,5,2,2,2,5] (hard := []) (by decide +kernel) .nil)

theorem g7423 : BadRow (Grammar43.fiveRow 7 7 3 true 3 4 4 [1,2,0,0]) :=
  row_of_forall (discharge bank [2,42,1,1,1,2,42,1,1,1,2,42,1,1,1] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
