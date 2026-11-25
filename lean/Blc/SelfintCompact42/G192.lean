import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3840 : BadRow (SharedShell.row 6 4 false 4 4 5 [0,1,0,0,3]) :=
  row_of_forall (discharge bank [2,9,2,9,9,9,9,2,2,2,9,2,2,9,9,1,9,9,9,1,9,9,9,9,9,2,2,2,2,2,2,9,2,9,9,9,9,9,9,9,9,9,9,9,9,1,9,9,9,1,9,9,9,9,9,2,2,9,9,9,9,9,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem g3841 : BadRow (SharedShell.row 6 4 true 4 4 5 [0,1,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3842 : BadRow (SharedShell.row 6 4 false 4 4 5 [0,1,0,1,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,9,9,9,9,9,1,9,9,9,1,9,9,9,9,1,9,4,9,9,9,9,9,9,9,9,9,9,2,2,2,2,2,2,2,2,9,9,9,9,30,9,19,19,19,19,19,19,5,5,5,12,27,12,42,5,5,1,4] (hard := []) (by decide +kernel) .nil)

theorem g3843 : BadRow (SharedShell.row 6 4 true 4 4 5 [0,1,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3844 (hard : BadRow [Floor42.e1211202155382]) : BadRow (SharedShell.row 6 4 false 4 4 5 [0,1,0,2,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,9,9,9,9,9,9,9,9,12,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,0,9,9,9,9,9,9,2,2,2,2,2,2,2,9,9,9,9,9,9,14,9,9,9,19,19,19,19,19,19,5,5,5,5,5,23,12,27,30,12,12,5,5,1,4,42,42,4,4] (hard := [Floor42.e1211202155382]) (by decide +kernel) hard)

theorem g3845 : BadRow (SharedShell.row 6 4 true 4 4 5 [0,1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3846 : BadRow (SharedShell.row 6 4 false 4 4 5 [0,1,0,3,0]) :=
  row_of_forall (discharge bank [2,9,9,2,9,9,9,9,2,2,2,9,9,2,9,2,9,9,9,9,9,9,9,9,2,9,9,2,2,2,2,2,2,9,9,2,9,9,9,9,9,9,2,2,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,2,2,9,9,9,9,9,9,9,5,5,5,5,5,5,5,5,5,5,5,5,5,5,23,12,27,12,12,5,5,42,42,9,4,9,4,9,4,9,4] (hard := []) (by decide +kernel) .nil)

theorem g3847 : BadRow (SharedShell.row 6 4 true 4 4 5 [0,1,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3848 : BadRow (SharedShell.row 6 4 false 4 4 5 [0,1,1,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,9,9,9,9,9,1,1,9,9,9,9,9,9,9,9,9,9,9,9,9,4,9,9,9,9,9,9,9,9,9,2,2,2,2,2,2,2,2,2,2,9,9,9,9,16,9,1,9,19,19,19,19,19,19,19,5,5,43,15,12,24,5,5,5,5,14,4,20,4] (hard := []) (by decide +kernel) .nil)

theorem g3849 : BadRow (SharedShell.row 6 4 true 4 4 5 [0,1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3850 : BadRow (SharedShell.row 6 4 false 4 4 5 [0,1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3851 : BadRow (SharedShell.row 6 4 true 4 4 5 [0,1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3852 : BadRow (SharedShell.row 6 4 false 4 4 5 [0,1,1,2,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,9,9,9,9,9,1,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,2,2,2,2,2,9,9,9,25,9,9,19,19,19,19,5,5,15,43,15,5,5,14,4,20,9,4] (hard := []) (by decide +kernel) .nil)

theorem g3853 : BadRow (SharedShell.row 6 4 true 4 4 5 [0,1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3854 : BadRow (SharedShell.row 6 4 false 4 4 5 [0,1,2,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,9,9,9,9,62,9,9,9,9,1,26,9,9,1,9,9,9,9,9,9,9,9,9,9,9,15,9,9,9,9,9,2,2,2,2,2,2,2,2,2,2,9,9,9,9,12,9,17,9,9,19,19,19,19,19,19,19,5,5,5,18,18,18,15,5,5,5,5,12,4,18,4,20,4] (hard := []) (by decide +kernel) .nil)

theorem g3855 : BadRow (SharedShell.row 6 4 true 4 4 5 [0,1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3856 : BadRow (SharedShell.row 6 4 false 4 4 5 [0,1,2,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,9,9,9,9,9,9,9,9,9,1,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,2,2,2,2,2,2,9,9,9,9,12,9,9,19,19,19,19,5,5,18,18,18,15,5,5,12,4,20,9,4] (hard := []) (by decide +kernel) .nil)

theorem g3857 : BadRow (SharedShell.row 6 4 true 4 4 5 [0,1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3858 : BadRow (SharedShell.row 6 4 false 4 4 5 [0,1,3,0,0]) :=
  row_of_forall (discharge bank [9,9,9,9,2,2,62,9,9,9,1,9,9,9,9,2,9,9,2,2,2,9,9,9,9,9,2,62,1,9,9,9,9,5,5,5,5,5,5,5,5,9,4] (hard := []) (by decide +kernel) .nil)

theorem g3859 : BadRow (SharedShell.row 6 4 true 4 4 5 [0,1,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
