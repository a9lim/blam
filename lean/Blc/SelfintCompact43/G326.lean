import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g5216 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 4 [0,1,1,2]) :=
  row_of_forall (discharge bank [4,4,4,4,1,4,4,1,4,4,4,4,28,4,4,25,4,4,4,4,1,4,4,1] (hard := []) (by decide +kernel) .nil)

theorem g5217 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 4 [0,1,1,2]) :=
  row_of_forall (discharge bank [4,41,4,1,1,1,4,41,4,1,1,1,4,41,4,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g5218 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 4 [0,1,2,1]) :=
  row_of_forall (discharge bank [4,4,4,4,1,4,4,1,4,4,4,4,1,4,4,1,4,4,4,4,1,4,4,1] (hard := []) (by decide +kernel) .nil)

theorem g5219 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 4 [0,1,2,1]) :=
  row_of_forall (discharge bank [4,41,4,1,1,1,4,41,4,1,1,1,4,41,4,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g5220 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 4 [0,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5221 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 4 [0,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5222 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 4 [0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5223 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 4 [0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5224 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 4 [0,2,1,1]) :=
  row_of_forall (discharge bank [4,4,4,4,28,4,4,25,4,4,4,4,1,4,4,1,4,4,4,4,1,4,4,1] (hard := []) (by decide +kernel) .nil)

theorem g5225 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 4 [0,2,1,1]) :=
  row_of_forall (discharge bank [4,41,4,1,1,1,4,41,4,1,1,1,4,41,4,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g5226 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 4 [0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5227 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 4 [0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5228 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 4 [0,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5229 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 4 [0,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5230 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 4 [0,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5231 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 4 [0,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
