import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1240 : BadRow (SharedShell.row 5 6 false 5 3 4 [1,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1241 : BadRow (SharedShell.row 5 6 true 5 3 4 [1,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1242 : BadRow (SharedShell.row 5 6 false 5 3 4 [1,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1243 : BadRow (SharedShell.row 5 6 true 5 3 4 [1,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1244 : BadRow (SharedShell.row 5 6 false 5 3 4 [1,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1245 : BadRow (SharedShell.row 5 6 true 5 3 4 [1,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1246 : BadRow (SharedShell.row 5 6 false 5 3 4 [1,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1247 : BadRow (SharedShell.row 5 6 true 5 3 4 [1,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1248 : BadRow (SharedShell.row 5 6 false 5 3 4 [1,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1249 : BadRow (SharedShell.row 5 6 true 5 3 4 [1,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1250 : BadRow (SharedShell.row 5 6 false 5 3 4 [1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1251 : BadRow (SharedShell.row 5 6 true 5 3 4 [1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1252 : BadRow (SharedShell.row 5 6 false 5 3 4 [1,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1253 : BadRow (SharedShell.row 5 6 true 5 3 4 [1,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1254 : BadRow (SharedShell.row 5 6 false 5 3 4 [1,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1255 : BadRow (SharedShell.row 5 6 true 5 3 4 [1,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1256 : BadRow (SharedShell.row 5 6 false 5 3 4 [1,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1257 : BadRow (SharedShell.row 5 6 true 5 3 4 [1,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1258 : BadRow (SharedShell.row 5 6 false 5 3 4 [1,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1259 : BadRow (SharedShell.row 5 6 true 5 3 4 [1,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
