import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g860 : BadRow (SharedShell.row 5 5 false 5 2 4 [2,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g861 : BadRow (SharedShell.row 5 5 true 5 2 4 [2,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g862 : BadRow (SharedShell.row 5 5 false 5 2 4 [2,1,0,2]) :=
  row_of_forall (discharge bank [1,18,18,13,18,1,18,12,1,18,18,13,18,1,18,12,6,18,18,13,18,6,18,12,6,18,18,13,18,6,18,12,6,18,18,13,18,6,18,12] (hard := []) (by decide +kernel) .nil)

theorem g863 : BadRow (SharedShell.row 5 5 true 5 2 4 [2,1,0,2]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,1,1,1,1,6,34,1,1,1,1,6,34,1,1,1,1,6,34,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g864 : BadRow (SharedShell.row 5 5 false 5 2 4 [2,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g865 : BadRow (SharedShell.row 5 5 true 5 2 4 [2,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g866 : BadRow (SharedShell.row 5 5 false 5 2 4 [2,1,2,0]) :=
  row_of_forall (discharge bank [7,18,18,13,18,7,18,12,7,18,18,13,18,7,18,12,6,18,18,13,18,6,18,12] (hard := []) (by decide +kernel) .nil)

theorem g867 : BadRow (SharedShell.row 5 5 true 5 2 4 [2,1,2,0]) :=
  row_of_forall (discharge bank [27,8,1,1,1,1,1,1,1,1,1,1,6,34,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g868 : BadRow (SharedShell.row 5 5 false 5 2 4 [2,2,0,1]) :=
  row_of_forall (discharge bank [17,18,18,13,18,17,18,12,17,18,18,13,18,17,18,12,4,4,18,13,4,4,18,12,7,18,18,13,18,7,18,12,4,4,18,13,4,4,18,12] (hard := []) (by decide +kernel) .nil)

theorem g869 : BadRow (SharedShell.row 5 5 true 5 2 4 [2,2,0,1]) :=
  row_of_forall (discharge bank [17,8,1,1,1,1,17,8,1,1,1,1,4,1,1,1,1,1,7,27,1,1,1,1,4,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g870 : BadRow (SharedShell.row 5 5 false 5 2 4 [2,2,1,0]) :=
  row_of_forall (discharge bank [17,18,18,13,18,17,18,12,17,18,18,13,18,17,18,12,4,4,18,13,4,4,18,12] (hard := []) (by decide +kernel) .nil)

theorem g871 : BadRow (SharedShell.row 5 5 true 5 2 4 [2,2,1,0]) :=
  row_of_forall (discharge bank [17,8,1,1,1,1,17,8,1,1,1,1,4,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g872 : BadRow (SharedShell.row 5 5 false 5 2 4 [2,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g873 : BadRow (SharedShell.row 5 5 true 5 2 4 [2,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g874 : BadRow (SharedShell.row 5 5 false 5 2 4 [3,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g875 : BadRow (SharedShell.row 5 5 true 5 2 4 [3,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g876 : BadRow (SharedShell.row 5 5 false 5 2 4 [3,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g877 : BadRow (SharedShell.row 5 5 true 5 2 4 [3,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g878 : BadRow (SharedShell.row 5 5 false 5 2 4 [3,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g879 : BadRow (SharedShell.row 5 5 true 5 2 4 [3,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
