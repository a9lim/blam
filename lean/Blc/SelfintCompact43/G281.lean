import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g4496 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,3,0,2,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,17,17,17,1,1,17,17,17] (hard := []) (by decide +kernel) .nil)

theorem g4497 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,3,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4498 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,3,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4499 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,3,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4500 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,3,1,0,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,39,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,39,1,1,36,1,36,1,1,36,1,36] (hard := []) (by decide +kernel) .nil)

theorem g4501 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,3,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4502 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,3,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4503 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,3,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4504 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,3,1,2,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,36,12,36,1,1,36,12,36] (hard := []) (by decide +kernel) .nil)

theorem g4505 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,3,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4506 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,3,2,0,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,17,17,17,1,1,17,17,17] (hard := []) (by decide +kernel) .nil)

theorem g4507 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,3,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4508 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,3,2,1,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,17,1,1,1,17,1] (hard := []) (by decide +kernel) .nil)

theorem g4509 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,3,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4510 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,3,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4511 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,3,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
