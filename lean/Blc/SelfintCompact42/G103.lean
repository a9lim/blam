import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2060 : BadRow (SharedShell.row 5 6 false 6 2 5 [2,0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2061 : BadRow (SharedShell.row 5 6 true 6 2 5 [2,0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2062 : BadRow (SharedShell.row 5 6 false 6 2 5 [2,0,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2063 : BadRow (SharedShell.row 5 6 true 6 2 5 [2,0,0,3,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g2064 : BadRow (SharedShell.row 5 6 false 6 2 5 [2,0,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2065 : BadRow (SharedShell.row 5 6 true 6 2 5 [2,0,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2066 : BadRow (SharedShell.row 5 6 false 6 2 5 [2,0,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2067 : BadRow (SharedShell.row 5 6 true 6 2 5 [2,0,1,0,3]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g2068 : BadRow (SharedShell.row 5 6 false 6 2 5 [2,0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2069 : BadRow (SharedShell.row 5 6 true 6 2 5 [2,0,1,1,2]) :=
  row_of_forall (discharge bank [9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g2070 : BadRow (SharedShell.row 5 6 false 6 2 5 [2,0,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2071 : BadRow (SharedShell.row 5 6 true 6 2 5 [2,0,1,2,1]) :=
  row_of_forall (discharge bank [9,9,9,1] (hard := []) (by decide +kernel) .nil)

theorem g2072 : BadRow (SharedShell.row 5 6 false 6 2 5 [2,0,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2073 : BadRow (SharedShell.row 5 6 true 6 2 5 [2,0,1,3,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g2074 : BadRow (SharedShell.row 5 6 false 6 2 5 [2,0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2075 : BadRow (SharedShell.row 5 6 true 6 2 5 [2,0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2076 : BadRow (SharedShell.row 5 6 false 6 2 5 [2,0,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2077 : BadRow (SharedShell.row 5 6 true 6 2 5 [2,0,2,1,1]) :=
  row_of_forall (discharge bank [9,9,9,1] (hard := []) (by decide +kernel) .nil)

theorem g2078 : BadRow (SharedShell.row 5 6 false 6 2 5 [2,0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2079 : BadRow (SharedShell.row 5 6 true 6 2 5 [2,0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
