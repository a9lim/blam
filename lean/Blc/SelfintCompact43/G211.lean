import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3376 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,5,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3377 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,5,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3378 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,5,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3379 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,5,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3380 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,5,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3381 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,5,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3382 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,5,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3383 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,5,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3384 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,6,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3385 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,6,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3386 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,6,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3387 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,6,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3388 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,6,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3389 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,6,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3390 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,7,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3391 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,7,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
