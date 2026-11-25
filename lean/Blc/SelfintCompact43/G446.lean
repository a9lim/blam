import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g7136 : BadRow (Grammar43.fiveRow 7 7 3 false 3 2 4 [0,0,2,1]) :=
  row_of_forall (discharge bank [4,4,4,6,49,4,4,4,6,49,4,4,4,6,49,4,4,4,7,49,3,3,9,3,3,3,3,3,3,3,3,3,3,6,3,9,3,4,3,49] (hard := []) (by decide +kernel) .nil)

theorem g7137 : BadRow (Grammar43.fiveRow 7 7 3 true 3 2 4 [0,0,2,1]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,3,26,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g7138 : BadRow (Grammar43.fiveRow 7 7 3 false 3 2 4 [0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7139 : BadRow (Grammar43.fiveRow 7 7 3 true 3 2 4 [0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7140 : BadRow (Grammar43.fiveRow 7 7 3 false 3 2 4 [0,1,0,2]) :=
  row_of_forall (discharge bank [4,4,4,6,49,4,4,4,6,49,4,4,4,6,49,4,4,4,6,49,4,4,4,6,49,4,4,4,7,49,4,4,4,7,49,3,3,11,3,3,3,3,3,3,3,3,3,3,6,3,11,3,4,3,49,3,3,13,3,3,3,3,3,3,3,3,3,3,6,3,13,3,4,3,49] (hard := []) (by decide +kernel) .nil)

theorem g7141 : BadRow (Grammar43.fiveRow 7 7 3 true 3 2 4 [0,1,0,2]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,26,1,1,1,3,26,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g7142 : BadRow (Grammar43.fiveRow 7 7 3 false 3 2 4 [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7143 : BadRow (Grammar43.fiveRow 7 7 3 true 3 2 4 [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7144 : BadRow (Grammar43.fiveRow 7 7 3 false 3 2 4 [0,1,2,0]) :=
  row_of_forall (discharge bank [4,4,4,6,49,4,4,4,6,49,4,4,4,6,49,4,4,4,7,49,3,3,11,3,3,3,3,3,3,3,3,3,3,6,3,11,3,4,3,49] (hard := []) (by decide +kernel) .nil)

theorem g7145 : BadRow (Grammar43.fiveRow 7 7 3 true 3 2 4 [0,1,2,0]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,3,26,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g7146 : BadRow (Grammar43.fiveRow 7 7 3 false 3 2 4 [0,2,0,1]) :=
  row_of_forall (discharge bank [4,4,4,6,49,4,4,4,6,49,4,4,4,6,49,4,4,4,6,49,4,4,4,6,49,4,4,4,7,49,4,4,4,7,49,3,3,11,3,3,3,3,3,3,3,3,3,3,6,3,11,3,4,3,49,3,3,9,3,3,3,3,3,3,3,3,3,3,6,3,9,3,4,3,49] (hard := []) (by decide +kernel) .nil)

theorem g7147 : BadRow (Grammar43.fiveRow 7 7 3 true 3 2 4 [0,2,0,1]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,26,1,1,1,3,26,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g7148 : BadRow (Grammar43.fiveRow 7 7 3 false 3 2 4 [0,2,1,0]) :=
  row_of_forall (discharge bank [4,4,4,6,49,4,4,4,6,49,4,4,4,6,49,4,4,4,7,49,3,3,12,3,3,3,3,3,3,3,3,3,3,6,3,12,3,4,3,49] (hard := []) (by decide +kernel) .nil)

theorem g7149 : BadRow (Grammar43.fiveRow 7 7 3 true 3 2 4 [0,2,1,0]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,3,26,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g7150 : BadRow (Grammar43.fiveRow 7 7 3 false 3 2 4 [0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7151 : BadRow (Grammar43.fiveRow 7 7 3 true 3 2 4 [0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
