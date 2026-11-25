import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g5152 : BadRow (Grammar43.fiveRow 7 6 5 false 3 4 5 [1,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5153 : BadRow (Grammar43.fiveRow 7 6 5 true 3 4 5 [1,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5154 : BadRow (Grammar43.fiveRow 7 6 5 false 3 4 5 [1,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5155 : BadRow (Grammar43.fiveRow 7 6 5 true 3 4 5 [1,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5156 : BadRow (Grammar43.fiveRow 7 6 5 false 3 4 5 [1,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5157 : BadRow (Grammar43.fiveRow 7 6 5 true 3 4 5 [1,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5158 : BadRow (Grammar43.fiveRow 7 6 5 false 3 4 5 [1,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5159 : BadRow (Grammar43.fiveRow 7 6 5 true 3 4 5 [1,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5160 : BadRow (Grammar43.fiveRow 7 6 5 false 3 4 5 [1,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5161 : BadRow (Grammar43.fiveRow 7 6 5 true 3 4 5 [1,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5162 : BadRow (Grammar43.fiveRow 7 6 5 false 3 4 5 [1,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5163 : BadRow (Grammar43.fiveRow 7 6 5 true 3 4 5 [1,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5164 : BadRow (Grammar43.fiveRow 7 6 5 false 3 4 5 [2,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5165 : BadRow (Grammar43.fiveRow 7 6 5 true 3 4 5 [2,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5166 : BadRow (Grammar43.fiveRow 7 6 5 false 3 4 5 [2,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5167 : BadRow (Grammar43.fiveRow 7 6 5 true 3 4 5 [2,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
