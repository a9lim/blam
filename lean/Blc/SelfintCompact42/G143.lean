import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2860 : BadRow (SharedShell.row 6 4 false 3 2 4 [0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2861 : BadRow (SharedShell.row 6 4 true 3 2 4 [0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2862 : BadRow (SharedShell.row 6 4 false 3 2 4 [0,0,1,2]) :=
  row_of_forall (discharge bank [9,9,9,9,29,9,9,4,9,9,9,9,29,9,9,4,9,9,9,9,29,9,9,4,9,9,9,9,19,9,9,5,10,29,15,10,10,10,10,10,4,10,15,10,9,10,10,10,10,29,10,29,10,9,10,10,10] (hard := []) (by decide +kernel) .nil)

theorem g2863 : BadRow (SharedShell.row 6 4 true 3 2 4 [0,0,1,2]) :=
  row_of_forall (discharge bank [9,32,9,1,1,9,1,9,9,32,9,1,1,9,1,9,9,32,9,1,1,9,1,9,9,32,9,1,1,9,1,9,10,31,29,33,22,1,1,10,10,10,12,1,1,10,10,10,12,10,10,2] (hard := []) (by decide +kernel) .nil)

theorem g2864 : BadRow (SharedShell.row 6 4 false 3 2 4 [0,0,2,1]) :=
  row_of_forall (discharge bank [9,9,9,9,29,9,9,4,9,9,9,9,29,9,9,4,9,9,9,9,29,9,9,4,9,9,9,9,19,9,9,5,10,29,41,10,10,10,10,10,4,10,41,10,9,10,10,10,10,29,10,29,10,9,10,10,10] (hard := []) (by decide +kernel) .nil)

theorem g2865 : BadRow (SharedShell.row 6 4 true 3 2 4 [0,0,2,1]) :=
  row_of_forall (discharge bank [9,32,9,1,1,9,1,9,9,32,9,1,1,9,1,9,9,32,9,1,1,9,1,9,9,32,9,1,1,9,1,9,10,31,29,33,18,1,1,10,10,10,12,1,1,10,10,10,12,10,10,2] (hard := []) (by decide +kernel) .nil)

theorem g2866 : BadRow (SharedShell.row 6 4 false 3 2 4 [0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2867 : BadRow (SharedShell.row 6 4 true 3 2 4 [0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2868 : BadRow (SharedShell.row 6 4 false 3 2 4 [0,1,0,2]) :=
  row_of_forall (discharge bank [9,9,9,9,29,9,9,4,9,9,9,9,29,9,9,4,9,9,9,9,29,9,9,4,9,9,9,9,29,9,9,4,9,9,9,9,29,9,9,4,9,9,9,9,19,9,9,5,9,9,9,9,19,9,9,5,10,29,43,10,10,10,10,10,4,10,43,10,9,10,10,10,10,29,10,29,10,9,10,10,10,10,29,42,10,10,10,10,10,4,10,42,10,9,10,10,10,10,29,10,29,10,9,10,10,10] (hard := []) (by decide +kernel) .nil)

theorem g2869 : BadRow (SharedShell.row 6 4 true 3 2 4 [0,1,0,2]) :=
  row_of_forall (discharge bank [9,32,9,1,1,9,1,9,9,32,9,1,1,9,1,9,9,32,9,1,1,9,1,9,9,32,9,1,1,9,1,9,9,32,9,1,1,9,1,9,9,32,9,1,1,9,1,9,9,32,9,1,1,9,1,9,10,31,29,33,15,1,1,10,10,10,12,1,1,10,10,10,12,10,10,2,10,31,29,33,20,1,1,10,10,10,14,1,1,10,10,10,12,10,10,2] (hard := []) (by decide +kernel) .nil)

theorem g2870 : BadRow (SharedShell.row 6 4 false 3 2 4 [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2871 : BadRow (SharedShell.row 6 4 true 3 2 4 [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2872 : BadRow (SharedShell.row 6 4 false 3 2 4 [0,1,2,0]) :=
  row_of_forall (discharge bank [9,9,9,9,29,9,9,4,9,9,9,9,29,9,9,4,9,9,9,9,29,9,9,4,9,9,9,9,19,9,9,5,10,29,15,10,10,10,10,10,4,10,15,10,9,10,10,10,10,29,10,29,10,9,10,10,10] (hard := []) (by decide +kernel) .nil)

theorem g2873 : BadRow (SharedShell.row 6 4 true 3 2 4 [0,1,2,0]) :=
  row_of_forall (discharge bank [9,32,9,1,1,9,1,9,9,32,9,1,1,9,1,9,9,32,9,1,1,9,1,9,9,32,9,1,1,9,1,9,10,31,29,33,15,1,1,10,10,10,12,1,1,10,10,10,20,10,10,2] (hard := []) (by decide +kernel) .nil)

theorem g2874 : BadRow (SharedShell.row 6 4 false 3 2 4 [0,2,0,1]) :=
  row_of_forall (discharge bank [9,9,9,9,29,9,9,4,9,9,9,9,29,9,9,4,9,9,9,9,29,9,9,4,9,9,9,9,29,9,9,4,9,9,9,9,29,9,9,4,9,9,9,9,19,9,9,5,9,9,9,9,19,9,9,5,10,29,20,10,10,10,10,10,4,10,20,10,9,10,10,10,10,29,10,29,10,9,10,10,10,10,29,18,10,10,10,10,10,4,10,18,10,9,10,10,10,10,29,10,29,10,9,10,10,10] (hard := []) (by decide +kernel) .nil)

theorem g2875 : BadRow (SharedShell.row 6 4 true 3 2 4 [0,2,0,1]) :=
  row_of_forall (discharge bank [9,32,9,1,1,9,1,9,9,32,9,1,1,9,1,9,9,32,9,1,1,9,1,9,9,32,9,1,1,9,1,9,9,32,9,1,1,9,1,9,9,32,9,1,1,9,1,9,9,32,9,1,1,9,1,9,10,31,29,33,15,1,1,10,10,10,12,1,1,10,10,10,21,10,10,2,10,31,29,33,18,1,1,10,10,10,12,1,1,10,10,10,15,10,10,2] (hard := []) (by decide +kernel) .nil)

theorem g2876 : BadRow (SharedShell.row 6 4 false 3 2 4 [0,2,1,0]) :=
  row_of_forall (discharge bank [9,9,9,9,29,9,9,4,9,9,9,9,29,9,9,4,9,9,9,9,29,9,9,4,9,9,9,9,19,9,9,5,10,29,11,10,10,10,10,10,4,10,11,10,9,10,10,10,10,29,10,29,10,9,10,10,10] (hard := []) (by decide +kernel) .nil)

theorem g2877 : BadRow (SharedShell.row 6 4 true 3 2 4 [0,2,1,0]) :=
  row_of_forall (discharge bank [9,32,9,1,1,9,1,9,9,32,9,1,1,9,1,9,9,32,9,1,1,9,1,9,9,32,9,1,1,9,1,9,10,31,29,33,30,1,1,10,10,10,18,1,1,10,10,10,12,10,10,2] (hard := []) (by decide +kernel) .nil)

theorem g2878 : BadRow (SharedShell.row 6 4 false 3 2 4 [0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2879 : BadRow (SharedShell.row 6 4 true 3 2 4 [0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
