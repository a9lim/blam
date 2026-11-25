import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g6160 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [1,0,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6161 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [1,0,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6162 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [1,0,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6163 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [1,0,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6164 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [1,0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6165 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [1,0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6166 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [1,0,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6167 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [1,0,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6168 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [1,0,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6169 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [1,0,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6170 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [1,0,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6171 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [1,0,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6172 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [1,0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6173 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [1,0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6174 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [1,0,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6175 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [1,0,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
