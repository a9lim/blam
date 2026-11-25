import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g6352 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 4 [0,0,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6353 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 4 [0,0,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6354 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 4 [0,1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6355 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 4 [0,1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6356 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 4 [0,1,1,3]) :=
  row_of_forall (discharge bank [4,4,4,5,4,4,4,5,4,4,4,5,4,4,4,6,4,4,4,6,4,4,4,1,4,4,4,25,4,4,4,1,4,4,4,7,34,3,3,6,3,34,3,4] (hard := []) (by decide +kernel) .nil)

theorem g6357 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 4 [0,1,1,3]) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,34,52,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g6358 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 4 [0,1,2,2]) :=
  row_of_forall (discharge bank [2,2,2,28,2,2,2,1,2,2,2,1,4,4,4,1,4,4,4,1,4,4,4,1,4,4,4,6,4,4,4,25,4,4,4,1] (hard := []) (by decide +kernel) .nil)

theorem g6359 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 4 [0,1,2,2]) :=
  row_of_forall (discharge bank [2,42,1,1,1,2,42,1,1,1,2,42,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g6360 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 4 [0,1,3,1]) :=
  row_of_forall (discharge bank [4,4,4,5,4,4,4,5,4,4,4,5,4,4,4,6,4,4,4,6,4,4,4,6,4,4,4,1,4,4,4,1,4,4,4,7,34,3,3,6,3,34,3,4] (hard := []) (by decide +kernel) .nil)

theorem g6361 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 4 [0,1,3,1]) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,34,52,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g6362 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 4 [0,1,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6363 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 4 [0,1,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6364 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 4 [0,2,0,3]) :=
  row_of_forall (discharge bank [4,4,4,6,4,4,4,6,4,4,4,6,4,4,4,6,4,4,4,6,4,4,4,7,4,4,4,7,14,3,3,6,3,14,3,4,11,3,3,6,3,11,3,4] (hard := []) (by decide +kernel) .nil)

theorem g6365 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 4 [0,2,0,3]) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,14,1,1,1,1,1,11,38,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g6366 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 4 [0,2,1,2]) :=
  row_of_forall (discharge bank [2,2,2,14,2,2,2,14,2,2,2,14,4,4,4,6,4,4,4,6,4,4,4,25,4,4,4,1,4,4,4,1,4,4,4,1,4,4,4,6,4,4,4,1,4,4,4,7,11,3,3,6,3,11,3,4] (hard := []) (by decide +kernel) .nil)

theorem g6367 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 4 [0,2,1,2]) :=
  row_of_forall (discharge bank [2,42,1,1,1,2,42,1,1,1,2,42,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,11,38,1,1,1,1] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
