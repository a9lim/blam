import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g6368 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 4 [0,2,2,1]) :=
  row_of_forall (discharge bank [2,2,2,14,2,2,2,28,2,2,2,14,4,4,4,6,4,4,4,6,4,4,4,1,4,4,4,1,4,4,4,1,4,4,4,1,4,4,4,7,11,3,3,6,3,11,3,4] (hard := []) (by decide +kernel) .nil)

theorem g6369 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 4 [0,2,2,1]) :=
  row_of_forall (discharge bank [2,42,1,1,1,2,42,1,1,1,2,42,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,11,38,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g6370 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 4 [0,2,3,0]) :=
  row_of_forall (discharge bank [4,4,4,6,4,4,4,6,4,4,4,6,4,4,4,7,11,3,3,6,3,11,3,4] (hard := []) (by decide +kernel) .nil)

theorem g6371 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 4 [0,2,3,0]) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,11,38,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g6372 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 4 [0,3,0,2]) :=
  row_of_forall (discharge bank [4,4,4,6,4,4,4,6,4,4,4,6,4,4,4,6,4,4,4,6,4,4,4,7,4,4,4,7,14,3,3,6,3,14,3,4,9,3,3,6,3,9,3,4] (hard := []) (by decide +kernel) .nil)

theorem g6373 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 4 [0,3,0,2]) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,14,1,1,1,1,1,9,30,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g6374 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 4 [0,3,1,1]) :=
  row_of_forall (discharge bank [4,4,4,5,4,4,4,5,4,4,4,5,4,4,4,25,4,4,4,6,4,4,4,1] (hard := []) (by decide +kernel) .nil)

theorem g6375 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 4 [0,3,1,1]) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g6376 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 4 [0,3,2,0]) :=
  row_of_forall (discharge bank [4,4,4,6,4,4,4,6,4,4,4,6,4,4,4,7,13,3,3,6,3,13,3,4] (hard := []) (by decide +kernel) .nil)

theorem g6377 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 4 [0,3,2,0]) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,13,37,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g6378 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 4 [0,4,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6379 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 4 [0,4,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6380 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 4 [0,4,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6381 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 4 [0,4,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6382 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 4 [0,5,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6383 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 4 [0,5,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
