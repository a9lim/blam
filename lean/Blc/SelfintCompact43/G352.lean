import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g5632 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 5 [2,0,1,1,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g5633 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 5 [2,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5634 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 5 [2,0,2,0,0]) :=
  row_of_forall (discharge bank [5,5,4,18,18,4,4] (hard := []) (by decide +kernel) .nil)

theorem g5635 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 5 [2,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5636 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 5 [2,1,0,0,1]) :=
  row_of_forall (discharge bank [5,5,4,4,4,4,4,4,4,4,4,4,4,4,5,5,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g5637 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 5 [2,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5638 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 5 [2,1,0,1,0]) :=
  row_of_forall (discharge bank [5,5,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g5639 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 5 [2,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5640 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 5 [2,1,1,0,0]) :=
  row_of_forall (discharge bank [5,5,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g5641 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 5 [2,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5642 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 5 [2,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5643 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 5 [2,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5644 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 5 [3,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5645 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 5 [3,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5646 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 5 [3,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5647 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 5 [3,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
