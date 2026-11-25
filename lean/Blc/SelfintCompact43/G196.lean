import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3136 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [5,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3137 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [5,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3138 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [5,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3139 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [5,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3140 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [5,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3141 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [5,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3142 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [5,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3143 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [5,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3144 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [6,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3145 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [6,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3146 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [6,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3147 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [6,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3148 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [6,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3149 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [6,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3150 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [7,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3151 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [7,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
