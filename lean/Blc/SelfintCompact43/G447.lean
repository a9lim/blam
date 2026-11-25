import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g7152 : BadRow (Grammar43.fiveRow 7 7 3 false 3 2 4 [1,0,0,2]) :=
  row_of_forall (discharge bank [4,4,4,6,49,4,4,4,6,49,4,4,4,6,49,4,4,4,6,49,4,4,4,6,49] (hard := []) (by decide +kernel) .nil)

theorem g7153 : BadRow (Grammar43.fiveRow 7 7 3 true 3 2 4 [1,0,0,2]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g7154 : BadRow (Grammar43.fiveRow 7 7 3 false 3 2 4 [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7155 : BadRow (Grammar43.fiveRow 7 7 3 true 3 2 4 [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7156 : BadRow (Grammar43.fiveRow 7 7 3 false 3 2 4 [1,0,2,0]) :=
  row_of_forall (discharge bank [4,4,4,6,49,4,4,4,6,49,4,4,4,6,49,4,4,4,6,49,4,4,4,6,49] (hard := []) (by decide +kernel) .nil)

theorem g7157 : BadRow (Grammar43.fiveRow 7 7 3 true 3 2 4 [1,0,2,0]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g7158 : BadRow (Grammar43.fiveRow 7 7 3 false 3 2 4 [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7159 : BadRow (Grammar43.fiveRow 7 7 3 true 3 2 4 [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7160 : BadRow (Grammar43.fiveRow 7 7 3 false 3 2 4 [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7161 : BadRow (Grammar43.fiveRow 7 7 3 true 3 2 4 [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7162 : BadRow (Grammar43.fiveRow 7 7 3 false 3 2 4 [1,2,0,0]) :=
  row_of_forall (discharge bank [4,4,4,6,49,4,4,4,6,49,4,4,4,6,49] (hard := []) (by decide +kernel) .nil)

theorem g7163 : BadRow (Grammar43.fiveRow 7 7 3 true 3 2 4 [1,2,0,0]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g7164 : BadRow (Grammar43.fiveRow 7 7 3 false 3 2 4 [2,0,0,1]) :=
  row_of_forall (discharge bank [4,4,4,6,49,4,4,4,6,49,4,4,4,6,49,4,4,4,6,49,4,4,4,6,49] (hard := []) (by decide +kernel) .nil)

theorem g7165 : BadRow (Grammar43.fiveRow 7 7 3 true 3 2 4 [2,0,0,1]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g7166 : BadRow (Grammar43.fiveRow 7 7 3 false 3 2 4 [2,0,1,0]) :=
  row_of_forall (discharge bank [4,4,4,6,49,4,4,4,6,49,4,4,4,6,49,4,4,4,6,49,4,4,4,6,49] (hard := []) (by decide +kernel) .nil)

theorem g7167 : BadRow (Grammar43.fiveRow 7 7 3 true 3 2 4 [2,0,1,0]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
