import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g4384 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,0,1,3,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,1,38,1,1,1,38,1,1] (hard := []) (by decide +kernel) .nil)

theorem g4385 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,0,1,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4386 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,0,1,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4387 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,0,1,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4388 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,0,1,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4389 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,0,1,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4390 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,0,2,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4391 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,0,2,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4392 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,0,2,1,3]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g4393 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,0,2,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4394 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,0,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4395 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,0,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4396 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,0,2,3,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g4397 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,0,2,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4398 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,0,2,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4399 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,0,2,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
