import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3152 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,0,0,0,7]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3153 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,0,0,0,7]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3154 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,0,0,1,6]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3155 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,0,0,1,6]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3156 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,0,0,2,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3157 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,0,0,2,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3158 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,0,0,3,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3159 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,0,0,3,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3160 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,0,0,4,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3161 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,0,0,4,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3162 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,0,0,5,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3163 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,0,0,5,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3164 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,0,0,6,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3165 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,0,0,6,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3166 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,0,0,7,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3167 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,0,0,7,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
