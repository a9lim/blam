import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2100 : BadRow (SharedShell.row 5 6 false 6 2 5 [2,1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2101 : BadRow (SharedShell.row 5 6 true 6 2 5 [2,1,2,0,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,25,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g2102 : BadRow (SharedShell.row 5 6 false 6 2 5 [2,1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2103 : BadRow (SharedShell.row 5 6 true 6 2 5 [2,1,2,1,0]) :=
  row_of_forall (discharge bank [9,9,9,1,1] (hard := []) (by decide +kernel) .nil)

theorem g2104 : BadRow (SharedShell.row 5 6 false 6 2 5 [2,1,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2105 : BadRow (SharedShell.row 5 6 true 6 2 5 [2,1,3,0,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g2106 : BadRow (SharedShell.row 5 6 false 6 2 5 [2,2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2107 : BadRow (SharedShell.row 5 6 true 6 2 5 [2,2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2108 : BadRow (SharedShell.row 5 6 false 6 2 5 [2,2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2109 : BadRow (SharedShell.row 5 6 true 6 2 5 [2,2,0,1,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,1,1] (hard := []) (by decide +kernel) .nil)

theorem g2110 : BadRow (SharedShell.row 5 6 false 6 2 5 [2,2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2111 : BadRow (SharedShell.row 5 6 true 6 2 5 [2,2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2112 : BadRow (SharedShell.row 5 6 false 6 2 5 [2,2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2113 : BadRow (SharedShell.row 5 6 true 6 2 5 [2,2,1,0,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,1] (hard := []) (by decide +kernel) .nil)

theorem g2114 : BadRow (SharedShell.row 5 6 false 6 2 5 [2,2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2115 : BadRow (SharedShell.row 5 6 true 6 2 5 [2,2,1,1,0]) :=
  row_of_forall (discharge bank [9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g2116 : BadRow (SharedShell.row 5 6 false 6 2 5 [2,2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2117 : BadRow (SharedShell.row 5 6 true 6 2 5 [2,2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2118 : BadRow (SharedShell.row 5 6 false 6 2 5 [2,3,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2119 : BadRow (SharedShell.row 5 6 true 6 2 5 [2,3,0,0,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
