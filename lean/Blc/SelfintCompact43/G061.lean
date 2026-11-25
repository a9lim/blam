import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g976 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [0,2,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g977 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [0,2,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g978 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [0,2,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g979 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [0,2,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g980 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [0,2,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g981 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [0,2,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g982 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [0,2,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g983 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [0,2,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g984 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [0,2,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g985 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [0,2,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g986 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [0,3,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g987 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [0,3,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g988 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [0,3,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g989 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [0,3,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g990 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [0,3,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g991 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [0,3,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
