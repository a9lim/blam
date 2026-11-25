import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g6432 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 4 [2,3,0,0]) :=
  row_of_forall (discharge bank [4,4,4,6,4,4,4,6,4,4,4,6] (hard := []) (by decide +kernel) .nil)

theorem g6433 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 4 [2,3,0,0]) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1,4,41,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g6434 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 4 [3,0,0,2]) :=
  row_of_forall (discharge bank [4,4,4,6,4,4,4,6,4,4,4,6,4,4,4,6,4,4,4,6] (hard := []) (by decide +kernel) .nil)

theorem g6435 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 4 [3,0,0,2]) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g6436 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 4 [3,0,1,1]) :=
  row_of_forall (discharge bank [4,4,4,5,4,4,4,5,4,4,4,5,4,4,4,5,4,4,4,5] (hard := []) (by decide +kernel) .nil)

theorem g6437 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 4 [3,0,1,1]) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g6438 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 4 [3,0,2,0]) :=
  row_of_forall (discharge bank [4,4,4,6,4,4,4,6,4,4,4,6,4,4,4,6,4,4,4,6] (hard := []) (by decide +kernel) .nil)

theorem g6439 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 4 [3,0,2,0]) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g6440 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 4 [3,1,0,1]) :=
  row_of_forall (discharge bank [4,4,4,5,4,4,4,5,4,4,4,5,4,4,4,5,4,4,4,5] (hard := []) (by decide +kernel) .nil)

theorem g6441 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 4 [3,1,0,1]) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g6442 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 4 [3,1,1,0]) :=
  row_of_forall (discharge bank [4,4,4,5,4,4,4,5,4,4,4,5] (hard := []) (by decide +kernel) .nil)

theorem g6443 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 4 [3,1,1,0]) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1,4,41,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g6444 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 4 [3,2,0,0]) :=
  row_of_forall (discharge bank [4,4,4,6,4,4,4,6,4,4,4,6] (hard := []) (by decide +kernel) .nil)

theorem g6445 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 4 [3,2,0,0]) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1,4,41,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g6446 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 4 [4,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6447 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 4 [4,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
