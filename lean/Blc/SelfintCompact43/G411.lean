import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g6576 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [1,0,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6577 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [1,0,1,0,3]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,25,25,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g6578 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [1,0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6579 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [1,0,1,1,2]) :=
  row_of_forall (discharge bank [2,2,2,4,4,4,4,4,37,1] (hard := []) (by decide +kernel) .nil)

theorem g6580 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [1,0,1,2,1]) :=
  row_of_forall (discharge bank [2] (hard := []) (by decide +kernel) .nil)

theorem g6581 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [1,0,1,2,1]) :=
  row_of_forall (discharge bank [2,2,2,4,4,4,4,4,38,1,1] (hard := []) (by decide +kernel) .nil)

theorem g6582 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [1,0,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6583 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [1,0,1,3,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,25,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g6584 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [1,0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6585 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [1,0,2,0,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,1,30,1,1] (hard := []) (by decide +kernel) .nil)

theorem g6586 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [1,0,2,1,1]) :=
  row_of_forall (discharge bank [2] (hard := []) (by decide +kernel) .nil)

theorem g6587 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [1,0,2,1,1]) :=
  row_of_forall (discharge bank [2,2,2,4,4,4,4,4,4,4,4,1,30,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g6588 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [1,0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6589 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [1,0,2,2,0]) :=
  row_of_forall (discharge bank [4,4,4,1,1] (hard := []) (by decide +kernel) .nil)

theorem g6590 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 5 [1,0,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6591 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 5 [1,0,3,0,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,25,25,1,1] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
