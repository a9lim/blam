import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1060 : BadRow (SharedShell.row 5 5 false 5 2 5 [1,2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1061 : BadRow (SharedShell.row 5 5 true 5 2 5 [1,2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1062 : BadRow (SharedShell.row 5 5 false 5 2 5 [1,2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1063 : BadRow (SharedShell.row 5 5 true 5 2 5 [1,2,1,0,1]) :=
  row_of_forall (discharge bank [12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem g1064 : BadRow (SharedShell.row 5 5 false 5 2 5 [1,2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1065 : BadRow (SharedShell.row 5 5 true 5 2 5 [1,2,1,1,0]) :=
  row_of_forall (discharge bank [12,12,12] (hard := []) (by decide +kernel) .nil)

theorem g1066 : BadRow (SharedShell.row 5 5 false 5 2 5 [1,2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1067 : BadRow (SharedShell.row 5 5 true 5 2 5 [1,2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1068 : BadRow (SharedShell.row 5 5 false 5 2 5 [1,3,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1069 : BadRow (SharedShell.row 5 5 true 5 2 5 [1,3,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1070 : BadRow (SharedShell.row 5 5 false 5 2 5 [1,3,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1071 : BadRow (SharedShell.row 5 5 true 5 2 5 [1,3,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1072 : BadRow (SharedShell.row 5 5 false 5 2 5 [1,3,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1073 : BadRow (SharedShell.row 5 5 true 5 2 5 [1,3,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1074 : BadRow (SharedShell.row 5 5 false 5 2 5 [1,4,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1075 : BadRow (SharedShell.row 5 5 true 5 2 5 [1,4,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1076 : BadRow (SharedShell.row 5 5 false 5 2 5 [2,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1077 : BadRow (SharedShell.row 5 5 true 5 2 5 [2,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1078 : BadRow (SharedShell.row 5 5 false 5 2 5 [2,0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1079 : BadRow (SharedShell.row 5 5 true 5 2 5 [2,0,0,1,2]) :=
  row_of_forall (discharge bank [12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
