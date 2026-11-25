import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3168 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,0,1,0,6]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3169 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,0,1,0,6]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3170 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,0,1,1,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3171 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,0,1,1,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3172 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,0,1,2,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3173 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,0,1,2,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3174 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,0,1,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3175 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,0,1,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3176 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,0,1,4,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3177 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,0,1,4,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3178 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,0,1,5,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3179 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,0,1,5,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3180 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,0,1,6,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3181 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,0,1,6,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3182 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,0,2,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3183 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,0,2,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
