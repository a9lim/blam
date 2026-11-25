import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g6336 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 3 [4,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6337 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 3 [4,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6338 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 3 [4,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6339 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 3 [4,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6340 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 3 [5,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6341 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 3 [5,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6342 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 4 [0,0,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6343 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 4 [0,0,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6344 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 4 [0,0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6345 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 4 [0,0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6346 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 4 [0,0,2,3]) :=
  row_of_forall (discharge bank [4,4,4,6,4,4,4,6,4,4,4,6,4,4,4,7,1,3,3,6,3,1,3,4] (hard := []) (by decide +kernel) .nil)

theorem g6347 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 4 [0,0,2,3]) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,14,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g6348 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 4 [0,0,3,2]) :=
  row_of_forall (discharge bank [4,4,4,6,4,4,4,6,4,4,4,6,4,4,4,7,1,3,3,6,3,1,3,4] (hard := []) (by decide +kernel) .nil)

theorem g6349 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 4 [0,0,3,2]) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,14,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g6350 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 4 [0,0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6351 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 4 [0,0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
