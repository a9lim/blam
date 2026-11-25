import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g5344 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 5 [1,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5345 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 5 [1,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5346 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 5 [1,0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5347 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 5 [1,0,0,1,2]) :=
  row_of_forall (discharge bank [4,4,4,4,3,16,3,1] (hard := []) (by decide +kernel) .nil)

theorem g5348 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 5 [1,0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5349 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 5 [1,0,0,2,1]) :=
  row_of_forall (discharge bank [4,4,4,4,3,16,3,1] (hard := []) (by decide +kernel) .nil)

theorem g5350 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 5 [1,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5351 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 5 [1,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5352 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 5 [1,0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5353 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 5 [1,0,1,0,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,3,16,3,16,3,1,3,1] (hard := []) (by decide +kernel) .nil)

theorem g5354 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 5 [1,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5355 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 5 [1,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5356 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 5 [1,0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5357 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 5 [1,0,1,2,0]) :=
  row_of_forall (discharge bank [4,4,4,4,3,16,3,1,3,1] (hard := []) (by decide +kernel) .nil)

theorem g5358 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 5 [1,0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5359 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 5 [1,0,2,0,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,3,16,3,16,3,1,3,1] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
