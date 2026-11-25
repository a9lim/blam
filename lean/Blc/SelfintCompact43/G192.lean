import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3072 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [2,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3073 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [2,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3074 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [2,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3075 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [2,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3076 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [2,4,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3077 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [2,4,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3078 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [2,4,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3079 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [2,4,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3080 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [2,5,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3081 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [2,5,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3082 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [3,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3083 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [3,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3084 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [3,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3085 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [3,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3086 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [3,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3087 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [3,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
