import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2736 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [2,1,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2737 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [2,1,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2738 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [2,1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2739 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [2,1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2740 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [2,1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2741 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [2,1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2742 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [2,1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2743 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [2,1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2744 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [2,1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2745 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [2,1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2746 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [2,1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2747 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [2,1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2748 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [2,1,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2749 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [2,1,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2750 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [2,2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2751 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [2,2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
