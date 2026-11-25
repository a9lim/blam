import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g5184 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 3 [1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5185 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 3 [1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5186 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 3 [1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5187 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 3 [1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5188 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 3 [1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5189 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 3 [1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5190 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 3 [1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5191 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 3 [1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5192 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 3 [2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5193 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 3 [2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5194 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 3 [2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5195 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 3 [2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5196 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 3 [2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5197 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 3 [2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5198 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 3 [3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5199 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 3 [3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
