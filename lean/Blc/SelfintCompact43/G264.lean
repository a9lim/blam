import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g4224 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,1,2,1,3]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g4225 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,1,2,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4226 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,1,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4227 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,1,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4228 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,1,2,3,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g4229 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,1,2,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4230 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,1,2,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4231 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,1,2,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4232 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,1,3,0,3]) :=
  row_of_forall (discharge bank [1,39,1,39,1,39,1] (hard := []) (by decide +kernel) .nil)

theorem g4233 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,1,3,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4234 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,1,3,1,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g4235 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,1,3,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4236 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,1,3,2,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g4237 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,1,3,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4238 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,1,3,3,0]) :=
  row_of_forall (discharge bank [25,1,25,1,39] (hard := []) (by decide +kernel) .nil)

theorem g4239 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,1,3,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
