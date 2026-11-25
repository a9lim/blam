import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3488 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,1,5,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3489 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,1,5,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3490 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,2,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3491 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,2,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3492 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,2,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3493 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,2,0,1,3]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,13,13,36,24,36] (hard := []) (by decide +kernel) .nil)

theorem g3494 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,2,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3495 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,2,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3496 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,2,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3497 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,2,0,3,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,13,13,36,24,36] (hard := []) (by decide +kernel) .nil)

theorem g3498 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,2,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3499 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,2,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3500 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,2,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3501 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,2,1,0,3]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,31,1,17,1,17] (hard := []) (by decide +kernel) .nil)

theorem g3502 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,2,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3503 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,2,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
