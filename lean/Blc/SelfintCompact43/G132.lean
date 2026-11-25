import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2112 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [2,2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2113 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [2,2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2114 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [2,2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2115 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [2,2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2116 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [2,2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2117 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [2,2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2118 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [2,3,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2119 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [2,3,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2120 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [2,3,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2121 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [2,3,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2122 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [2,3,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2123 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [2,3,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2124 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [2,4,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2125 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [2,4,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2126 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [3,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2127 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [3,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
