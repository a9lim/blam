import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g4592 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [2,1,2,0,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,6,6,4,4,4,4,4,6,6] (hard := []) (by decide +kernel) .nil)

theorem g4593 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [2,1,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4594 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [2,1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4595 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [2,1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4596 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [2,1,2,2,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g4597 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [2,1,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4598 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [2,1,3,0,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,6,6,1,1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,6,6,1,1] (hard := []) (by decide +kernel) .nil)

theorem g4599 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [2,1,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4600 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [2,1,3,1,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,25,6,6,4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,25,6,6] (hard := []) (by decide +kernel) .nil)

theorem g4601 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [2,1,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4602 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [2,1,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4603 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [2,1,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4604 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [2,2,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4605 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [2,2,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4606 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [2,2,0,1,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,7,7,36,36,6,6,4,4,4,4,4,7,7,36,36,6,6] (hard := []) (by decide +kernel) .nil)

theorem g4607 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [2,2,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
