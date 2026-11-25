import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g320 : BadRow (SharedShell.row 5 5 false 4 2 4 [1,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g321 : BadRow (SharedShell.row 5 5 true 4 2 4 [1,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g322 : BadRow (SharedShell.row 5 5 false 4 2 4 [1,0,1,2]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,18,18,18,17,18,18,18,10,18,18] (hard := []) (by decide +kernel) .nil)

theorem g323 : BadRow (SharedShell.row 5 5 true 4 2 4 [1,0,1,2]) :=
  row_of_forall (discharge bank [12,12,12,6,30,1,12,12,12,6,30,1,12,12,12,14,30,1,12,12,12,6,30,1,12,12,12,16,30,1,2,13,2,10,1,1,1,12,3,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g324 : BadRow (SharedShell.row 5 5 false 4 2 4 [1,0,2,1]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,18,18,4,4,18,18,4,4,18,18] (hard := []) (by decide +kernel) .nil)

theorem g325 : BadRow (SharedShell.row 5 5 true 4 2 4 [1,0,2,1]) :=
  row_of_forall (discharge bank [12,12,12,6,30,1,12,12,12,6,30,1,12,12,12,1,30,1,12,12,12,1,30,1,12,12,12,17,30,1,2,13,4,4,1,1,1,12,3,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g326 : BadRow (SharedShell.row 5 5 false 4 2 4 [1,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g327 : BadRow (SharedShell.row 5 5 true 4 2 4 [1,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g328 : BadRow (SharedShell.row 5 5 false 4 2 4 [1,1,0,2]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,18,18,18,1,18,18,18,10,18,18,18,18,18,1,18,18,18,10,18,18] (hard := []) (by decide +kernel) .nil)

theorem g329 : BadRow (SharedShell.row 5 5 true 4 2 4 [1,1,0,2]) :=
  row_of_forall (discharge bank [12,12,12,6,30,1,12,12,12,6,30,1,12,12,12,6,30,1,12,12,12,6,30,1,12,12,12,6,30,1,3,13,3,10,1,1,1,12,3,1,1,1,3,13,5,10,1,1,1,12,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g330 : BadRow (SharedShell.row 5 5 false 4 2 4 [1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g331 : BadRow (SharedShell.row 5 5 true 4 2 4 [1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g332 : BadRow (SharedShell.row 5 5 false 4 2 4 [1,1,2,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,18,18,18,1,18,18,18,10,18,18] (hard := []) (by decide +kernel) .nil)

theorem g333 : BadRow (SharedShell.row 5 5 true 4 2 4 [1,1,2,0]) :=
  row_of_forall (discharge bank [12,12,12,6,30,1,12,12,12,6,30,1,12,12,12,6,30,1,9,13,5,10,10,1,8,12,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g334 : BadRow (SharedShell.row 5 5 false 4 2 4 [1,2,0,1]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,18,18,18,7,18,18,18,48,18,18,18,18,4,4,18,18,4,4,18,18] (hard := []) (by decide +kernel) .nil)

theorem g335 : BadRow (SharedShell.row 5 5 true 4 2 4 [1,2,0,1]) :=
  row_of_forall (discharge bank [12,12,12,6,30,1,12,12,12,6,30,1,12,12,12,1,30,1,12,12,12,1,30,1,12,12,12,17,30,1,7,13,7,15,1,1,6,12,9,22,1,1,7,13,4,4,1,1,6,12,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g336 : BadRow (SharedShell.row 5 5 false 4 2 4 [1,2,1,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,18,18,18,1,18,18,18,10,18,18] (hard := []) (by decide +kernel) .nil)

theorem g337 : BadRow (SharedShell.row 5 5 true 4 2 4 [1,2,1,0]) :=
  row_of_forall (discharge bank [12,12,12,6,30,1,12,12,12,6,30,1,12,12,12,14,30,1,9,13,11,10,10,1,6,12,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g338 : BadRow (SharedShell.row 5 5 false 4 2 4 [1,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g339 : BadRow (SharedShell.row 5 5 true 4 2 4 [1,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
