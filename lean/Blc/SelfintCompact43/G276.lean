import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g4416 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,0,5,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4417 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,0,5,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4418 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,0,6,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4419 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,0,6,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4420 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,1,0,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4421 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,1,0,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4422 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,1,0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4423 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,1,0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4424 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,1,0,2,3]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,1,37,1,1,1,1,37,1] (hard := []) (by decide +kernel) .nil)

theorem g4425 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,1,0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4426 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,1,0,3,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,38,1,37,1,1,38,1,37,1,1] (hard := []) (by decide +kernel) .nil)

theorem g4427 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,1,0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4428 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,1,0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4429 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,1,0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4430 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,1,0,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4431 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,1,0,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
