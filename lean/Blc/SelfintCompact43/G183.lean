import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2928 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [0,1,0,6]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2929 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [0,1,0,6]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2930 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [0,1,1,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2931 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [0,1,1,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2932 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [0,1,2,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2933 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [0,1,2,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2934 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [0,1,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2935 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [0,1,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2936 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [0,1,4,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2937 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [0,1,4,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2938 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [0,1,5,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2939 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [0,1,5,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2940 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [0,1,6,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2941 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [0,1,6,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2942 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [0,2,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2943 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [0,2,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
