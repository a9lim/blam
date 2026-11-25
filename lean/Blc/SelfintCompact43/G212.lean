import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3392 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,0,0,0,6]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3393 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,0,0,0,6]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3394 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,0,0,1,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3395 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,0,0,1,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3396 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,0,0,2,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3397 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,0,0,2,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3398 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,0,0,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3399 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,0,0,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3400 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,0,0,4,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3401 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,0,0,4,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3402 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,0,0,5,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3403 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,0,0,5,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3404 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,0,0,6,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3405 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,0,0,6,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3406 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,0,1,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3407 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,0,1,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
