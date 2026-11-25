import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3184 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,0,2,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3185 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,0,2,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3186 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,0,2,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3187 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,0,2,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3188 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,0,2,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3189 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,0,2,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3190 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,0,2,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3191 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,0,2,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3192 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,0,2,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3193 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,0,2,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3194 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,0,3,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3195 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,0,3,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3196 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,0,3,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3197 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,0,3,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3198 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,0,3,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3199 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,0,3,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
