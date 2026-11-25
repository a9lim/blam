import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1080 : BadRow (SharedShell.row 5 5 false 5 2 5 [2,0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1081 : BadRow (SharedShell.row 5 5 true 5 2 5 [2,0,0,2,1]) :=
  row_of_forall (discharge bank [12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem g1082 : BadRow (SharedShell.row 5 5 false 5 2 5 [2,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1083 : BadRow (SharedShell.row 5 5 true 5 2 5 [2,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1084 : BadRow (SharedShell.row 5 5 false 5 2 5 [2,0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1085 : BadRow (SharedShell.row 5 5 true 5 2 5 [2,0,1,0,2]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem g1086 : BadRow (SharedShell.row 5 5 false 5 2 5 [2,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1087 : BadRow (SharedShell.row 5 5 true 5 2 5 [2,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1088 : BadRow (SharedShell.row 5 5 false 5 2 5 [2,0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1089 : BadRow (SharedShell.row 5 5 true 5 2 5 [2,0,1,2,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem g1090 : BadRow (SharedShell.row 5 5 false 5 2 5 [2,0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1091 : BadRow (SharedShell.row 5 5 true 5 2 5 [2,0,2,0,1]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem g1092 : BadRow (SharedShell.row 5 5 false 5 2 5 [2,0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1093 : BadRow (SharedShell.row 5 5 true 5 2 5 [2,0,2,1,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem g1094 : BadRow (SharedShell.row 5 5 false 5 2 5 [2,0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1095 : BadRow (SharedShell.row 5 5 true 5 2 5 [2,0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1096 : BadRow (SharedShell.row 5 5 false 5 2 5 [2,1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1097 : BadRow (SharedShell.row 5 5 true 5 2 5 [2,1,0,0,2]) :=
  row_of_forall (discharge bank [12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem g1098 : BadRow (SharedShell.row 5 5 false 5 2 5 [2,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1099 : BadRow (SharedShell.row 5 5 true 5 2 5 [2,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
