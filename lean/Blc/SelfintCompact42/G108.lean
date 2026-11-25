import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2160 : BadRow (SharedShell.row 5 6 false 6 2 5 [3,2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2161 : BadRow (SharedShell.row 5 6 true 6 2 5 [3,2,0,1,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g2162 : BadRow (SharedShell.row 5 6 false 6 2 5 [3,2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2163 : BadRow (SharedShell.row 5 6 true 6 2 5 [3,2,1,0,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g2164 : BadRow (SharedShell.row 5 6 false 6 2 5 [3,3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2165 : BadRow (SharedShell.row 5 6 true 6 2 5 [3,3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2166 : BadRow (SharedShell.row 5 6 false 6 2 5 [4,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2167 : BadRow (SharedShell.row 5 6 true 6 2 5 [4,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2168 : BadRow (SharedShell.row 5 6 false 6 2 5 [4,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2169 : BadRow (SharedShell.row 5 6 true 6 2 5 [4,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2170 : BadRow (SharedShell.row 5 6 false 6 2 5 [4,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2171 : BadRow (SharedShell.row 5 6 true 6 2 5 [4,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2172 : BadRow (SharedShell.row 5 6 false 6 2 5 [4,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2173 : BadRow (SharedShell.row 5 6 true 6 2 5 [4,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2174 : BadRow (SharedShell.row 5 6 false 6 2 5 [4,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2175 : BadRow (SharedShell.row 5 6 true 6 2 5 [4,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2176 : BadRow (SharedShell.row 5 6 false 6 2 5 [4,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2177 : BadRow (SharedShell.row 5 6 true 6 2 5 [4,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2178 : BadRow (SharedShell.row 5 6 false 6 2 5 [4,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2179 : BadRow (SharedShell.row 5 6 true 6 2 5 [4,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
