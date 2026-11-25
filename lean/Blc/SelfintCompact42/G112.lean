import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2240 : BadRow (SharedShell.row 5 6 false 6 3 3 [4,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2241 : BadRow (SharedShell.row 5 6 true 6 3 3 [4,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2242 : BadRow (SharedShell.row 5 6 false 6 3 3 [4,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2243 : BadRow (SharedShell.row 5 6 true 6 3 3 [4,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2244 : BadRow (SharedShell.row 5 6 false 6 3 3 [4,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2245 : BadRow (SharedShell.row 5 6 true 6 3 3 [4,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2246 : BadRow (SharedShell.row 5 6 false 6 3 3 [5,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2247 : BadRow (SharedShell.row 5 6 true 6 3 3 [5,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2248 : BadRow (SharedShell.row 5 6 false 6 3 3 [5,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2249 : BadRow (SharedShell.row 5 6 true 6 3 3 [5,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2250 : BadRow (SharedShell.row 5 6 false 6 3 3 [6,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2251 : BadRow (SharedShell.row 5 6 true 6 3 3 [6,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2252 : BadRow (SharedShell.row 5 6 false 6 3 4 [0,0,0,6]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2253 : BadRow (SharedShell.row 5 6 true 6 3 4 [0,0,0,6]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2254 : BadRow (SharedShell.row 5 6 false 6 3 4 [0,0,1,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2255 : BadRow (SharedShell.row 5 6 true 6 3 4 [0,0,1,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2256 : BadRow (SharedShell.row 5 6 false 6 3 4 [0,0,2,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2257 : BadRow (SharedShell.row 5 6 true 6 3 4 [0,0,2,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2258 : BadRow (SharedShell.row 5 6 false 6 3 4 [0,0,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2259 : BadRow (SharedShell.row 5 6 true 6 3 4 [0,0,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
