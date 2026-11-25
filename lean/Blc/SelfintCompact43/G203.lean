import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3248 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,1,1,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3249 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,1,1,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3250 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,1,2,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3251 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,1,2,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3252 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,1,2,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3253 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,1,2,1,3]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g3254 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,1,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3255 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,1,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3256 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,1,2,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3257 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,1,2,3,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g3258 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,1,2,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3259 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,1,2,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3260 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,1,3,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3261 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,1,3,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3262 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,1,3,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3263 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,1,3,1,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
