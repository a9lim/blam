import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g7376 : BadRow (Grammar43.fiveRow 7 7 3 false 3 4 3 [0,2,1]) :=
  row_of_forall (discharge bank [49,4,36] (hard := []) (by decide +kernel) .nil)

theorem g7377 : BadRow (Grammar43.fiveRow 7 7 3 true 3 4 3 [0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7378 : BadRow (Grammar43.fiveRow 7 7 3 false 3 4 3 [0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7379 : BadRow (Grammar43.fiveRow 7 7 3 true 3 4 3 [0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7380 : BadRow (Grammar43.fiveRow 7 7 3 false 3 4 3 [1,0,2]) :=
  row_of_forall (discharge bank [49,4,36,49,4,36] (hard := []) (by decide +kernel) .nil)

theorem g7381 : BadRow (Grammar43.fiveRow 7 7 3 true 3 4 3 [1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7382 : BadRow (Grammar43.fiveRow 7 7 3 false 3 4 3 [1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7383 : BadRow (Grammar43.fiveRow 7 7 3 true 3 4 3 [1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7384 : BadRow (Grammar43.fiveRow 7 7 3 false 3 4 3 [1,2,0]) :=
  row_of_forall (discharge bank [49,4,36] (hard := []) (by decide +kernel) .nil)

theorem g7385 : BadRow (Grammar43.fiveRow 7 7 3 true 3 4 3 [1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7386 : BadRow (Grammar43.fiveRow 7 7 3 false 3 4 3 [2,0,1]) :=
  row_of_forall (discharge bank [49,4,36,49,4,36] (hard := []) (by decide +kernel) .nil)

theorem g7387 : BadRow (Grammar43.fiveRow 7 7 3 true 3 4 3 [2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7388 : BadRow (Grammar43.fiveRow 7 7 3 false 3 4 3 [2,1,0]) :=
  row_of_forall (discharge bank [49,4,36] (hard := []) (by decide +kernel) .nil)

theorem g7389 : BadRow (Grammar43.fiveRow 7 7 3 true 3 4 3 [2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7390 : BadRow (Grammar43.fiveRow 7 7 3 false 3 4 3 [3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7391 : BadRow (Grammar43.fiveRow 7 7 3 true 3 4 3 [3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
