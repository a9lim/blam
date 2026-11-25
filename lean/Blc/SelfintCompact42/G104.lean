import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2080 : BadRow (SharedShell.row 5 6 false 6 2 5 [2,0,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2081 : BadRow (SharedShell.row 5 6 true 6 2 5 [2,0,3,0,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g2082 : BadRow (SharedShell.row 5 6 false 6 2 5 [2,0,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2083 : BadRow (SharedShell.row 5 6 true 6 2 5 [2,0,3,1,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g2084 : BadRow (SharedShell.row 5 6 false 6 2 5 [2,0,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2085 : BadRow (SharedShell.row 5 6 true 6 2 5 [2,0,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2086 : BadRow (SharedShell.row 5 6 false 6 2 5 [2,1,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2087 : BadRow (SharedShell.row 5 6 true 6 2 5 [2,1,0,0,3]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g2088 : BadRow (SharedShell.row 5 6 false 6 2 5 [2,1,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2089 : BadRow (SharedShell.row 5 6 true 6 2 5 [2,1,0,1,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9,1,1] (hard := []) (by decide +kernel) .nil)

theorem g2090 : BadRow (SharedShell.row 5 6 false 6 2 5 [2,1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2091 : BadRow (SharedShell.row 5 6 true 6 2 5 [2,1,0,2,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g2092 : BadRow (SharedShell.row 5 6 false 6 2 5 [2,1,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2093 : BadRow (SharedShell.row 5 6 true 6 2 5 [2,1,0,3,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g2094 : BadRow (SharedShell.row 5 6 false 6 2 5 [2,1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2095 : BadRow (SharedShell.row 5 6 true 6 2 5 [2,1,1,0,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g2096 : BadRow (SharedShell.row 5 6 false 6 2 5 [2,1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2097 : BadRow (SharedShell.row 5 6 true 6 2 5 [2,1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2098 : BadRow (SharedShell.row 5 6 false 6 2 5 [2,1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2099 : BadRow (SharedShell.row 5 6 true 6 2 5 [2,1,1,2,0]) :=
  row_of_forall (discharge bank [9,9,9,1,1] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
