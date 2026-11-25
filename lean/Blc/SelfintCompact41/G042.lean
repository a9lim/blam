import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g840 : BadRow (SharedShell.row 5 5 false 5 2 4 [1,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g841 : BadRow (SharedShell.row 5 5 true 5 2 4 [1,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g842 : BadRow (SharedShell.row 5 5 false 5 2 4 [1,2,0,2]) :=
  row_of_forall (discharge bank [1,18,18,34,18,1,18,12,17,18,18,34,18,17,18,12,1,18,18,34,18,1,18,12,17,18,18,34,18,17,18,12,17,18,18,34,18,17,18,12] (hard := []) (by decide +kernel) .nil)

theorem g843 : BadRow (SharedShell.row 5 5 true 5 2 4 [1,2,0,2]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,8,34,1,1,1,1,10,1,1,1,1,1,8,34,1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g844 : BadRow (SharedShell.row 5 5 false 5 2 4 [1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g845 : BadRow (SharedShell.row 5 5 true 5 2 4 [1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g846 : BadRow (SharedShell.row 5 5 false 5 2 4 [1,2,2,0]) :=
  row_of_forall (discharge bank [9,18,18,34,18,9,18,12,10,18,18,34,18,10,18,12,9,18,18,34,18,9,18,12] (hard := []) (by decide +kernel) .nil)

theorem g847 : BadRow (SharedShell.row 5 5 true 5 2 4 [1,2,2,0]) :=
  row_of_forall (discharge bank [27,8,1,1,1,1,1,1,1,1,1,1,8,34,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g848 : BadRow (SharedShell.row 5 5 false 5 2 4 [1,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g849 : BadRow (SharedShell.row 5 5 true 5 2 4 [1,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g850 : BadRow (SharedShell.row 5 5 false 5 2 4 [1,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g851 : BadRow (SharedShell.row 5 5 true 5 2 4 [1,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g852 : BadRow (SharedShell.row 5 5 false 5 2 4 [1,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g853 : BadRow (SharedShell.row 5 5 true 5 2 4 [1,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g854 : BadRow (SharedShell.row 5 5 false 5 2 4 [2,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g855 : BadRow (SharedShell.row 5 5 true 5 2 4 [2,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g856 : BadRow (SharedShell.row 5 5 false 5 2 4 [2,0,1,2]) :=
  row_of_forall (discharge bank [1,18,18,13,18,1,18,12,1,18,18,13,18,1,18,12,6,18,18,13,18,6,18,12,6,18,18,13,18,6,18,12,6,18,18,13,18,6,18,12] (hard := []) (by decide +kernel) .nil)

theorem g857 : BadRow (SharedShell.row 5 5 true 5 2 4 [2,0,1,2]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,1,1,1,1,6,34,1,1,1,1,6,34,1,1,1,1,6,34,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g858 : BadRow (SharedShell.row 5 5 false 5 2 4 [2,0,2,1]) :=
  row_of_forall (discharge bank [27,18,18,13,18,27,18,12,1,18,18,13,18,1,18,12,6,18,18,13,18,6,18,12,10,18,18,13,18,10,18,12,6,18,18,13,18,6,18,12] (hard := []) (by decide +kernel) .nil)

theorem g859 : BadRow (SharedShell.row 5 5 true 5 2 4 [2,0,2,1]) :=
  row_of_forall (discharge bank [27,8,1,1,1,1,1,1,1,1,1,1,6,34,1,1,1,1,1,1,1,1,1,1,6,34,1,1,1,1] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
