import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g5328 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 5 [0,2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5329 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 5 [0,2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5330 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 5 [0,2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5331 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 5 [0,2,1,0,1]) :=
  row_of_forall (discharge bank [3,5] (hard := []) (by decide +kernel) .nil)

theorem g5332 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 5 [0,2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5333 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 5 [0,2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5334 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 5 [0,2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5335 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 5 [0,2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5336 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 5 [0,3,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5337 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 5 [0,3,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5338 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 5 [0,3,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5339 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 5 [0,3,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5340 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 5 [0,3,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5341 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 5 [0,3,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5342 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 5 [0,4,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5343 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 5 [0,4,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
