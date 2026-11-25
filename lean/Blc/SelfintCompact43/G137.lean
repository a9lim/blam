import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2192 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [5,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2193 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [5,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2194 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [6,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2195 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [6,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2196 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 3 [0,0,6]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2197 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 3 [0,0,6]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2198 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 3 [0,1,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2199 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 3 [0,1,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2200 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 3 [0,2,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2201 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 3 [0,2,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2202 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 3 [0,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2203 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 3 [0,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2204 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 3 [0,4,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2205 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 3 [0,4,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2206 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 3 [0,5,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2207 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 3 [0,5,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
