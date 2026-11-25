import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g5376 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 5 [1,2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5377 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 5 [1,2,0,0,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g5378 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 5 [1,2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5379 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 5 [1,2,0,1,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,3,1,3,1] (hard := []) (by decide +kernel) .nil)

theorem g5380 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 5 [1,2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5381 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 5 [1,2,1,0,0]) :=
  row_of_forall (discharge bank [4,4,4,3,1] (hard := []) (by decide +kernel) .nil)

theorem g5382 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 5 [1,3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5383 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 5 [1,3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5384 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 5 [2,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5385 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 5 [2,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5386 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 5 [2,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5387 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 5 [2,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5388 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 5 [2,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5389 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 5 [2,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5390 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 5 [2,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5391 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 5 [2,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
