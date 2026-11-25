import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g840 : BadRow (SharedShell.row 5 6 false 5 2 4 [1,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g841 : BadRow (SharedShell.row 5 6 true 5 2 4 [1,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g842 : BadRow (SharedShell.row 5 6 false 5 2 4 [1,2,0,2]) :=
  row_of_forall (discharge bank [10,10,10,1,10,10,10,1,10,10,10,10,10,1,10,10,10,8,10,10,10,10,10,1,10,10,10,12,10,10,10,10,10,1,10,10,10,8,10,10,10,10,10,1,10,10,10,1,10,10] (hard := []) (by decide +kernel) .nil)

theorem g843 : BadRow (SharedShell.row 5 6 true 5 2 4 [1,2,0,2]) :=
  row_of_forall (discharge bank [1,7,1,1,1,1,1,9,1,1,1,1,6,7,6,8,6,1,6,9,6,7,6,1,1,7,1,12,1,1,1,9,1,1,1,1,6,7,6,8,6,1,6,9,6,7,6,1,1,7,1,1,1,1,1,9,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g844 : BadRow (SharedShell.row 5 6 false 5 2 4 [1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g845 : BadRow (SharedShell.row 5 6 true 5 2 4 [1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g846 : BadRow (SharedShell.row 5 6 false 5 2 4 [1,2,2,0]) :=
  row_of_forall (discharge bank [10,10,10,1,10,10,10,23,10,10,10,10,10,1,10,10,10,1,10,10,10,10,10,1,10,10,10,16,10,10] (hard := []) (by decide +kernel) .nil)

theorem g847 : BadRow (SharedShell.row 5 6 true 5 2 4 [1,2,2,0]) :=
  row_of_forall (discharge bank [7,7,7,16,7,1,7,9,7,8,7,1,8,7,1,1,1,1,7,9,1,1,1,1,6,7,6,8,6,1,6,9,6,7,6,1] (hard := []) (by decide +kernel) .nil)

theorem g848 : BadRow (SharedShell.row 5 6 false 5 2 4 [1,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g849 : BadRow (SharedShell.row 5 6 true 5 2 4 [1,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g850 : BadRow (SharedShell.row 5 6 false 5 2 4 [1,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g851 : BadRow (SharedShell.row 5 6 true 5 2 4 [1,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g852 : BadRow (SharedShell.row 5 6 false 5 2 4 [1,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g853 : BadRow (SharedShell.row 5 6 true 5 2 4 [1,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g854 : BadRow (SharedShell.row 5 6 false 5 2 4 [2,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g855 : BadRow (SharedShell.row 5 6 true 5 2 4 [2,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g856 : BadRow (SharedShell.row 5 6 false 5 2 4 [2,0,1,2]) :=
  row_of_forall (discharge bank [10,10,10,1,10,10,10,1,10,10,10,10,10,1,10,10,10,1,10,10,10,10,10,12,10,10,10,5,10,10,10,10,10,1,10,10,10,5,10,10,10,10,10,12,10,10,10,5,10,10] (hard := []) (by decide +kernel) .nil)

theorem g857 : BadRow (SharedShell.row 5 6 true 5 2 4 [2,0,1,2]) :=
  row_of_forall (discharge bank [1,4,1,1,1,1,1,9,1,1,1,1,1,4,1,1,1,1,1,9,1,1,1,1,2,4,2,5,2,1,2,9,2,7,2,1,9,4,9,5,9,1,9,9,9,7,9,1,2,4,2,5,2,1,2,9,2,7,2,1] (hard := []) (by decide +kernel) .nil)

theorem g858 : BadRow (SharedShell.row 5 6 false 5 2 4 [2,0,2,1]) :=
  row_of_forall (discharge bank [10,10,10,12,10,10,10,23,10,10,10,10,10,12,10,10,10,1,10,10,10,10,10,12,10,10,10,5,10,10,10,10,10,12,10,10,10,1,10,10,10,10,10,11,10,10,10,5,10,10] (hard := []) (by decide +kernel) .nil)

theorem g859 : BadRow (SharedShell.row 5 6 true 5 2 4 [2,0,2,1]) :=
  row_of_forall (discharge bank [7,4,7,16,7,1,7,9,7,8,7,1,1,4,1,1,1,1,1,9,1,1,1,1,2,4,2,5,2,1,2,9,2,7,2,1,1,4,1,1,1,1,1,9,1,1,1,1,2,4,2,5,2,1,2,9,2,7,2,1] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
