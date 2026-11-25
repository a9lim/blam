import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3456 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,1,0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3457 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,1,0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3458 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,1,0,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3459 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,1,0,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3460 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,1,1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3461 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,1,1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3462 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,1,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3463 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,1,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3464 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,1,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3465 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,1,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3466 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,1,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3467 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,1,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3468 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,1,1,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3469 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,1,1,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3470 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,1,2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3471 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,1,2,0,3]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,31,1,1,1,1] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
