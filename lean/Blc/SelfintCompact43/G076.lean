import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1216 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 4 [0,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1217 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 4 [0,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1218 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 4 [0,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1219 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 4 [0,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1220 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 4 [0,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1221 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 4 [0,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1222 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 4 [0,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1223 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 4 [0,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1224 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 4 [0,4,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1225 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 4 [0,4,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1226 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 4 [0,4,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1227 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 4 [0,4,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1228 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 4 [0,5,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1229 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 4 [0,5,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1230 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 4 [1,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1231 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 4 [1,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
