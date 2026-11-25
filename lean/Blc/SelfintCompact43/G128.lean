import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2048 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [1,4,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2049 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [1,4,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2050 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [1,4,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2051 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [1,4,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2052 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [1,4,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2053 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [1,4,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2054 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [1,5,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2055 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [1,5,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2056 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [2,0,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2057 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [2,0,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2058 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [2,0,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2059 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [2,0,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2060 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [2,0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2061 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [2,0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2062 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [2,0,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2063 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [2,0,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
