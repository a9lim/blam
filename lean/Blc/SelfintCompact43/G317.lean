import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g5072 : BadRow (Grammar43.fiveRow 7 6 5 false 3 4 4 [0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5073 : BadRow (Grammar43.fiveRow 7 6 5 true 3 4 4 [0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5074 : BadRow (Grammar43.fiveRow 7 6 5 false 3 4 4 [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5075 : BadRow (Grammar43.fiveRow 7 6 5 true 3 4 4 [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5076 : BadRow (Grammar43.fiveRow 7 6 5 false 3 4 4 [0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5077 : BadRow (Grammar43.fiveRow 7 6 5 true 3 4 4 [0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5078 : BadRow (Grammar43.fiveRow 7 6 5 false 3 4 4 [0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5079 : BadRow (Grammar43.fiveRow 7 6 5 true 3 4 4 [0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5080 : BadRow (Grammar43.fiveRow 7 6 5 false 3 4 4 [0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5081 : BadRow (Grammar43.fiveRow 7 6 5 true 3 4 4 [0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5082 : BadRow (Grammar43.fiveRow 7 6 5 false 3 4 4 [0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5083 : BadRow (Grammar43.fiveRow 7 6 5 true 3 4 4 [0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5084 : BadRow (Grammar43.fiveRow 7 6 5 false 3 4 4 [1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5085 : BadRow (Grammar43.fiveRow 7 6 5 true 3 4 4 [1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5086 : BadRow (Grammar43.fiveRow 7 6 5 false 3 4 4 [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5087 : BadRow (Grammar43.fiveRow 7 6 5 true 3 4 4 [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
