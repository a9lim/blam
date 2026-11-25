import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g6400 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 4 [1,1,3,0]) :=
  row_of_forall (discharge bank [4,4,4,5,4,4,4,5,4,4,4,5,4,4,4,7,4,4,4,6,11,3,3,6,3,11,3,4] (hard := []) (by decide +kernel) .nil)

theorem g6401 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 4 [1,1,3,0]) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,11,38,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g6402 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 4 [1,2,0,2]) :=
  row_of_forall (discharge bank [2,2,2,28,2,2,2,1,2,2,2,14,2,2,2,1,2,2,2,1,4,4,4,7,4,4,4,7,4,4,4,14,4,4,4,7,4,4,4,11,4,4,4,17,4,4,4,7,24,3,3,6,3,24,3,4,36,36,3,6,36,36,3,4] (hard := []) (by decide +kernel) .nil)

theorem g6403 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 4 [1,2,0,2]) :=
  row_of_forall (discharge bank [2,42,1,1,1,2,42,1,1,1,2,42,1,1,1,2,42,1,1,1,2,42,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,24,31,1,1,1,1,36,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g6404 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 4 [1,2,1,1]) :=
  row_of_forall (discharge bank [4,4,4,6,4,4,4,7,4,4,4,7,4,4,4,7,4,4,4,11,4,4,4,14,4,4,4,17,13,3,3,6,3,13,3,4,13,3,3,6,3,13,3,4] (hard := []) (by decide +kernel) .nil)

theorem g6405 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 4 [1,2,1,1]) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,14,1,1,1,1,1,13,37,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g6406 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 4 [1,2,2,0]) :=
  row_of_forall (discharge bank [2,2,2,28,2,2,2,28,2,2,2,1,4,4,4,7,4,4,4,7] (hard := []) (by decide +kernel) .nil)

theorem g6407 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 4 [1,2,2,0]) :=
  row_of_forall (discharge bank [2,42,1,1,1,2,42,1,1,1,2,42,1,1,1,4,41,1,1,1,4,41,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g6408 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 4 [1,3,0,1]) :=
  row_of_forall (discharge bank [4,4,4,5,4,4,4,5,4,4,4,5,4,4,4,5,4,4,4,5,4,4,4,14,4,4,4,17,14,3,3,6,3,14,3,4,9,3,3,6,3,9,3,4] (hard := []) (by decide +kernel) .nil)

theorem g6409 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 4 [1,3,0,1]) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,1,1,1,1,1,1,9,30,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g6410 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 4 [1,3,1,0]) :=
  row_of_forall (discharge bank [4,4,4,5,4,4,4,5,4,4,4,5,4,4,4,11,4,4,4,6,14,3,3,6,3,14,3,4] (hard := []) (by decide +kernel) .nil)

theorem g6411 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 4 [1,3,1,0]) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g6412 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 4 [1,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6413 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 4 [1,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6414 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 4 [2,0,0,3]) :=
  row_of_forall (discharge bank [4,4,4,6,4,4,4,6,4,4,4,6,4,4,4,6,4,4,4,6] (hard := []) (by decide +kernel) .nil)

theorem g6415 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 4 [2,0,0,3]) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
