import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g4400 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,0,3,0,3]) :=
  row_of_forall (discharge bank [1,39,1,39] (hard := []) (by decide +kernel) .nil)

theorem g4401 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,0,3,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4402 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,0,3,1,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,39,1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,39,1,1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g4403 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,0,3,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4404 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,0,3,2,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,30,1,1,1,30,1] (hard := []) (by decide +kernel) .nil)

theorem g4405 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,0,3,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4406 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,0,3,3,0]) :=
  row_of_forall (discharge bank [25,1,25,1] (hard := []) (by decide +kernel) .nil)

theorem g4407 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,0,3,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4408 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,0,4,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4409 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,0,4,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4410 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,0,4,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4411 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,0,4,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4412 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,0,4,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4413 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,0,4,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4414 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,0,5,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4415 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,0,5,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
