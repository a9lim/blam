import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2080 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [2,0,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2081 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [2,0,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2082 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [2,0,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2083 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [2,0,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2084 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [2,0,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2085 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [2,0,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2086 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [2,1,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2087 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [2,1,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2088 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [2,1,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2089 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [2,1,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2090 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [2,1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2091 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [2,1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2092 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [2,1,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2093 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [2,1,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2094 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [2,1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2095 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [2,1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
