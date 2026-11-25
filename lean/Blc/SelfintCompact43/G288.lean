import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g4608 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [2,2,0,2,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,7,7,36,36,4,4,4,4,4,7,7,36,36] (hard := []) (by decide +kernel) .nil)

theorem g4609 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [2,2,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4610 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [2,2,0,3,0]) :=
  row_of_forall (discharge bank [1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g4611 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [2,2,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4612 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [2,2,1,0,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,7,7,36,36,6,6,4,4,4,4,4,7,7,36,36,6,6] (hard := []) (by decide +kernel) .nil)

theorem g4613 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [2,2,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4614 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [2,2,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4615 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [2,2,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4616 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [2,2,1,2,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,7,7,36,36,4,4,4,4,4,7,7,36,36] (hard := []) (by decide +kernel) .nil)

theorem g4617 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [2,2,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4618 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [2,2,2,0,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,7,7,36,36,4,4,4,4,4,7,7,36,36] (hard := []) (by decide +kernel) .nil)

theorem g4619 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [2,2,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4620 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [2,2,2,1,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,7,7,36,36,4,4,4,4,4,7,7,36,36] (hard := []) (by decide +kernel) .nil)

theorem g4621 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [2,2,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4622 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [2,2,3,0,0]) :=
  row_of_forall (discharge bank [1,1] (hard := []) (by decide +kernel) .nil)

theorem g4623 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [2,2,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
