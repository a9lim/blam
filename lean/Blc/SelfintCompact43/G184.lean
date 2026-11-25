import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2944 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [0,2,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2945 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [0,2,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2946 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [0,2,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2947 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [0,2,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2948 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [0,2,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2949 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [0,2,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2950 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [0,2,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2951 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [0,2,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2952 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [0,2,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2953 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [0,2,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2954 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [0,3,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2955 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [0,3,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2956 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [0,3,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2957 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [0,3,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2958 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [0,3,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2959 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [0,3,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
