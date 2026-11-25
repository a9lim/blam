import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2220 : BadRow (SharedShell.row 5 6 false 6 3 3 [1,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2221 : BadRow (SharedShell.row 5 6 true 6 3 3 [1,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2222 : BadRow (SharedShell.row 5 6 false 6 3 3 [2,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2223 : BadRow (SharedShell.row 5 6 true 6 3 3 [2,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2224 : BadRow (SharedShell.row 5 6 false 6 3 3 [2,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2225 : BadRow (SharedShell.row 5 6 true 6 3 3 [2,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2226 : BadRow (SharedShell.row 5 6 false 6 3 3 [2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2227 : BadRow (SharedShell.row 5 6 true 6 3 3 [2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2228 : BadRow (SharedShell.row 5 6 false 6 3 3 [2,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2229 : BadRow (SharedShell.row 5 6 true 6 3 3 [2,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2230 : BadRow (SharedShell.row 5 6 false 6 3 3 [2,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2231 : BadRow (SharedShell.row 5 6 true 6 3 3 [2,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2232 : BadRow (SharedShell.row 5 6 false 6 3 3 [3,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2233 : BadRow (SharedShell.row 5 6 true 6 3 3 [3,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2234 : BadRow (SharedShell.row 5 6 false 6 3 3 [3,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2235 : BadRow (SharedShell.row 5 6 true 6 3 3 [3,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2236 : BadRow (SharedShell.row 5 6 false 6 3 3 [3,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2237 : BadRow (SharedShell.row 5 6 true 6 3 3 [3,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2238 : BadRow (SharedShell.row 5 6 false 6 3 3 [3,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2239 : BadRow (SharedShell.row 5 6 true 6 3 3 [3,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
