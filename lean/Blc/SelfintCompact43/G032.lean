import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g512 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 3 [1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g513 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 3 [1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g514 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 3 [1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g515 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 3 [1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g516 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 3 [1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g517 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 3 [1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g518 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 3 [2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g519 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 3 [2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g520 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 3 [2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g521 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 3 [2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g522 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 3 [2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g523 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 3 [2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g524 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 3 [3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g525 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 3 [3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g526 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 3 [3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g527 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 3 [3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
