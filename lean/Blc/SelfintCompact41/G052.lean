import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1040 : BadRow (SharedShell.row 5 5 false 5 2 5 [1,1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1041 : BadRow (SharedShell.row 5 5 true 5 2 5 [1,1,0,2,1]) :=
  row_of_forall (discharge bank [12,12,12,12,12,1] (hard := []) (by decide +kernel) .nil)

theorem g1042 : BadRow (SharedShell.row 5 5 false 5 2 5 [1,1,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1043 : BadRow (SharedShell.row 5 5 true 5 2 5 [1,1,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1044 : BadRow (SharedShell.row 5 5 false 5 2 5 [1,1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1045 : BadRow (SharedShell.row 5 5 true 5 2 5 [1,1,1,0,2]) :=
  row_of_forall (discharge bank [12,12,12,12,12,1,1] (hard := []) (by decide +kernel) .nil)

theorem g1046 : BadRow (SharedShell.row 5 5 false 5 2 5 [1,1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1047 : BadRow (SharedShell.row 5 5 true 5 2 5 [1,1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1048 : BadRow (SharedShell.row 5 5 false 5 2 5 [1,1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1049 : BadRow (SharedShell.row 5 5 true 5 2 5 [1,1,1,2,0]) :=
  row_of_forall (discharge bank [12,12,12,1] (hard := []) (by decide +kernel) .nil)

theorem g1050 : BadRow (SharedShell.row 5 5 false 5 2 5 [1,1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1051 : BadRow (SharedShell.row 5 5 true 5 2 5 [1,1,2,0,1]) :=
  row_of_forall (discharge bank [12,12,12,12,12,22,1] (hard := []) (by decide +kernel) .nil)

theorem g1052 : BadRow (SharedShell.row 5 5 false 5 2 5 [1,1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1053 : BadRow (SharedShell.row 5 5 true 5 2 5 [1,1,2,1,0]) :=
  row_of_forall (discharge bank [12,12,12,1] (hard := []) (by decide +kernel) .nil)

theorem g1054 : BadRow (SharedShell.row 5 5 false 5 2 5 [1,1,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1055 : BadRow (SharedShell.row 5 5 true 5 2 5 [1,1,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1056 : BadRow (SharedShell.row 5 5 false 5 2 5 [1,2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1057 : BadRow (SharedShell.row 5 5 true 5 2 5 [1,2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1058 : BadRow (SharedShell.row 5 5 false 5 2 5 [1,2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1059 : BadRow (SharedShell.row 5 5 true 5 2 5 [1,2,0,1,1]) :=
  row_of_forall (discharge bank [12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
