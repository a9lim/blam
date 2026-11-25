import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g4288 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,2,4,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4289 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,2,4,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4290 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,2,4,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4291 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,2,4,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4292 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,2,5,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4293 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,2,5,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4294 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,3,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4295 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,3,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4296 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,3,0,1,3]) :=
  row_of_forall (discharge bank [1,1,39,39,39] (hard := []) (by decide +kernel) .nil)

theorem g4297 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,3,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4298 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,3,0,2,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,14,47,4,4,4,4,4,14,47] (hard := []) (by decide +kernel) .nil)

theorem g4299 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,3,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4300 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,3,0,3,1]) :=
  row_of_forall (discharge bank [14,39,25,1,39,1,39] (hard := []) (by decide +kernel) .nil)

theorem g4301 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,3,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4302 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,3,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4303 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,3,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
