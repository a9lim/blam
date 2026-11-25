import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g7504 : BadRow (Grammar43.fiveRow 7 7 3 false 3 5 3 [0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7505 : BadRow (Grammar43.fiveRow 7 7 3 true 3 5 3 [0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7506 : BadRow (Grammar43.fiveRow 7 7 3 false 3 5 3 [0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7507 : BadRow (Grammar43.fiveRow 7 7 3 true 3 5 3 [0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7508 : BadRow (Grammar43.fiveRow 7 7 3 false 3 5 3 [0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7509 : BadRow (Grammar43.fiveRow 7 7 3 true 3 5 3 [0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7510 : BadRow (Grammar43.fiveRow 7 7 3 false 3 5 3 [1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7511 : BadRow (Grammar43.fiveRow 7 7 3 true 3 5 3 [1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7512 : BadRow (Grammar43.fiveRow 7 7 3 false 3 5 3 [1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7513 : BadRow (Grammar43.fiveRow 7 7 3 true 3 5 3 [1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7514 : BadRow (Grammar43.fiveRow 7 7 3 false 3 5 3 [1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7515 : BadRow (Grammar43.fiveRow 7 7 3 true 3 5 3 [1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7516 : BadRow (Grammar43.fiveRow 7 7 3 false 3 5 3 [2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7517 : BadRow (Grammar43.fiveRow 7 7 3 true 3 5 3 [2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7518 : BadRow (Grammar43.fiveRow 7 7 3 false 3 5 3 [2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7519 : BadRow (Grammar43.fiveRow 7 7 3 true 3 5 3 [2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
