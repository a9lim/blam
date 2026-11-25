import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2400 : BadRow (SharedShell.row 5 6 false 6 3 4 [4,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2401 : BadRow (SharedShell.row 5 6 true 6 3 4 [4,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2402 : BadRow (SharedShell.row 5 6 false 6 3 4 [4,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2403 : BadRow (SharedShell.row 5 6 true 6 3 4 [4,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2404 : BadRow (SharedShell.row 5 6 false 6 3 4 [4,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2405 : BadRow (SharedShell.row 5 6 true 6 3 4 [4,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2406 : BadRow (SharedShell.row 5 6 false 6 3 4 [4,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2407 : BadRow (SharedShell.row 5 6 true 6 3 4 [4,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2408 : BadRow (SharedShell.row 5 6 false 6 3 4 [4,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2409 : BadRow (SharedShell.row 5 6 true 6 3 4 [4,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2410 : BadRow (SharedShell.row 5 6 false 6 3 4 [4,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2411 : BadRow (SharedShell.row 5 6 true 6 3 4 [4,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2412 : BadRow (SharedShell.row 5 6 false 6 3 4 [5,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2413 : BadRow (SharedShell.row 5 6 true 6 3 4 [5,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2414 : BadRow (SharedShell.row 5 6 false 6 3 4 [5,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2415 : BadRow (SharedShell.row 5 6 true 6 3 4 [5,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2416 : BadRow (SharedShell.row 5 6 false 6 3 4 [5,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2417 : BadRow (SharedShell.row 5 6 true 6 3 4 [5,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2418 : BadRow (SharedShell.row 5 6 false 6 3 4 [6,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2419 : BadRow (SharedShell.row 5 6 true 6 3 4 [6,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
