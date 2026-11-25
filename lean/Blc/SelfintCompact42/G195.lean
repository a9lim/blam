import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3900 : BadRow (SharedShell.row 6 4 false 4 4 5 [1,1,0,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,9,9,9,9,1,9,9,9,9,9,9,9,9,9,9,5,5,5,5,5,1,12,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g3901 : BadRow (SharedShell.row 6 4 true 4 4 5 [1,1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3902 : BadRow (SharedShell.row 6 4 false 4 4 5 [1,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3903 : BadRow (SharedShell.row 6 4 true 4 4 5 [1,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3904 : BadRow (SharedShell.row 6 4 false 4 4 5 [1,1,0,2,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,5,5,5,5,5,23,1,23,12,1,1,47,1] (hard := []) (by decide +kernel) .nil)

theorem g3905 : BadRow (SharedShell.row 6 4 true 4 4 5 [1,1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3906 : BadRow (SharedShell.row 6 4 false 4 4 5 [1,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3907 : BadRow (SharedShell.row 6 4 true 4 4 5 [1,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3908 : BadRow (SharedShell.row 6 4 false 4 4 5 [1,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3909 : BadRow (SharedShell.row 6 4 true 4 4 5 [1,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3910 : BadRow (SharedShell.row 6 4 false 4 4 5 [1,1,2,0,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,9,9,9,9,9,9,9,9,9,9,9,62,9,9,9,9,9,1,9,9,9,9,9,9,9,9,9,5,5,5,25,1,16,1,48] (hard := []) (by decide +kernel) .nil)

theorem g3911 : BadRow (SharedShell.row 6 4 true 4 4 5 [1,1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3912 : BadRow (SharedShell.row 6 4 false 4 4 5 [1,2,0,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,9,9,9,9,66,9,9,9,9,9,62,9,9,9,9,9,9,9,1,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,5,5,5,5,5,20,14,17,3,14] (hard := []) (by decide +kernel) .nil)

theorem g3913 : BadRow (SharedShell.row 6 4 true 4 4 5 [1,2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3914 : BadRow (SharedShell.row 6 4 false 4 4 5 [1,2,0,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,9,9,9,9,9,9,9,9,9,9,9,9,62,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,5,5,5,5,5,20,20,3,14,17,3,24,3] (hard := []) (by decide +kernel) .nil)

theorem g3915 : BadRow (SharedShell.row 6 4 true 4 4 5 [1,2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3916 : BadRow (SharedShell.row 6 4 false 4 4 5 [1,2,1,0,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,40,9,9,9,9,66,9,9,9,9,9,9,9,9,9,9,9,9,9,66,9,9,9,9,9,9,9,9,9,9,5,5,5,25,1,1,12,12] (hard := []) (by decide +kernel) .nil)

theorem g3917 : BadRow (SharedShell.row 6 4 true 4 4 5 [1,2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3918 : BadRow (SharedShell.row 6 4 false 4 4 5 [1,3,0,0,0]) :=
  row_of_forall (discharge bank [1,9,9,9,40,9,9,9,9,62,9,9,9,1,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g3919 : BadRow (SharedShell.row 6 4 true 4 4 5 [1,3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
