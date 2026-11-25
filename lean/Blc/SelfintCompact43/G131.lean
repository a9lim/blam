import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2096 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [2,1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2097 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [2,1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2098 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [2,1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2099 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [2,1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2100 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [2,1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2101 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [2,1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2102 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [2,1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2103 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [2,1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2104 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [2,1,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2105 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [2,1,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2106 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [2,2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2107 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [2,2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2108 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [2,2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2109 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [2,2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2110 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [2,2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2111 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [2,2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
