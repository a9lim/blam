import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1296 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 4 [4,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1297 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 4 [4,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1298 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 4 [5,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1299 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 4 [5,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1300 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [0,0,0,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1301 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [0,0,0,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1302 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [0,0,0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1303 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [0,0,0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1304 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [0,0,0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1305 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [0,0,0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1306 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [0,0,0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1307 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [0,0,0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1308 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [0,0,0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1309 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [0,0,0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1310 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [0,0,0,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1311 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [0,0,0,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
