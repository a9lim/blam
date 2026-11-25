import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3120 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [4,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3121 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [4,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3122 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [4,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3123 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [4,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3124 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [4,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3125 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [4,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3126 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [4,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3127 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [4,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3128 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [4,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3129 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [4,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3130 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [4,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3131 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [4,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3132 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [5,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3133 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [5,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3134 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [5,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3135 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [5,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
