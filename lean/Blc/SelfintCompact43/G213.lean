import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3408 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,0,1,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3409 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,0,1,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3410 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,0,1,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3411 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,0,1,2,3]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,37,1,1] (hard := []) (by decide +kernel) .nil)

theorem g3412 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,0,1,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3413 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,0,1,3,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g3414 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,0,1,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3415 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,0,1,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3416 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,0,1,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3417 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,0,1,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3418 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,0,2,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3419 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,0,2,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3420 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,0,2,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3421 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,0,2,1,3]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,36,9,36] (hard := []) (by decide +kernel) .nil)

theorem g3422 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,0,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3423 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,0,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
