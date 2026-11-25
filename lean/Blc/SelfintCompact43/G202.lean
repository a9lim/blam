import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3232 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,1,0,4,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3233 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,1,0,4,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3234 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,1,0,5,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3235 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,1,0,5,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3236 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,1,0,6,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3237 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,1,0,6,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3238 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,1,1,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3239 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,1,1,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3240 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,1,1,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3241 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,1,1,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3242 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,1,1,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3243 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,1,1,2,3]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g3244 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,1,1,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3245 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,1,1,3,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g3246 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,1,1,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3247 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,1,1,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
