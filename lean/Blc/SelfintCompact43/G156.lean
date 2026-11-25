import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2496 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,1,1,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2497 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,1,1,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2498 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,1,2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2499 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,1,2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2500 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,1,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2501 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,1,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2502 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,1,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2503 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,1,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2504 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,1,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2505 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,1,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2506 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,1,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2507 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,1,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2508 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,1,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2509 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,1,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2510 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,1,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2511 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,1,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
