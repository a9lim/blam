import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g5360 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 5 [1,0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5361 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 5 [1,0,2,1,0]) :=
  row_of_forall (discharge bank [4,4,4,4,3,16,3,1,3,1] (hard := []) (by decide +kernel) .nil)

theorem g5362 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 5 [1,0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5363 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 5 [1,0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5364 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 5 [1,1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5365 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 5 [1,1,0,0,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g5366 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 5 [1,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5367 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 5 [1,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5368 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 5 [1,1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5369 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 5 [1,1,0,2,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,3,1,3,1] (hard := []) (by decide +kernel) .nil)

theorem g5370 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 5 [1,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5371 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 5 [1,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5372 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 5 [1,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5373 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 5 [1,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5374 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 5 [1,1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5375 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 5 [1,1,2,0,0]) :=
  row_of_forall (discharge bank [4,4,4,3,1] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
