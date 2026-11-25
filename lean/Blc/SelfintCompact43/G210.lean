import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3360 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,4,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3361 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,4,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3362 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,4,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3363 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,4,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3364 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,4,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3365 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,4,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3366 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,4,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3367 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,4,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3368 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,4,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3369 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,4,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3370 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,4,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3371 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,4,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3372 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,5,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3373 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,5,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3374 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,5,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3375 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,5,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
