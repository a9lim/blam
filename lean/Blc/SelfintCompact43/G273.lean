import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g4368 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,0,0,2,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4369 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,0,0,2,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4370 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,0,0,3,3]) :=
  row_of_forall (discharge bank [1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g4371 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,0,0,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4372 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,0,0,4,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4373 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,0,0,4,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4374 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,0,0,5,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4375 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,0,0,5,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4376 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,0,0,6,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4377 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,0,0,6,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4378 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,0,1,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4379 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,0,1,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4380 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,0,1,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4381 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,0,1,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4382 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,0,1,2,3]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g4383 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,0,1,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
