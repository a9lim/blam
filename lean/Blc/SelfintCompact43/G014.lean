import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g224 : BadRow (Grammar43.fiveRow 7 5 7 false 3 3 5 [0,2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g225 : BadRow (Grammar43.fiveRow 7 5 7 true 3 3 5 [0,2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g226 : BadRow (Grammar43.fiveRow 7 5 7 false 3 3 5 [0,2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g227 : BadRow (Grammar43.fiveRow 7 5 7 true 3 3 5 [0,2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g228 : BadRow (Grammar43.fiveRow 7 5 7 false 3 3 5 [0,3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g229 : BadRow (Grammar43.fiveRow 7 5 7 true 3 3 5 [0,3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g230 : BadRow (Grammar43.fiveRow 7 5 7 false 3 3 5 [1,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g231 : BadRow (Grammar43.fiveRow 7 5 7 true 3 3 5 [1,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g232 : BadRow (Grammar43.fiveRow 7 5 7 false 3 3 5 [1,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g233 : BadRow (Grammar43.fiveRow 7 5 7 true 3 3 5 [1,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g234 : BadRow (Grammar43.fiveRow 7 5 7 false 3 3 5 [1,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g235 : BadRow (Grammar43.fiveRow 7 5 7 true 3 3 5 [1,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g236 : BadRow (Grammar43.fiveRow 7 5 7 false 3 3 5 [1,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g237 : BadRow (Grammar43.fiveRow 7 5 7 true 3 3 5 [1,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g238 : BadRow (Grammar43.fiveRow 7 5 7 false 3 3 5 [1,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g239 : BadRow (Grammar43.fiveRow 7 5 7 true 3 3 5 [1,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
