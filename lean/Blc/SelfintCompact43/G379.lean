import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g6064 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [0,0,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6065 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [0,0,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6066 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [0,0,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6067 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [0,0,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6068 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [0,0,1,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6069 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [0,0,1,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6070 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [0,0,2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6071 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [0,0,2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6072 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [0,0,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6073 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [0,0,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6074 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [0,0,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6075 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [0,0,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6076 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [0,0,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6077 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [0,0,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6078 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [0,0,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6079 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [0,0,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
