import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3000 : BadRow (SharedShell.row 6 4 false 3 3 4 [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3001 : BadRow (SharedShell.row 6 4 true 3 3 4 [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3002 : BadRow (SharedShell.row 6 4 false 3 3 4 [0,1,2,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem g3003 : BadRow (SharedShell.row 6 4 true 3 3 4 [0,1,2,0]) :=
  row_of_forall (discharge bank [2,2,2,4,6,1,2,2,2,4,6,1,2,2,2,4,6,1,2,2,2,4,6,1,2,2,2,19,6,1] (hard := []) (by decide +kernel) .nil)

theorem g3004 : BadRow (SharedShell.row 6 4 false 3 3 4 [0,2,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem g3005 : BadRow (SharedShell.row 6 4 true 3 3 4 [0,2,0,1]) :=
  row_of_forall (discharge bank [2,2,2,4,6,1,2,2,2,4,6,1,2,2,2,4,6,1,2,2,2,4,6,1,2,2,2,4,6,1,2,2,2,4,6,1,2,2,2,4,6,1,2,2,2,19,6,1,2,2,2,19,6,1] (hard := []) (by decide +kernel) .nil)

theorem g3006 : BadRow (SharedShell.row 6 4 false 3 3 4 [0,2,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem g3007 : BadRow (SharedShell.row 6 4 true 3 3 4 [0,2,1,0]) :=
  row_of_forall (discharge bank [2,2,2,4,6,1,2,2,2,4,6,1,2,2,2,4,6,1,2,2,2,4,6,1,2,2,2,19,6,1] (hard := []) (by decide +kernel) .nil)

theorem g3008 : BadRow (SharedShell.row 6 4 false 3 3 4 [0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3009 : BadRow (SharedShell.row 6 4 true 3 3 4 [0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3010 : BadRow (SharedShell.row 6 4 false 3 3 4 [1,0,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem g3011 : BadRow (SharedShell.row 6 4 true 3 3 4 [1,0,0,2]) :=
  row_of_forall (discharge bank [2,2,2,4,6,1,2,2,2,4,6,1,2,2,2,4,6,1,2,2,2,4,6,1,2,2,2,4,6,1] (hard := []) (by decide +kernel) .nil)

theorem g3012 : BadRow (SharedShell.row 6 4 false 3 3 4 [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3013 : BadRow (SharedShell.row 6 4 true 3 3 4 [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3014 : BadRow (SharedShell.row 6 4 false 3 3 4 [1,0,2,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem g3015 : BadRow (SharedShell.row 6 4 true 3 3 4 [1,0,2,0]) :=
  row_of_forall (discharge bank [2,2,2,4,6,1,2,2,2,4,6,1,2,2,2,4,6,1,2,2,2,4,6,1,2,2,2,4,6,1] (hard := []) (by decide +kernel) .nil)

theorem g3016 : BadRow (SharedShell.row 6 4 false 3 3 4 [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3017 : BadRow (SharedShell.row 6 4 true 3 3 4 [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3018 : BadRow (SharedShell.row 6 4 false 3 3 4 [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3019 : BadRow (SharedShell.row 6 4 true 3 3 4 [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
