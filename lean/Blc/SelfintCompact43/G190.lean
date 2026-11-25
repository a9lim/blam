import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3040 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [2,0,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3041 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [2,0,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3042 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [2,0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3043 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [2,0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3044 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [2,0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3045 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [2,0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3046 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [2,0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3047 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [2,0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3048 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [2,0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3049 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [2,0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3050 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [2,0,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3051 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [2,0,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3052 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [2,1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3053 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [2,1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3054 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [2,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3055 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [2,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
