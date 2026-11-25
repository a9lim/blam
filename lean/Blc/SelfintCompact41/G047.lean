import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g940 : BadRow (SharedShell.row 5 5 false 5 2 5 [0,1,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g941 : BadRow (SharedShell.row 5 5 true 5 2 5 [0,1,0,2,2]) :=
  row_of_forall (discharge bank [12,12] (hard := []) (by decide +kernel) .nil)

theorem g942 : BadRow (SharedShell.row 5 5 false 5 2 5 [0,1,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g943 : BadRow (SharedShell.row 5 5 true 5 2 5 [0,1,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g944 : BadRow (SharedShell.row 5 5 false 5 2 5 [0,1,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g945 : BadRow (SharedShell.row 5 5 true 5 2 5 [0,1,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g946 : BadRow (SharedShell.row 5 5 false 5 2 5 [0,1,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g947 : BadRow (SharedShell.row 5 5 true 5 2 5 [0,1,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g948 : BadRow (SharedShell.row 5 5 false 5 2 5 [0,1,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g949 : BadRow (SharedShell.row 5 5 true 5 2 5 [0,1,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g950 : BadRow (SharedShell.row 5 5 false 5 2 5 [0,1,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g951 : BadRow (SharedShell.row 5 5 true 5 2 5 [0,1,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g952 : BadRow (SharedShell.row 5 5 false 5 2 5 [0,1,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g953 : BadRow (SharedShell.row 5 5 true 5 2 5 [0,1,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g954 : BadRow (SharedShell.row 5 5 false 5 2 5 [0,1,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g955 : BadRow (SharedShell.row 5 5 true 5 2 5 [0,1,2,0,2]) :=
  row_of_forall (discharge bank [12] (hard := []) (by decide +kernel) .nil)

theorem g956 : BadRow (SharedShell.row 5 5 false 5 2 5 [0,1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g957 : BadRow (SharedShell.row 5 5 true 5 2 5 [0,1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g958 : BadRow (SharedShell.row 5 5 false 5 2 5 [0,1,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g959 : BadRow (SharedShell.row 5 5 true 5 2 5 [0,1,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
