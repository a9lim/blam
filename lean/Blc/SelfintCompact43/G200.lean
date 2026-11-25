import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3200 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,0,3,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3201 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,0,3,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3202 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,0,3,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3203 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,0,3,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3204 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,0,4,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3205 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,0,4,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3206 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,0,4,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3207 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,0,4,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3208 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,0,4,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3209 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,0,4,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3210 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,0,4,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3211 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,0,4,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3212 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,0,5,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3213 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,0,5,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3214 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,0,5,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3215 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,0,5,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
