import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g176 : BadRow (Grammar43.fiveRow 7 5 7 false 3 3 4 [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g177 : BadRow (Grammar43.fiveRow 7 5 7 true 3 3 4 [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g178 : BadRow (Grammar43.fiveRow 7 5 7 false 3 3 4 [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g179 : BadRow (Grammar43.fiveRow 7 5 7 true 3 3 4 [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g180 : BadRow (Grammar43.fiveRow 7 5 7 false 3 3 4 [1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g181 : BadRow (Grammar43.fiveRow 7 5 7 true 3 3 4 [1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g182 : BadRow (Grammar43.fiveRow 7 5 7 false 3 3 4 [2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g183 : BadRow (Grammar43.fiveRow 7 5 7 true 3 3 4 [2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g184 : BadRow (Grammar43.fiveRow 7 5 7 false 3 3 4 [2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g185 : BadRow (Grammar43.fiveRow 7 5 7 true 3 3 4 [2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g186 : BadRow (Grammar43.fiveRow 7 5 7 false 3 3 4 [2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g187 : BadRow (Grammar43.fiveRow 7 5 7 true 3 3 4 [2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g188 : BadRow (Grammar43.fiveRow 7 5 7 false 3 3 4 [3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g189 : BadRow (Grammar43.fiveRow 7 5 7 true 3 3 4 [3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g190 : BadRow (Grammar43.fiveRow 7 5 7 false 3 3 5 [0,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g191 : BadRow (Grammar43.fiveRow 7 5 7 true 3 3 5 [0,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
