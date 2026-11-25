import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g5472 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 4 [0,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5473 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 4 [0,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5474 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 4 [1,0,0,3]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g5475 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 4 [1,0,0,3]) :=
  row_of_forall (discharge bank [4,4,4,5,41,1,4,4,4,5,41,1,4,4,4,5,41,1,4,4,4,5,41,1,4,4,4,5,41,1,4,4,4,6,41,1,4,4,4,6,41,1,4,4,4,6,41,1,4,4,4,6,41,1,4,4,4,6,41,1] (hard := []) (by decide +kernel) .nil)

theorem g5476 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 4 [1,0,1,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g5477 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 4 [1,0,1,2]) :=
  row_of_forall (discharge bank [2,2,2,6,42,1,2,2,2,6,42,1,2,2,2,6,42,1,2,2,2,6,42,1,2,2,2,6,42,1,2,2,2,15,42,1,4,4,4,6,41,1,4,4,4,6,41,1,4,4,4,6,41,1] (hard := []) (by decide +kernel) .nil)

theorem g5478 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 4 [1,0,2,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g5479 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 4 [1,0,2,1]) :=
  row_of_forall (discharge bank [2,2,2,6,42,1,2,2,2,6,42,1,2,2,2,6,42,1,2,2,2,6,42,1,2,2,2,6,42,1,2,2,2,15,42,1,4,4,4,6,41,1,4,4,4,6,41,1,4,4,4,6,41,1,4,4,4,6,41,1,4,4,4,6,41,1] (hard := []) (by decide +kernel) .nil)

theorem g5480 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 4 [1,0,3,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g5481 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 4 [1,0,3,0]) :=
  row_of_forall (discharge bank [4,4,4,5,41,1,4,4,4,5,41,1,4,4,4,5,41,1,4,4,4,5,41,1,4,4,4,5,41,1,4,4,4,6,41,1,4,4,4,6,41,1,4,4,4,6,41,1] (hard := []) (by decide +kernel) .nil)

theorem g5482 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 4 [1,1,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g5483 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 4 [1,1,0,2]) :=
  row_of_forall (discharge bank [2,2,2,6,42,1,2,2,2,6,42,1,2,2,2,6,42,1,2,2,2,6,42,1,2,2,2,6,42,1,2,2,2,15,42,1,2,2,2,15,42,1,4,4,4,6,41,1,4,4,4,6,41,1] (hard := []) (by decide +kernel) .nil)

theorem g5484 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 4 [1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5485 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 4 [1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5486 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 4 [1,1,2,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g5487 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 4 [1,1,2,0]) :=
  row_of_forall (discharge bank [2,2,2,6,42,1,2,2,2,6,42,1,2,2,2,6,42,1,2,2,2,15,42,1,4,4,4,6,41,1,4,4,4,6,41,1] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
