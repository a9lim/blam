import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g7488 : BadRow (Grammar43.fiveRow 7 7 3 false 3 4 5 [1,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7489 : BadRow (Grammar43.fiveRow 7 7 3 true 3 4 5 [1,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7490 : BadRow (Grammar43.fiveRow 7 7 3 false 3 4 5 [1,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7491 : BadRow (Grammar43.fiveRow 7 7 3 true 3 4 5 [1,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7492 : BadRow (Grammar43.fiveRow 7 7 3 false 3 4 5 [2,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7493 : BadRow (Grammar43.fiveRow 7 7 3 true 3 4 5 [2,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7494 : BadRow (Grammar43.fiveRow 7 7 3 false 3 4 5 [2,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7495 : BadRow (Grammar43.fiveRow 7 7 3 true 3 4 5 [2,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7496 : BadRow (Grammar43.fiveRow 7 7 3 false 3 4 5 [2,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7497 : BadRow (Grammar43.fiveRow 7 7 3 true 3 4 5 [2,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7498 : BadRow (Grammar43.fiveRow 7 7 3 false 3 4 5 [2,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7499 : BadRow (Grammar43.fiveRow 7 7 3 true 3 4 5 [2,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7500 : BadRow (Grammar43.fiveRow 7 7 3 false 3 4 5 [3,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7501 : BadRow (Grammar43.fiveRow 7 7 3 true 3 4 5 [3,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7502 : BadRow (Grammar43.fiveRow 7 7 3 false 3 5 3 [0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7503 : BadRow (Grammar43.fiveRow 7 7 3 true 3 5 3 [0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
