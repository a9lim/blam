import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g5488 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 4 [1,2,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g5489 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 4 [1,2,0,1]) :=
  row_of_forall (discharge bank [2,2,2,6,42,1,2,2,2,6,42,1,2,2,2,6,42,1,2,2,2,6,42,1,2,2,2,6,42,1,2,2,2,15,42,1,2,2,2,15,42,1,4,4,4,6,41,1,4,4,4,6,41,1,4,4,4,6,41,1] (hard := []) (by decide +kernel) .nil)

theorem g5490 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 4 [1,2,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g5491 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 4 [1,2,1,0]) :=
  row_of_forall (discharge bank [2,2,2,6,42,1,2,2,2,6,42,1,2,2,2,6,42,1,2,2,2,15,42,1,4,4,4,6,41,1,4,4,4,6,41,1] (hard := []) (by decide +kernel) .nil)

theorem g5492 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 4 [1,3,0,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g5493 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 4 [1,3,0,0]) :=
  row_of_forall (discharge bank [4,4,4,5,41,1,4,4,4,5,41,1,4,4,4,5,41,1] (hard := []) (by decide +kernel) .nil)

theorem g5494 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 4 [2,0,0,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g5495 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 4 [2,0,0,2]) :=
  row_of_forall (discharge bank [4,4,4,6,41,1,4,4,4,6,41,1,4,4,4,6,41,1,4,4,4,6,41,1,4,4,4,6,41,1] (hard := []) (by decide +kernel) .nil)

theorem g5496 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 4 [2,0,1,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g5497 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 4 [2,0,1,1]) :=
  row_of_forall (discharge bank [2,2,2,6,42,1,2,2,2,6,42,1,2,2,2,6,42,1,2,2,2,6,42,1,2,2,2,6,42,1,4,4,4,6,41,1,4,4,4,6,41,1,4,4,4,6,41,1,4,4,4,6,41,1,4,4,4,6,41,1,4,4,4,6,41,1,4,4,4,6,41,1,4,4,4,6,41,1] (hard := []) (by decide +kernel) .nil)

theorem g5498 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 4 [2,0,2,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g5499 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 4 [2,0,2,0]) :=
  row_of_forall (discharge bank [4,4,4,6,41,1,4,4,4,6,41,1,4,4,4,6,41,1] (hard := []) (by decide +kernel) .nil)

theorem g5500 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 4 [2,1,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g5501 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 4 [2,1,0,1]) :=
  row_of_forall (discharge bank [2,2,2,6,42,1,2,2,2,6,42,1,2,2,2,6,42,1,2,2,2,6,42,1,2,2,2,6,42,1,4,4,4,6,41,1,4,4,4,6,41,1,4,4,4,6,41,1,4,4,4,6,41,1,4,4,4,6,41,1] (hard := []) (by decide +kernel) .nil)

theorem g5502 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 4 [2,1,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g5503 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 4 [2,1,1,0]) :=
  row_of_forall (discharge bank [2,2,2,6,42,1,2,2,2,6,42,1,2,2,2,6,42,1,4,4,4,6,41,1,4,4,4,6,41,1,4,4,4,6,41,1,4,4,4,6,41,1] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
