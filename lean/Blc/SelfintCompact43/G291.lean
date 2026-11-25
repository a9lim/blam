import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g4656 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [3,0,1,1,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g4657 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [3,0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4658 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [3,0,1,2,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g4659 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [3,0,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4660 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [3,0,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4661 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [3,0,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4662 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [3,0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4663 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [3,0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4664 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [3,0,2,1,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g4665 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [3,0,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4666 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [3,0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4667 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [3,0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4668 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [3,0,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4669 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [3,0,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4670 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [3,0,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4671 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [3,0,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
