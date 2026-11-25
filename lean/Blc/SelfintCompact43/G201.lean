import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3216 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,0,5,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3217 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,0,5,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3218 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,0,6,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3219 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,0,6,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3220 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,0,6,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3221 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,0,6,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3222 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,0,7,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3223 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,0,7,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3224 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,1,0,0,6]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3225 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,1,0,0,6]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3226 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,1,0,1,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3227 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,1,0,1,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3228 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,1,0,2,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3229 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,1,0,2,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3230 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,1,0,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3231 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,1,0,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
