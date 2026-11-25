import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2240 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 3 [4,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2241 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 3 [4,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2242 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 3 [4,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2243 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 3 [4,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2244 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 3 [4,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2245 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 3 [4,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2246 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 3 [5,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2247 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 3 [5,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2248 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 3 [5,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2249 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 3 [5,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2250 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 3 [6,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2251 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 3 [6,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2252 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [0,0,0,6]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2253 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [0,0,0,6]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2254 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 4 [0,0,1,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2255 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 4 [0,0,1,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
