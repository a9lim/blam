import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2064 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [2,0,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2065 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [2,0,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2066 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [2,0,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2067 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [2,0,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2068 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [2,0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2069 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [2,0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2070 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [2,0,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2071 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [2,0,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2072 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [2,0,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2073 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [2,0,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2074 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [2,0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2075 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [2,0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2076 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [2,0,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2077 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [2,0,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2078 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [2,0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2079 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [2,0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
