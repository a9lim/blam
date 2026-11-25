import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g7360 : BadRow (Grammar43.fiveRow 7 7 3 false 3 3 5 [1,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7361 : BadRow (Grammar43.fiveRow 7 7 3 true 3 3 5 [1,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7362 : BadRow (Grammar43.fiveRow 7 7 3 false 3 3 5 [2,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7363 : BadRow (Grammar43.fiveRow 7 7 3 true 3 3 5 [2,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7364 : BadRow (Grammar43.fiveRow 7 7 3 false 3 3 5 [2,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7365 : BadRow (Grammar43.fiveRow 7 7 3 true 3 3 5 [2,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7366 : BadRow (Grammar43.fiveRow 7 7 3 false 3 3 5 [2,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7367 : BadRow (Grammar43.fiveRow 7 7 3 true 3 3 5 [2,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7368 : BadRow (Grammar43.fiveRow 7 7 3 false 3 3 5 [2,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7369 : BadRow (Grammar43.fiveRow 7 7 3 true 3 3 5 [2,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7370 : BadRow (Grammar43.fiveRow 7 7 3 false 3 3 5 [3,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7371 : BadRow (Grammar43.fiveRow 7 7 3 true 3 3 5 [3,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7372 : BadRow (Grammar43.fiveRow 7 7 3 false 3 4 3 [0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7373 : BadRow (Grammar43.fiveRow 7 7 3 true 3 4 3 [0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7374 : BadRow (Grammar43.fiveRow 7 7 3 false 3 4 3 [0,1,2]) :=
  row_of_forall (discharge bank [49,4,36] (hard := []) (by decide +kernel) .nil)

theorem g7375 : BadRow (Grammar43.fiveRow 7 7 3 true 3 4 3 [0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
