import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1200 : BadRow (SharedShell.row 5 6 false 5 3 4 [0,1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1201 : BadRow (SharedShell.row 5 6 true 5 3 4 [0,1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1202 : BadRow (SharedShell.row 5 6 false 5 3 4 [0,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1203 : BadRow (SharedShell.row 5 6 true 5 3 4 [0,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1204 : BadRow (SharedShell.row 5 6 false 5 3 4 [0,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1205 : BadRow (SharedShell.row 5 6 true 5 3 4 [0,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1206 : BadRow (SharedShell.row 5 6 false 5 3 4 [0,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1207 : BadRow (SharedShell.row 5 6 true 5 3 4 [0,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1208 : BadRow (SharedShell.row 5 6 false 5 3 4 [0,1,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1209 : BadRow (SharedShell.row 5 6 true 5 3 4 [0,1,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1210 : BadRow (SharedShell.row 5 6 false 5 3 4 [0,2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1211 : BadRow (SharedShell.row 5 6 true 5 3 4 [0,2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1212 : BadRow (SharedShell.row 5 6 false 5 3 4 [0,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1213 : BadRow (SharedShell.row 5 6 true 5 3 4 [0,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1214 : BadRow (SharedShell.row 5 6 false 5 3 4 [0,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1215 : BadRow (SharedShell.row 5 6 true 5 3 4 [0,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1216 : BadRow (SharedShell.row 5 6 false 5 3 4 [0,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1217 : BadRow (SharedShell.row 5 6 true 5 3 4 [0,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1218 : BadRow (SharedShell.row 5 6 false 5 3 4 [0,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1219 : BadRow (SharedShell.row 5 6 true 5 3 4 [0,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
