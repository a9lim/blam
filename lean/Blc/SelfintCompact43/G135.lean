import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2160 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [3,2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2161 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [3,2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2162 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [3,2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2163 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [3,2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2164 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [3,3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2165 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [3,3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2166 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [4,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2167 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [4,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2168 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [4,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2169 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [4,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2170 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [4,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2171 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [4,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2172 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [4,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2173 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [4,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2174 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [4,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2175 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [4,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
