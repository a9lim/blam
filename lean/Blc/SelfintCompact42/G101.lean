import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2020 : BadRow (SharedShell.row 5 6 false 6 2 5 [1,2,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2021 : BadRow (SharedShell.row 5 6 true 6 2 5 [1,2,0,2,1]) :=
  row_of_forall (discharge bank [1,4,8,1,7,1,7] (hard := []) (by decide +kernel) .nil)

theorem g2022 : BadRow (SharedShell.row 5 6 false 6 2 5 [1,2,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2023 : BadRow (SharedShell.row 5 6 true 6 2 5 [1,2,0,3,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g2024 : BadRow (SharedShell.row 5 6 false 6 2 5 [1,2,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2025 : BadRow (SharedShell.row 5 6 true 6 2 5 [1,2,1,0,2]) :=
  row_of_forall (discharge bank [1,1,4,4,11,1,1,7,7,7] (hard := []) (by decide +kernel) .nil)

theorem g2026 : BadRow (SharedShell.row 5 6 false 6 2 5 [1,2,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2027 : BadRow (SharedShell.row 5 6 true 6 2 5 [1,2,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2028 : BadRow (SharedShell.row 5 6 false 6 2 5 [1,2,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2029 : BadRow (SharedShell.row 5 6 true 6 2 5 [1,2,1,2,0]) :=
  row_of_forall (discharge bank [1,4,8,1,7] (hard := []) (by decide +kernel) .nil)

theorem g2030 : BadRow (SharedShell.row 5 6 false 6 2 5 [1,2,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2031 : BadRow (SharedShell.row 5 6 true 6 2 5 [1,2,2,0,1]) :=
  row_of_forall (discharge bank [1,1,4,4,8,8,1,8,1] (hard := []) (by decide +kernel) .nil)

theorem g2032 : BadRow (SharedShell.row 5 6 false 6 2 5 [1,2,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2033 : BadRow (SharedShell.row 5 6 true 6 2 5 [1,2,2,1,0]) :=
  row_of_forall (discharge bank [1,4,8,8,1] (hard := []) (by decide +kernel) .nil)

theorem g2034 : BadRow (SharedShell.row 5 6 false 6 2 5 [1,2,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2035 : BadRow (SharedShell.row 5 6 true 6 2 5 [1,2,3,0,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g2036 : BadRow (SharedShell.row 5 6 false 6 2 5 [1,3,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2037 : BadRow (SharedShell.row 5 6 true 6 2 5 [1,3,0,0,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g2038 : BadRow (SharedShell.row 5 6 false 6 2 5 [1,3,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2039 : BadRow (SharedShell.row 5 6 true 6 2 5 [1,3,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
