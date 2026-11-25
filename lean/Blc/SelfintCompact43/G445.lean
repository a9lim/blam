import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g7120 : BadRow (Grammar43.fiveRow 7 7 3 false 3 2 3 [1,0,2]) :=
  row_of_forall (discharge bank [49,2,49,2] (hard := []) (by decide +kernel) .nil)

theorem g7121 : BadRow (Grammar43.fiveRow 7 7 3 true 3 2 3 [1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7122 : BadRow (Grammar43.fiveRow 7 7 3 false 3 2 3 [1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7123 : BadRow (Grammar43.fiveRow 7 7 3 true 3 2 3 [1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7124 : BadRow (Grammar43.fiveRow 7 7 3 false 3 2 3 [1,2,0]) :=
  row_of_forall (discharge bank [49,2] (hard := []) (by decide +kernel) .nil)

theorem g7125 : BadRow (Grammar43.fiveRow 7 7 3 true 3 2 3 [1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7126 : BadRow (Grammar43.fiveRow 7 7 3 false 3 2 3 [2,0,1]) :=
  row_of_forall (discharge bank [49,2,49,2] (hard := []) (by decide +kernel) .nil)

theorem g7127 : BadRow (Grammar43.fiveRow 7 7 3 true 3 2 3 [2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7128 : BadRow (Grammar43.fiveRow 7 7 3 false 3 2 3 [2,1,0]) :=
  row_of_forall (discharge bank [49,2] (hard := []) (by decide +kernel) .nil)

theorem g7129 : BadRow (Grammar43.fiveRow 7 7 3 true 3 2 3 [2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7130 : BadRow (Grammar43.fiveRow 7 7 3 false 3 2 3 [3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7131 : BadRow (Grammar43.fiveRow 7 7 3 true 3 2 3 [3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7132 : BadRow (Grammar43.fiveRow 7 7 3 false 3 2 4 [0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7133 : BadRow (Grammar43.fiveRow 7 7 3 true 3 2 4 [0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7134 : BadRow (Grammar43.fiveRow 7 7 3 false 3 2 4 [0,0,1,2]) :=
  row_of_forall (discharge bank [4,4,4,6,49,4,4,4,6,49,4,4,4,6,49,4,4,4,7,49,3,3,8,3,3,3,3,3,3,3,3,3,3,6,3,8,3,4,3,49] (hard := []) (by decide +kernel) .nil)

theorem g7135 : BadRow (Grammar43.fiveRow 7 7 3 true 3 2 4 [0,0,1,2]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,3,26,1,1,1] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
