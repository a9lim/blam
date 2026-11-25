import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g5104 : BadRow (Grammar43.fiveRow 7 6 5 false 3 4 5 [0,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5105 : BadRow (Grammar43.fiveRow 7 6 5 true 3 4 5 [0,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5106 : BadRow (Grammar43.fiveRow 7 6 5 false 3 4 5 [0,0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5107 : BadRow (Grammar43.fiveRow 7 6 5 true 3 4 5 [0,0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5108 : BadRow (Grammar43.fiveRow 7 6 5 false 3 4 5 [0,0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5109 : BadRow (Grammar43.fiveRow 7 6 5 true 3 4 5 [0,0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5110 : BadRow (Grammar43.fiveRow 7 6 5 false 3 4 5 [0,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5111 : BadRow (Grammar43.fiveRow 7 6 5 true 3 4 5 [0,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5112 : BadRow (Grammar43.fiveRow 7 6 5 false 3 4 5 [0,0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5113 : BadRow (Grammar43.fiveRow 7 6 5 true 3 4 5 [0,0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5114 : BadRow (Grammar43.fiveRow 7 6 5 false 3 4 5 [0,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5115 : BadRow (Grammar43.fiveRow 7 6 5 true 3 4 5 [0,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5116 : BadRow (Grammar43.fiveRow 7 6 5 false 3 4 5 [0,0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5117 : BadRow (Grammar43.fiveRow 7 6 5 true 3 4 5 [0,0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5118 : BadRow (Grammar43.fiveRow 7 6 5 false 3 4 5 [0,0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5119 : BadRow (Grammar43.fiveRow 7 6 5 true 3 4 5 [0,0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
