import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g800 : BadRow (SharedShell.row 5 5 false 5 2 4 [0,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g801 : BadRow (SharedShell.row 5 5 true 5 2 4 [0,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g802 : BadRow (SharedShell.row 5 5 false 5 2 4 [0,1,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g803 : BadRow (SharedShell.row 5 5 true 5 2 4 [0,1,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g804 : BadRow (SharedShell.row 5 5 false 5 2 4 [0,2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g805 : BadRow (SharedShell.row 5 5 true 5 2 4 [0,2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g806 : BadRow (SharedShell.row 5 5 false 5 2 4 [0,2,1,2]) :=
  row_of_forall (discharge bank [1,18,18,34,18,1,18,12,8,18,18,34,18,8,18,12,1,18,18,34,18,1,18,12] (hard := []) (by decide +kernel) .nil)

theorem g807 : BadRow (SharedShell.row 5 5 true 5 2 4 [0,2,1,2]) :=
  row_of_forall (discharge bank [10,1,1,1,1,1,8,34,1,1,1,1,10,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g808 : BadRow (SharedShell.row 5 5 false 5 2 4 [0,2,2,1]) :=
  row_of_forall (discharge bank [8,18,18,34,18,8,18,12,1,18,18,34,18,1,18,12,1,18,18,34,18,1,18,12] (hard := []) (by decide +kernel) .nil)

theorem g809 : BadRow (SharedShell.row 5 5 true 5 2 4 [0,2,2,1]) :=
  row_of_forall (discharge bank [8,34,1,1,1,1,11,1,1,1,1,1,11,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g810 : BadRow (SharedShell.row 5 5 false 5 2 4 [0,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g811 : BadRow (SharedShell.row 5 5 true 5 2 4 [0,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g812 : BadRow (SharedShell.row 5 5 false 5 2 4 [0,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g813 : BadRow (SharedShell.row 5 5 true 5 2 4 [0,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g814 : BadRow (SharedShell.row 5 5 false 5 2 4 [0,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g815 : BadRow (SharedShell.row 5 5 true 5 2 4 [0,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g816 : BadRow (SharedShell.row 5 5 false 5 2 4 [0,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g817 : BadRow (SharedShell.row 5 5 true 5 2 4 [0,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g818 : BadRow (SharedShell.row 5 5 false 5 2 4 [0,4,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g819 : BadRow (SharedShell.row 5 5 true 5 2 4 [0,4,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
