import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g6384 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 4 [1,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6385 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 4 [1,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6386 (hard : BadRow [Floor43.e2389344709406]) : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 4 [1,0,1,3]) :=
  row_of_forall (discharge bank [4,4,4,5,4,4,4,5,4,4,4,5,4,4,4,5,4,4,4,5,4,4,4,6,4,4,4,7,4,4,4,7,4,4,4,6,4,4,4,11,4,4,4,7,4,4,4,0,14,3,3,6,3,14,3,4,14,3,3,6,3,14,3,4] (hard := [Floor43.e2389344709406]) (by decide +kernel) hard)

theorem g6387 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 4 [1,0,1,3]) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,1,1,1,1,1,1,14,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g6388 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 4 [1,0,2,2]) :=
  row_of_forall (discharge bank [2,2,2,28,2,2,2,1,2,2,2,28,2,2,2,1,2,2,2,1,4,4,4,7,4,4,4,7,4,4,4,7,4,4,4,13,4,4,4,11,4,4,4,17,4,4,4,7,4,4,4,13,36,36,3,6,36,36,3,4,55,3,3,6,3,55,3,4] (hard := []) (by decide +kernel) .nil)

theorem g6389 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 4 [1,0,2,2]) :=
  row_of_forall (discharge bank [2,42,1,1,1,2,42,1,1,1,2,42,1,1,1,2,42,1,1,1,2,42,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,36,1,1,1,1,1,14,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g6390 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 4 [1,0,3,1]) :=
  row_of_forall (discharge bank [4,4,4,5,4,4,4,5,4,4,4,5,4,4,4,5,4,4,4,5,4,4,4,6,4,4,4,7,4,4,4,6,4,4,4,14,4,4,4,17,14,3,3,6,3,14,3,4,34,3,3,6,3,34,3,4] (hard := []) (by decide +kernel) .nil)

theorem g6391 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 4 [1,0,3,1]) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,1,1,1,1,1,1,34,38,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g6392 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 4 [1,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6393 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 4 [1,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6394 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 4 [1,1,0,3]) :=
  row_of_forall (discharge bank [4,4,4,5,4,4,4,5,4,4,4,5,4,4,4,5,4,4,4,5,4,4,4,7,4,4,4,7,4,4,4,7,4,4,4,7,4,4,4,7,14,3,3,6,3,14,3,4,14,3,3,6,3,14,3,4,29,3,3,6,3,29,3,4,14,3,3,6,3,14,3,4] (hard := []) (by decide +kernel) .nil)

theorem g6395 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 4 [1,1,0,3]) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,35,38,1,1,1,1,14,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g6396 (hard : BadRow [Floor43.e2389344707438]) : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 4 [1,1,1,2]) :=
  row_of_forall (discharge bank [4,4,4,7,4,4,4,11,4,4,4,6,4,4,4,7,4,4,4,7,4,4,4,0,11,3,3,6,3,11,3,4] (hard := [Floor43.e2389344707438]) (by decide +kernel) hard)

theorem g6397 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 4 [1,1,1,2]) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,14,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g6398 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 4 [1,1,2,1]) :=
  row_of_forall (discharge bank [4,4,4,7,4,4,4,7,4,4,4,7,4,4,4,24,4,4,4,17,13,3,3,6,3,13,3,4] (hard := []) (by decide +kernel) .nil)

theorem g6399 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 4 [1,1,2,1]) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,37,38,1,1,1,1] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
