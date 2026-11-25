import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g4208 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,1,0,6,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4209 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,1,0,6,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4210 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,1,1,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4211 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,1,1,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4212 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,1,1,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4213 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,1,1,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4214 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,1,1,2,3]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g4215 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,1,1,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4216 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,1,1,3,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g4217 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,1,1,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4218 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,1,1,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4219 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,1,1,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4220 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,1,1,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4221 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,1,1,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4222 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,1,2,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4223 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,1,2,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
