import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g6608 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [1,1,1,2,0]) :=
  row_of_forall (discharge bank [2,2] (hard := []) (by decide +kernel) .nil)

theorem g6609 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [1,1,1,2,0]) :=
  row_of_forall (discharge bank [2,2,2,2,4,4,1,1] (hard := []) (by decide +kernel) .nil)

theorem g6610 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [1,1,2,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem g6611 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [1,1,2,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,4,4,4,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g6612 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [1,1,2,1,0]) :=
  row_of_forall (discharge bank [2,2] (hard := []) (by decide +kernel) .nil)

theorem g6613 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [1,1,2,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,4,4,1,1] (hard := []) (by decide +kernel) .nil)

theorem g6614 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [1,1,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6615 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [1,1,3,0,0]) :=
  row_of_forall (discharge bank [4,4,4,1] (hard := []) (by decide +kernel) .nil)

theorem g6616 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [1,2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6617 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [1,2,0,0,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g6618 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [1,2,0,1,1]) :=
  row_of_forall (discharge bank [2,2] (hard := []) (by decide +kernel) .nil)

theorem g6619 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [1,2,0,1,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,4,4,4,4,4,4,4,4,1,1] (hard := []) (by decide +kernel) .nil)

theorem g6620 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [1,2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6621 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [1,2,0,2,0]) :=
  row_of_forall (discharge bank [4,4,4,1,1] (hard := []) (by decide +kernel) .nil)

theorem g6622 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [1,2,1,0,1]) :=
  row_of_forall (discharge bank [2] (hard := []) (by decide +kernel) .nil)

theorem g6623 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [1,2,1,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,4,4,4,4,4,1] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
