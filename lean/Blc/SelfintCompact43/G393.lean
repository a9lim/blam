import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g6288 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [3,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6289 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [3,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6290 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [4,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6291 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [4,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6292 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [4,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6293 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [4,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6294 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [4,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6295 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [4,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6296 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [4,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6297 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [4,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6298 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [5,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6299 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [5,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6300 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 3 [0,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6301 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 3 [0,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6302 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 3 [0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6303 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 3 [0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
