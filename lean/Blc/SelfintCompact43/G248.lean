import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3968 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [1,0,6,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3969 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [1,0,6,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3970 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [1,1,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3971 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [1,1,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3972 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [1,1,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3973 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [1,1,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3974 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [1,1,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3975 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [1,1,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3976 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [1,1,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3977 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [1,1,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3978 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [1,1,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3979 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [1,1,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3980 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [1,1,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3981 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [1,1,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3982 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [1,2,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3983 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [1,2,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
