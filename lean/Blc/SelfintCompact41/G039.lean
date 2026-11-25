import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g780 : BadRow (SharedShell.row 5 5 false 5 2 3 [5,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g781 : BadRow (SharedShell.row 5 5 true 5 2 3 [5,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g782 : BadRow (SharedShell.row 5 5 false 5 2 4 [0,0,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g783 : BadRow (SharedShell.row 5 5 true 5 2 4 [0,0,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g784 : BadRow (SharedShell.row 5 5 false 5 2 4 [0,0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g785 : BadRow (SharedShell.row 5 5 true 5 2 4 [0,0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g786 : BadRow (SharedShell.row 5 5 false 5 2 4 [0,0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g787 : BadRow (SharedShell.row 5 5 true 5 2 4 [0,0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g788 : BadRow (SharedShell.row 5 5 false 5 2 4 [0,0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g789 : BadRow (SharedShell.row 5 5 true 5 2 4 [0,0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g790 : BadRow (SharedShell.row 5 5 false 5 2 4 [0,0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g791 : BadRow (SharedShell.row 5 5 true 5 2 4 [0,0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g792 : BadRow (SharedShell.row 5 5 false 5 2 4 [0,0,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g793 : BadRow (SharedShell.row 5 5 true 5 2 4 [0,0,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g794 : BadRow (SharedShell.row 5 5 false 5 2 4 [0,1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g795 : BadRow (SharedShell.row 5 5 true 5 2 4 [0,1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g796 : BadRow (SharedShell.row 5 5 false 5 2 4 [0,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g797 : BadRow (SharedShell.row 5 5 true 5 2 4 [0,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g798 : BadRow (SharedShell.row 5 5 false 5 2 4 [0,1,2,2]) :=
  row_of_forall (discharge bank [1,18,18,34,18,1,18,12,1,18,18,34,18,1,18,12,1,18,18,34,18,1,18,12] (hard := []) (by decide +kernel) .nil)

theorem g799 : BadRow (SharedShell.row 5 5 true 5 2 4 [0,1,2,2]) :=
  row_of_forall (discharge bank [10,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
