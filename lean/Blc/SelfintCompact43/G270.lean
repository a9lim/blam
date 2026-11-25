import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g4320 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,3,3,1,0]) :=
  row_of_forall (discharge bank [25,25,1] (hard := []) (by decide +kernel) .nil)

theorem g4321 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,3,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4322 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,3,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4323 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,3,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4324 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,4,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4325 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,4,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4326 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,4,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4327 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,4,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4328 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,4,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4329 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,4,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4330 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,4,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4331 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,4,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4332 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,4,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4333 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,4,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4334 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,4,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4335 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,4,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
