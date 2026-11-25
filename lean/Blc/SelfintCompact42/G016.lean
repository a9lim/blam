import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g320 : BadRow (SharedShell.row 5 6 false 4 2 4 [1,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g321 : BadRow (SharedShell.row 5 6 true 4 2 4 [1,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g322 : BadRow (SharedShell.row 5 6 false 4 2 4 [1,0,1,2]) :=
  row_of_forall (discharge bank [32,1,9,5,9,9,32,1,9,5,9,9,32,1,9,15,9,9,32,1,9,5,9,9,32,1,9,13,9,9,10,1,10,1,10,1,10,9,10,4,10,12] (hard := []) (by decide +kernel) .nil)

theorem g323 : BadRow (SharedShell.row 5 6 true 4 2 4 [1,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g324 : BadRow (SharedShell.row 5 6 false 4 2 4 [1,0,2,1]) :=
  row_of_forall (discharge bank [32,1,9,5,9,9,32,1,9,5,9,9,32,1,9,1,9,9,32,1,9,1,9,9,32,1,9,14,9,9,10,1,10,1,10,1,10,9,10,4,3,3] (hard := []) (by decide +kernel) .nil)

theorem g325 : BadRow (SharedShell.row 5 6 true 4 2 4 [1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g326 : BadRow (SharedShell.row 5 6 false 4 2 4 [1,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g327 : BadRow (SharedShell.row 5 6 true 4 2 4 [1,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g328 : BadRow (SharedShell.row 5 6 false 4 2 4 [1,1,0,2]) :=
  row_of_forall (discharge bank [32,1,9,5,9,9,32,1,9,5,9,9,32,1,9,5,9,9,32,1,9,5,9,9,32,1,9,5,9,9,10,1,10,1,10,1,10,9,10,4,10,12,10,1,10,1,10,1,10,9,10,4,10,12] (hard := []) (by decide +kernel) .nil)

theorem g329 : BadRow (SharedShell.row 5 6 true 4 2 4 [1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g330 : BadRow (SharedShell.row 5 6 false 4 2 4 [1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g331 : BadRow (SharedShell.row 5 6 true 4 2 4 [1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g332 : BadRow (SharedShell.row 5 6 false 4 2 4 [1,1,2,0]) :=
  row_of_forall (discharge bank [32,1,9,5,9,9,32,1,9,5,9,9,32,1,9,5,9,9,10,1,10,1,10,1,10,9,10,4,10,12] (hard := []) (by decide +kernel) .nil)

theorem g333 : BadRow (SharedShell.row 5 6 true 4 2 4 [1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g334 : BadRow (SharedShell.row 5 6 false 4 2 4 [1,2,0,1]) :=
  row_of_forall (discharge bank [32,1,9,5,9,9,32,1,9,5,9,9,32,1,9,1,9,9,32,1,9,1,9,9,32,1,9,14,9,9,10,25,10,1,10,1,10,9,10,4,10,17,10,1,10,1,10,1,10,9,10,4,3,3] (hard := []) (by decide +kernel) .nil)

theorem g335 : BadRow (SharedShell.row 5 6 true 4 2 4 [1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g336 : BadRow (SharedShell.row 5 6 false 4 2 4 [1,2,1,0]) :=
  row_of_forall (discharge bank [32,1,9,5,9,9,32,1,9,5,9,9,32,1,9,15,9,9,10,1,10,1,10,1,10,9,10,4,10,12] (hard := []) (by decide +kernel) .nil)

theorem g337 : BadRow (SharedShell.row 5 6 true 4 2 4 [1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g338 : BadRow (SharedShell.row 5 6 false 4 2 4 [1,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g339 : BadRow (SharedShell.row 5 6 true 4 2 4 [1,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
