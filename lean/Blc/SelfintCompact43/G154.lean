import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2464 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,0,4,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2465 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,0,4,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2466 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,0,4,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2467 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,0,4,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2468 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,0,4,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2469 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,0,4,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2470 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,0,5,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2471 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,0,5,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2472 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,0,5,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2473 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,0,5,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2474 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,0,6,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2475 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,0,6,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2476 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,1,0,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2477 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,1,0,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2478 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,1,0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2479 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,1,0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
