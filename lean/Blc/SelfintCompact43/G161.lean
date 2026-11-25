import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2576 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,4,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2577 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,4,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2578 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,4,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2579 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,4,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2580 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,5,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2581 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,5,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2582 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,5,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2583 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,5,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2584 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,5,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2585 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,5,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2586 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [0,6,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2587 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [0,6,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2588 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [1,0,0,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2589 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [1,0,0,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2590 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [1,0,0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2591 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [1,0,0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
