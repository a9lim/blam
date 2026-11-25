import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1248 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 4 [1,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1249 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 4 [1,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1250 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 4 [1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1251 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 4 [1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1252 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 4 [1,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1253 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 4 [1,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1254 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 4 [1,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1255 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 4 [1,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1256 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 4 [1,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1257 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 4 [1,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1258 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 4 [1,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1259 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 4 [1,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1260 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 4 [2,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1261 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 4 [2,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1262 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 4 [2,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1263 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 4 [2,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
