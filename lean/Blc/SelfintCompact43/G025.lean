import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g400 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 5 [0,1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g401 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 5 [0,1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g402 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 5 [0,1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g403 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 5 [0,1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g404 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 5 [0,1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g405 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 5 [0,1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g406 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 5 [0,1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g407 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 5 [0,1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g408 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 5 [0,1,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g409 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 5 [0,1,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g410 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 5 [0,2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g411 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 5 [0,2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g412 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 5 [0,2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g413 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 5 [0,2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g414 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 5 [0,2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g415 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 5 [0,2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
