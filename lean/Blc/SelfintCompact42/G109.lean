import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2180 : BadRow (SharedShell.row 5 6 false 6 2 5 [4,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2181 : BadRow (SharedShell.row 5 6 true 6 2 5 [4,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2182 : BadRow (SharedShell.row 5 6 false 6 2 5 [4,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2183 : BadRow (SharedShell.row 5 6 true 6 2 5 [4,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2184 : BadRow (SharedShell.row 5 6 false 6 2 5 [4,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2185 : BadRow (SharedShell.row 5 6 true 6 2 5 [4,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2186 : BadRow (SharedShell.row 5 6 false 6 2 5 [5,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2187 : BadRow (SharedShell.row 5 6 true 6 2 5 [5,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2188 : BadRow (SharedShell.row 5 6 false 6 2 5 [5,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2189 : BadRow (SharedShell.row 5 6 true 6 2 5 [5,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2190 : BadRow (SharedShell.row 5 6 false 6 2 5 [5,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2191 : BadRow (SharedShell.row 5 6 true 6 2 5 [5,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2192 : BadRow (SharedShell.row 5 6 false 6 2 5 [5,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2193 : BadRow (SharedShell.row 5 6 true 6 2 5 [5,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2194 : BadRow (SharedShell.row 5 6 false 6 2 5 [6,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2195 : BadRow (SharedShell.row 5 6 true 6 2 5 [6,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2196 : BadRow (SharedShell.row 5 6 false 6 3 3 [0,0,6]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2197 : BadRow (SharedShell.row 5 6 true 6 3 3 [0,0,6]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2198 : BadRow (SharedShell.row 5 6 false 6 3 3 [0,1,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2199 : BadRow (SharedShell.row 5 6 true 6 3 3 [0,1,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
