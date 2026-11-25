import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2608 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [1,0,1,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2609 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [1,0,1,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2610 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [1,0,2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2611 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [1,0,2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2612 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [1,0,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2613 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [1,0,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2614 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [1,0,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2615 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [1,0,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2616 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [1,0,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2617 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [1,0,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2618 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [1,0,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2619 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [1,0,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2620 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [1,0,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2621 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [1,0,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2622 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [1,0,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2623 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [1,0,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
