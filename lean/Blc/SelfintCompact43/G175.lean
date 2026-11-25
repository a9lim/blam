import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2800 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [3,1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2801 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [3,1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2802 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [3,2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2803 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [3,2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2804 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [3,2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2805 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [3,2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2806 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [3,2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2807 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [3,2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2808 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [3,3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2809 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [3,3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2810 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [4,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2811 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [4,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2812 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [4,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2813 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [4,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2814 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [4,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2815 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [4,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
