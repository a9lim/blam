import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g256 : BadRow (Grammar43.fiveRow 7 5 7 false 3 3 5 [2,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g257 : BadRow (Grammar43.fiveRow 7 5 7 true 3 3 5 [2,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g258 : BadRow (Grammar43.fiveRow 7 5 7 false 3 3 5 [3,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g259 : BadRow (Grammar43.fiveRow 7 5 7 true 3 3 5 [3,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g260 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 3 [0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g261 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 3 [0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g262 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 3 [0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g263 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 3 [0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g264 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 3 [0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g265 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 3 [0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g266 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 3 [0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g267 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 3 [0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g268 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 3 [0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g269 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 3 [0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g270 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 3 [1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g271 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 3 [1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
