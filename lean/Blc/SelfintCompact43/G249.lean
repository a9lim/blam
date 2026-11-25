import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3984 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [1,2,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3985 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [1,2,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3986 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [1,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3987 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [1,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3988 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [1,2,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3989 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [1,2,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3990 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [1,2,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3991 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [1,2,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3992 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [1,3,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3993 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [1,3,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3994 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [1,3,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3995 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [1,3,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3996 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [1,3,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3997 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [1,3,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3998 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [1,3,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3999 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [1,3,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
