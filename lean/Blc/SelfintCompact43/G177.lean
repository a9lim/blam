import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2832 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [5,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2833 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [5,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2834 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [5,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2835 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [5,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2836 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [5,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2837 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [5,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2838 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [6,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2839 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [6,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2840 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 3 [0,0,7]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2841 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 3 [0,0,7]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2842 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 3 [0,1,6]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2843 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 3 [0,1,6]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2844 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 3 [0,2,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2845 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 3 [0,2,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2846 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 3 [0,3,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2847 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 3 [0,3,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
