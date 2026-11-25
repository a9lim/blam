import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g5616 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 5 [1,2,0,0,1]) :=
  row_of_forall (discharge bank [16,16,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,5,5,5,3,5,3,5,3,5,3,5,3,5] (hard := []) (by decide +kernel) .nil)

theorem g5617 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 5 [1,2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5618 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 5 [1,2,0,1,0]) :=
  row_of_forall (discharge bank [16,16,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,5,5,5,3,5,3,5,3,5,3,5,3,5,3,5,3,5,3,5,4,4] (hard := []) (by decide +kernel) .nil)

theorem g5619 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 5 [1,2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5620 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 5 [1,2,1,0,0]) :=
  row_of_forall (discharge bank [16,16,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,5,3,5,3,5,3,5,3,5,3,5,4] (hard := []) (by decide +kernel) .nil)

theorem g5621 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 5 [1,2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5622 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 5 [1,3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5623 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 5 [1,3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5624 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 5 [2,0,0,0,2]) :=
  row_of_forall (discharge bank [5,5,4,4,18,18,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g5625 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 5 [2,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5626 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 5 [2,0,0,1,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,5,5,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g5627 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 5 [2,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5628 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 5 [2,0,0,2,0]) :=
  row_of_forall (discharge bank [5,5,4,4,4,18,18,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g5629 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 5 [2,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5630 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 5 [2,0,1,0,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g5631 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 5 [2,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
