import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g860 : BadRow (SharedShell.row 5 6 false 5 2 4 [2,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g861 : BadRow (SharedShell.row 5 6 true 5 2 4 [2,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g862 : BadRow (SharedShell.row 5 6 false 5 2 4 [2,1,0,2]) :=
  row_of_forall (discharge bank [10,10,10,1,10,10,10,1,10,10,10,10,10,1,10,10,10,1,10,10,10,10,10,12,10,10,10,5,10,10,10,10,10,1,10,10,10,5,10,10,10,10,10,1,10,10,10,5,10,10] (hard := []) (by decide +kernel) .nil)

theorem g863 : BadRow (SharedShell.row 5 6 true 5 2 4 [2,1,0,2]) :=
  row_of_forall (discharge bank [1,4,1,1,1,1,1,9,1,1,1,1,1,4,1,1,1,1,1,9,1,1,1,1,2,4,2,5,2,1,2,9,2,7,2,1,9,4,9,5,9,1,9,9,9,7,9,1,2,4,2,5,2,1,2,9,2,7,2,1] (hard := []) (by decide +kernel) .nil)

theorem g864 : BadRow (SharedShell.row 5 6 false 5 2 4 [2,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g865 : BadRow (SharedShell.row 5 6 true 5 2 4 [2,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g866 : BadRow (SharedShell.row 5 6 false 5 2 4 [2,1,2,0]) :=
  row_of_forall (discharge bank [10,10,10,1,10,10,10,23,10,10,10,10,10,1,10,10,10,1,10,10,10,10,10,12,10,10,10,5,10,10] (hard := []) (by decide +kernel) .nil)

theorem g867 : BadRow (SharedShell.row 5 6 true 5 2 4 [2,1,2,0]) :=
  row_of_forall (discharge bank [7,4,7,16,7,1,7,9,7,8,7,1,1,4,1,1,1,1,1,9,1,1,1,1,2,4,2,5,2,1,2,9,2,7,2,1] (hard := []) (by decide +kernel) .nil)

theorem g868 : BadRow (SharedShell.row 5 6 false 5 2 4 [2,2,0,1]) :=
  row_of_forall (discharge bank [10,10,10,12,10,10,10,18,10,10,10,10,10,12,10,10,10,18,10,10,10,10,3,3,10,10,3,3,10,10,10,10,10,12,10,10,10,15,10,10,10,10,3,3,10,10,3,3,10,10] (hard := []) (by decide +kernel) .nil)

theorem g869 : BadRow (SharedShell.row 5 6 true 5 2 4 [2,2,0,1]) :=
  row_of_forall (discharge bank [4,4,4,14,4,1,4,9,7,8,7,1,4,4,4,14,4,1,4,9,7,8,7,1,5,4,3,3,1,1,4,9,1,1,1,1,4,4,4,18,4,1,4,9,7,16,7,1,5,4,3,3,1,1,4,9,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g870 : BadRow (SharedShell.row 5 6 false 5 2 4 [2,2,1,0]) :=
  row_of_forall (discharge bank [10,10,10,1,10,10,10,18,10,10,10,10,10,1,10,10,10,18,10,10,10,10,3,3,10,10,3,3,10,10] (hard := []) (by decide +kernel) .nil)

theorem g871 : BadRow (SharedShell.row 5 6 true 5 2 4 [2,2,1,0]) :=
  row_of_forall (discharge bank [4,4,4,14,4,1,4,9,7,8,7,1,4,4,4,14,4,1,4,9,7,8,7,1,5,4,3,3,1,1,4,9,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g872 : BadRow (SharedShell.row 5 6 false 5 2 4 [2,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g873 : BadRow (SharedShell.row 5 6 true 5 2 4 [2,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g874 : BadRow (SharedShell.row 5 6 false 5 2 4 [3,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g875 : BadRow (SharedShell.row 5 6 true 5 2 4 [3,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g876 : BadRow (SharedShell.row 5 6 false 5 2 4 [3,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g877 : BadRow (SharedShell.row 5 6 true 5 2 4 [3,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g878 : BadRow (SharedShell.row 5 6 false 5 2 4 [3,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g879 : BadRow (SharedShell.row 5 6 true 5 2 4 [3,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
