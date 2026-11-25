import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g416 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 5 [0,2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g417 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 5 [0,2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g418 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 5 [0,2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g419 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 5 [0,2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g420 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 5 [0,2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g421 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 5 [0,2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g422 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 5 [0,3,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g423 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 5 [0,3,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g424 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 5 [0,3,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g425 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 5 [0,3,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g426 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 5 [0,3,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g427 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 5 [0,3,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g428 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 5 [0,4,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g429 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 5 [0,4,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g430 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 5 [1,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g431 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 5 [1,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
