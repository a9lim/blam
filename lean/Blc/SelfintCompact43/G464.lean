import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g7424 : BadRow (Grammar43.fiveRow 7 7 3 false 3 4 4 [2,0,0,1]) :=
  row_of_forall (discharge bank [2,2,2,5,2,2,2,5,2,2,2,5,2,2,2,5,2,2,2,5] (hard := []) (by decide +kernel) .nil)

theorem g7425 : BadRow (Grammar43.fiveRow 7 7 3 true 3 4 4 [2,0,0,1]) :=
  row_of_forall (discharge bank [2,42,1,1,1,2,42,1,1,1,2,42,1,1,1,2,42,1,1,1,2,42,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g7426 : BadRow (Grammar43.fiveRow 7 7 3 false 3 4 4 [2,0,1,0]) :=
  row_of_forall (discharge bank [2,2,2,5,2,2,2,5,2,2,2,5,2,2,2,5,2,2,2,5] (hard := []) (by decide +kernel) .nil)

theorem g7427 : BadRow (Grammar43.fiveRow 7 7 3 true 3 4 4 [2,0,1,0]) :=
  row_of_forall (discharge bank [2,42,1,1,1,2,42,1,1,1,2,42,1,1,1,2,42,1,1,1,2,42,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g7428 : BadRow (Grammar43.fiveRow 7 7 3 false 3 4 4 [2,1,0,0]) :=
  row_of_forall (discharge bank [2,2,2,5,2,2,2,5,2,2,2,5] (hard := []) (by decide +kernel) .nil)

theorem g7429 : BadRow (Grammar43.fiveRow 7 7 3 true 3 4 4 [2,1,0,0]) :=
  row_of_forall (discharge bank [2,42,1,1,1,2,42,1,1,1,2,42,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g7430 : BadRow (Grammar43.fiveRow 7 7 3 false 3 4 4 [3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7431 : BadRow (Grammar43.fiveRow 7 7 3 true 3 4 4 [3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7432 : BadRow (Grammar43.fiveRow 7 7 3 false 3 4 5 [0,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7433 : BadRow (Grammar43.fiveRow 7 7 3 true 3 4 5 [0,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7434 : BadRow (Grammar43.fiveRow 7 7 3 false 3 4 5 [0,0,0,1,2]) :=
  row_of_forall (discharge bank [3,2,2,3] (hard := []) (by decide +kernel) .nil)

theorem g7435 : BadRow (Grammar43.fiveRow 7 7 3 true 3 4 5 [0,0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7436 : BadRow (Grammar43.fiveRow 7 7 3 false 3 4 5 [0,0,0,2,1]) :=
  row_of_forall (discharge bank [3,2,2,3] (hard := []) (by decide +kernel) .nil)

theorem g7437 : BadRow (Grammar43.fiveRow 7 7 3 true 3 4 5 [0,0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7438 : BadRow (Grammar43.fiveRow 7 7 3 false 3 4 5 [0,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7439 : BadRow (Grammar43.fiveRow 7 7 3 true 3 4 5 [0,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
