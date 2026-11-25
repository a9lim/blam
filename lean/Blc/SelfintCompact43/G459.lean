import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g7344 : BadRow (Grammar43.fiveRow 7 7 3 false 3 3 5 [1,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7345 : BadRow (Grammar43.fiveRow 7 7 3 true 3 3 5 [1,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7346 : BadRow (Grammar43.fiveRow 7 7 3 false 3 3 5 [1,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7347 : BadRow (Grammar43.fiveRow 7 7 3 true 3 3 5 [1,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7348 : BadRow (Grammar43.fiveRow 7 7 3 false 3 3 5 [1,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7349 : BadRow (Grammar43.fiveRow 7 7 3 true 3 3 5 [1,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7350 : BadRow (Grammar43.fiveRow 7 7 3 false 3 3 5 [1,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7351 : BadRow (Grammar43.fiveRow 7 7 3 true 3 3 5 [1,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7352 : BadRow (Grammar43.fiveRow 7 7 3 false 3 3 5 [1,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7353 : BadRow (Grammar43.fiveRow 7 7 3 true 3 3 5 [1,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7354 : BadRow (Grammar43.fiveRow 7 7 3 false 3 3 5 [1,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7355 : BadRow (Grammar43.fiveRow 7 7 3 true 3 3 5 [1,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7356 : BadRow (Grammar43.fiveRow 7 7 3 false 3 3 5 [1,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7357 : BadRow (Grammar43.fiveRow 7 7 3 true 3 3 5 [1,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7358 : BadRow (Grammar43.fiveRow 7 7 3 false 3 3 5 [1,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7359 : BadRow (Grammar43.fiveRow 7 7 3 true 3 3 5 [1,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
