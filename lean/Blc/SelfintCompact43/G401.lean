import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g6416 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 4 [2,0,1,2]) :=
  row_of_forall (discharge bank [2,2,2,15,2,2,2,15,2,2,2,1,2,2,2,1,2,2,2,17,4,4,4,6,4,4,4,30,4,4,4,1,4,4,4,6,4,4,4,30,4,4,4,1,4,4,4,1] (hard := []) (by decide +kernel) .nil)

theorem g6417 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 4 [2,0,1,2]) :=
  row_of_forall (discharge bank [2,42,1,1,1,2,42,1,1,1,2,42,1,1,1,2,42,1,1,1,2,42,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g6418 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 4 [2,0,2,1]) :=
  row_of_forall (discharge bank [2,2,2,15,2,2,2,15,2,2,2,11,2,2,2,15,2,2,2,14,4,4,4,6,4,4,4,1,4,4,4,6,4,4,4,1,4,4,4,1] (hard := []) (by decide +kernel) .nil)

theorem g6419 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 4 [2,0,2,1]) :=
  row_of_forall (discharge bank [2,42,1,1,1,2,42,1,1,1,2,42,1,1,1,2,42,1,1,1,2,42,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g6420 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 4 [2,0,3,0]) :=
  row_of_forall (discharge bank [4,4,4,6,4,4,4,6,4,4,4,6,4,4,4,6,4,4,4,6] (hard := []) (by decide +kernel) .nil)

theorem g6421 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 4 [2,0,3,0]) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g6422 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 4 [2,1,0,2]) :=
  row_of_forall (discharge bank [2,2,2,15,2,2,2,15,2,2,2,1,2,2,2,1,2,2,2,17,4,4,4,17,4,4,4,31,4,4,4,17,4,4,4,14,4,4,4,14] (hard := []) (by decide +kernel) .nil)

theorem g6423 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 4 [2,1,0,2]) :=
  row_of_forall (discharge bank [2,42,1,1,1,2,42,1,1,1,2,42,1,1,1,2,42,1,1,1,2,42,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g6424 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 4 [2,1,1,1]) :=
  row_of_forall (discharge bank [4,4,4,6,4,4,4,17,4,4,4,17,4,4,4,34,4,4,4,17,4,4,4,18,4,4,4,6,4,4,4,34,4,4,4,11,4,4,4,18] (hard := []) (by decide +kernel) .nil)

theorem g6425 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 4 [2,1,1,1]) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g6426 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 4 [2,1,2,0]) :=
  row_of_forall (discharge bank [2,2,2,15,2,2,2,15,2,2,2,11,4,4,4,17,4,4,4,6] (hard := []) (by decide +kernel) .nil)

theorem g6427 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 4 [2,1,2,0]) :=
  row_of_forall (discharge bank [2,42,1,1,1,2,42,1,1,1,2,42,1,1,1,4,41,1,1,1,4,41,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g6428 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 4 [2,2,0,1]) :=
  row_of_forall (discharge bank [2,2,2,15,2,2,2,15,2,2,2,15,2,2,2,15,2,2,2,15,4,4,4,18,4,4,4,9] (hard := []) (by decide +kernel) .nil)

theorem g6429 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 4 [2,2,0,1]) :=
  row_of_forall (discharge bank [2,42,1,1,1,2,42,1,1,1,2,42,1,1,1,2,42,1,1,1,2,42,1,1,1,4,41,1,1,1,4,41,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g6430 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 4 [2,2,1,0]) :=
  row_of_forall (discharge bank [2,2,2,15,2,2,2,15,2,2,2,15,4,4,4,18,4,4,4,6] (hard := []) (by decide +kernel) .nil)

theorem g6431 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 4 [2,2,1,0]) :=
  row_of_forall (discharge bank [2,42,1,1,1,2,42,1,1,1,2,42,1,1,1,4,41,1,1,1,4,41,1,1,1] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
