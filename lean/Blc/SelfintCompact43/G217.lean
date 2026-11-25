import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3472 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,1,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3473 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,1,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3474 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,1,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3475 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,1,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3476 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,1,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3477 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,1,2,3,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,1,30,1] (hard := []) (by decide +kernel) .nil)

theorem g3478 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,1,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3479 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,1,3,0,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g3480 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,1,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3481 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,1,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3482 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,1,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3483 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,1,3,2,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g3484 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,1,4,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3485 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,1,4,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3486 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,1,4,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3487 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,1,4,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
