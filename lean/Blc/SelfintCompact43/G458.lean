import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g7328 : BadRow (Grammar43.fiveRow 7 7 3 false 3 3 5 [0,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7329 : BadRow (Grammar43.fiveRow 7 7 3 true 3 3 5 [0,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7330 : BadRow (Grammar43.fiveRow 7 7 3 false 3 3 5 [0,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7331 : BadRow (Grammar43.fiveRow 7 7 3 true 3 3 5 [0,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7332 : BadRow (Grammar43.fiveRow 7 7 3 false 3 3 5 [0,1,2,0,0]) :=
  row_of_forall (discharge bank [3,3,3,3,3,2] (hard := []) (by decide +kernel) .nil)

theorem g7333 : BadRow (Grammar43.fiveRow 7 7 3 true 3 3 5 [0,1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7334 : BadRow (Grammar43.fiveRow 7 7 3 false 3 3 5 [0,2,0,0,1]) :=
  row_of_forall (discharge bank [3,3,3,3,3] (hard := []) (by decide +kernel) .nil)

theorem g7335 : BadRow (Grammar43.fiveRow 7 7 3 true 3 3 5 [0,2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7336 : BadRow (Grammar43.fiveRow 7 7 3 false 3 3 5 [0,2,0,1,0]) :=
  row_of_forall (discharge bank [3,3,3,3,3,3,3,3,2,2] (hard := []) (by decide +kernel) .nil)

theorem g7337 : BadRow (Grammar43.fiveRow 7 7 3 true 3 3 5 [0,2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7338 : BadRow (Grammar43.fiveRow 7 7 3 false 3 3 5 [0,2,1,0,0]) :=
  row_of_forall (discharge bank [3,3,3,3,3,2] (hard := []) (by decide +kernel) .nil)

theorem g7339 : BadRow (Grammar43.fiveRow 7 7 3 true 3 3 5 [0,2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7340 : BadRow (Grammar43.fiveRow 7 7 3 false 3 3 5 [0,3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7341 : BadRow (Grammar43.fiveRow 7 7 3 true 3 3 5 [0,3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7342 : BadRow (Grammar43.fiveRow 7 7 3 false 3 3 5 [1,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7343 : BadRow (Grammar43.fiveRow 7 7 3 true 3 3 5 [1,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
