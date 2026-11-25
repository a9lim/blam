import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2128 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [3,0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2129 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [3,0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2130 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [3,0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2131 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [3,0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2132 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [3,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2133 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [3,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2134 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [3,0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2135 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [3,0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2136 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [3,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2137 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [3,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2138 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [3,0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2139 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [3,0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2140 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [3,0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2141 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [3,0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2142 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [3,0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2143 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [3,0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
