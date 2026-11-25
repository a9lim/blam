import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g4480 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,2,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4481 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,2,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4482 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,2,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4483 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,2,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4484 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,2,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4485 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,2,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4486 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,2,3,0,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,31,1,1,1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,31,1,1,1,1,30,1,30,1,1,30,1,30,1] (hard := []) (by decide +kernel) .nil)

theorem g4487 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,2,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4488 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,2,3,1,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,30,1,39,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,30,1,39,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g4489 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,2,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4490 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,2,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4491 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,2,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4492 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,3,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4493 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,3,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4494 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,3,0,1,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,1,1,17,1,17,1,1,17,1,17] (hard := []) (by decide +kernel) .nil)

theorem g4495 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,3,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
