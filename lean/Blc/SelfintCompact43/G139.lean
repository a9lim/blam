import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2224 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 3 [2,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2225 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 3 [2,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2226 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 3 [2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2227 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 3 [2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2228 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 3 [2,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2229 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 3 [2,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2230 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 3 [2,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2231 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 3 [2,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2232 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 3 [3,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2233 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 3 [3,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2234 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 3 [3,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2235 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 3 [3,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2236 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 3 [3,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2237 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 3 [3,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2238 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 3 [3,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2239 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 3 [3,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
