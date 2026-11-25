import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g6176 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [1,0,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6177 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [1,0,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6178 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [1,0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6179 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [1,0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6180 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [1,0,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6181 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [1,0,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6182 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [1,0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6183 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [1,0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6184 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [1,0,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6185 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [1,0,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6186 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [1,0,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6187 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [1,0,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6188 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [1,0,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6189 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [1,0,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6190 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [1,1,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6191 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [1,1,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
