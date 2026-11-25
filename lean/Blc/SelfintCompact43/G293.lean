import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g4688 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [3,1,2,0,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g4689 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [3,1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4690 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [3,1,2,1,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g4691 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [3,1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4692 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [3,1,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4693 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [3,1,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4694 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [3,2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4695 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [3,2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4696 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [3,2,0,1,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g4697 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [3,2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4698 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [3,2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4699 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [3,2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4700 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [3,2,1,0,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g4701 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [3,2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4702 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [3,2,1,1,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g4703 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [3,2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
