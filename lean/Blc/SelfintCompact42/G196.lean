import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3920 : BadRow (SharedShell.row 6 4 false 4 4 5 [2,0,0,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,9,5,9,1,9,9,9,9,9,9,3,9,9,9,1,9,9,9,65,9,9,9,9,3,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g3921 : BadRow (SharedShell.row 6 4 true 4 4 5 [2,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3922 : BadRow (SharedShell.row 6 4 false 4 4 5 [2,0,0,1,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,9,9,9,9,5,9,9,9,9,9,1,9,9,9,9,9,9,9,9,9,9,9,9,9,9,3,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,9,9,9,9,65,9,9,9,9,9,3,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g3923 : BadRow (SharedShell.row 6 4 true 4 4 5 [2,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3924 : BadRow (SharedShell.row 6 4 false 4 4 5 [2,0,0,2,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g3925 : BadRow (SharedShell.row 6 4 true 4 4 5 [2,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3926 : BadRow (SharedShell.row 6 4 false 4 4 5 [2,0,1,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,9,9,9,9,1,9,5,9,9,9,9,9,9,9,9,9,9,1,9,9,9,9,9,9,9,9,65,9,54,9,64,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,64,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g3927 : BadRow (SharedShell.row 6 4 true 4 4 5 [2,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3928 : BadRow (SharedShell.row 6 4 false 4 4 5 [2,0,1,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,9,9,9,9,9,9,9,9,5,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,64,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g3929 : BadRow (SharedShell.row 6 4 true 4 4 5 [2,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3930 : BadRow (SharedShell.row 6 4 false 4 4 5 [2,0,2,0,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,1,1,9,9,9,9,36,65,9,54,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g3931 : BadRow (SharedShell.row 6 4 true 4 4 5 [2,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3932 : BadRow (SharedShell.row 6 4 false 4 4 5 [2,1,0,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,9,9,9,9,1,9,9,9,9,9,1,9,9,9,9,9,9,9,9,9,9,65,9,9,9,9,9,9,9,9,9,9,9,9,9,54,9,9,9,9,65,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g3933 : BadRow (SharedShell.row 6 4 true 4 4 5 [2,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3934 : BadRow (SharedShell.row 6 4 false 4 4 5 [2,1,0,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,9,9,9,9,9,9,9,9,9,9,9,9,1,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g3935 : BadRow (SharedShell.row 6 4 true 4 4 5 [2,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3936 : BadRow (SharedShell.row 6 4 false 4 4 5 [2,1,1,0,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,9,9,9,9,1,9,9,9,9,9,9,9,9,9,9,9,9,9,54,9,9,9,9,9,65,9,54,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g3937 : BadRow (SharedShell.row 6 4 true 4 4 5 [2,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3938 : BadRow (SharedShell.row 6 4 false 4 4 5 [2,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3939 : BadRow (SharedShell.row 6 4 true 4 4 5 [2,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
