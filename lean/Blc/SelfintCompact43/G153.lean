import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2448 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,0,2,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2449 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,0,2,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2450 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,0,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2451 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,0,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2452 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,0,2,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2453 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,0,2,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2454 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,0,2,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2455 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,0,2,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2456 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,0,3,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2457 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,0,3,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2458 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,0,3,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2459 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,0,3,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2460 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,0,3,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2461 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,0,3,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2462 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,0,3,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2463 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,0,3,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
