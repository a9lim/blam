import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g960 : BadRow (SharedShell.row 5 5 false 5 2 5 [0,1,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g961 : BadRow (SharedShell.row 5 5 true 5 2 5 [0,1,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g962 : BadRow (SharedShell.row 5 5 false 5 2 5 [0,1,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g963 : BadRow (SharedShell.row 5 5 true 5 2 5 [0,1,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g964 : BadRow (SharedShell.row 5 5 false 5 2 5 [0,1,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g965 : BadRow (SharedShell.row 5 5 true 5 2 5 [0,1,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g966 : BadRow (SharedShell.row 5 5 false 5 2 5 [0,2,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g967 : BadRow (SharedShell.row 5 5 true 5 2 5 [0,2,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g968 : BadRow (SharedShell.row 5 5 false 5 2 5 [0,2,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g969 : BadRow (SharedShell.row 5 5 true 5 2 5 [0,2,0,1,2]) :=
  row_of_forall (discharge bank [12,12,12,12,1] (hard := []) (by decide +kernel) .nil)

theorem g970 : BadRow (SharedShell.row 5 5 false 5 2 5 [0,2,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g971 : BadRow (SharedShell.row 5 5 true 5 2 5 [0,2,0,2,1]) :=
  row_of_forall (discharge bank [12,12,1] (hard := []) (by decide +kernel) .nil)

theorem g972 : BadRow (SharedShell.row 5 5 false 5 2 5 [0,2,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g973 : BadRow (SharedShell.row 5 5 true 5 2 5 [0,2,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g974 : BadRow (SharedShell.row 5 5 false 5 2 5 [0,2,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g975 : BadRow (SharedShell.row 5 5 true 5 2 5 [0,2,1,0,2]) :=
  row_of_forall (discharge bank [12,12,12,12,12,1,1] (hard := []) (by decide +kernel) .nil)

theorem g976 : BadRow (SharedShell.row 5 5 false 5 2 5 [0,2,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g977 : BadRow (SharedShell.row 5 5 true 5 2 5 [0,2,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g978 : BadRow (SharedShell.row 5 5 false 5 2 5 [0,2,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g979 : BadRow (SharedShell.row 5 5 true 5 2 5 [0,2,1,2,0]) :=
  row_of_forall (discharge bank [12,12,9] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
