import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1120 : BadRow (SharedShell.row 5 5 false 5 2 5 [3,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1121 : BadRow (SharedShell.row 5 5 true 5 2 5 [3,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1122 : BadRow (SharedShell.row 5 5 false 5 2 5 [3,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1123 : BadRow (SharedShell.row 5 5 true 5 2 5 [3,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1124 : BadRow (SharedShell.row 5 5 false 5 2 5 [3,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1125 : BadRow (SharedShell.row 5 5 true 5 2 5 [3,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1126 : BadRow (SharedShell.row 5 5 false 5 2 5 [3,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1127 : BadRow (SharedShell.row 5 5 true 5 2 5 [3,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1128 : BadRow (SharedShell.row 5 5 false 5 2 5 [3,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1129 : BadRow (SharedShell.row 5 5 true 5 2 5 [3,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1130 : BadRow (SharedShell.row 5 5 false 5 2 5 [3,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1131 : BadRow (SharedShell.row 5 5 true 5 2 5 [3,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1132 : BadRow (SharedShell.row 5 5 false 5 2 5 [3,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1133 : BadRow (SharedShell.row 5 5 true 5 2 5 [3,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1134 : BadRow (SharedShell.row 5 5 false 5 2 5 [3,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1135 : BadRow (SharedShell.row 5 5 true 5 2 5 [3,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1136 : BadRow (SharedShell.row 5 5 false 5 2 5 [4,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1137 : BadRow (SharedShell.row 5 5 true 5 2 5 [4,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1138 : BadRow (SharedShell.row 5 5 false 5 2 5 [4,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1139 : BadRow (SharedShell.row 5 5 true 5 2 5 [4,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
