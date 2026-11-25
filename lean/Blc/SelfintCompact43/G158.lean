import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2528 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,2,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2529 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,2,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2530 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,2,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2531 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,2,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2532 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,2,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2533 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,2,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2534 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,2,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2535 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,2,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2536 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,2,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2537 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,2,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2538 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,2,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2539 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,2,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2540 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,2,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2541 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,2,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2542 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,2,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2543 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,2,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
