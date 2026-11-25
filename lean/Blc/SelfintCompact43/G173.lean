import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2768 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [2,4,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2769 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [2,4,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2770 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [3,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2771 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [3,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2772 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [3,0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2773 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [3,0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2774 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [3,0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2775 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [3,0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2776 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [3,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2777 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [3,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2778 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [3,0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2779 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [3,0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2780 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [3,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2781 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [3,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2782 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [3,0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2783 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [3,0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
