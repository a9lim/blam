import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2144 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [3,0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2145 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [3,0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2146 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [3,1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2147 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [3,1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2148 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [3,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2149 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [3,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2150 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [3,1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2151 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [3,1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2152 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [3,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2153 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [3,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2154 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [3,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2155 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [3,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2156 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [3,1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2157 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [3,1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2158 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [3,2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2159 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [3,2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
