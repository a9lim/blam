import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2560 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,3,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2561 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,3,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2562 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,3,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2563 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,3,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2564 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,3,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2565 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,3,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2566 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,3,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2567 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,3,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2568 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,4,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2569 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,4,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2570 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,4,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2571 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,4,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2572 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,4,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2573 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,4,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2574 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,4,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2575 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,4,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
