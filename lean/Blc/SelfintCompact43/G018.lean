import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g288 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 3 [4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g289 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 3 [4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g290 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 4 [0,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g291 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 4 [0,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g292 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 4 [0,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g293 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 4 [0,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g294 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 4 [0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g295 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 4 [0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g296 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 4 [0,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g297 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 4 [0,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g298 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 4 [0,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g299 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 4 [0,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g300 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 4 [0,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g301 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 4 [0,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g302 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 4 [0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g303 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 4 [0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
