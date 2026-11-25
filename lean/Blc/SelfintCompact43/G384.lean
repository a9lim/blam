import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g6144 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [0,3,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6145 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [0,3,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6146 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [0,3,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6147 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [0,3,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6148 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [0,3,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6149 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [0,3,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6150 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [0,3,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6151 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [0,3,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6152 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [0,4,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6153 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [0,4,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6154 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [0,4,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6155 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [0,4,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6156 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [0,4,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6157 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [0,4,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6158 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [0,5,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6159 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [0,5,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
