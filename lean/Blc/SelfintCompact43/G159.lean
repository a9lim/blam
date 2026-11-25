import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2544 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,2,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2545 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,2,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2546 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,2,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2547 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,2,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2548 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,3,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2549 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,3,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2550 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,3,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2551 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,3,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2552 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,3,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2553 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,3,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2554 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,3,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2555 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,3,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2556 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,3,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2557 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,3,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2558 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,3,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2559 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,3,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
