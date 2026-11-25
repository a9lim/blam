import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2176 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [4,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2177 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [4,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2178 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [4,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2179 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [4,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2180 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [4,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2181 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [4,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2182 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [4,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2183 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [4,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2184 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [4,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2185 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [4,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2186 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [5,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2187 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [5,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2188 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [5,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2189 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [5,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2190 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [5,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2191 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [5,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
