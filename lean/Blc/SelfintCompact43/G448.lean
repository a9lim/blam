import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g7168 : BadRow (Grammar43.fiveRow 7 7 3 false 3 2 4 [2,1,0,0]) :=
  row_of_forall (discharge bank [4,4,4,6,49,4,4,4,6,49,4,4,4,6,49] (hard := []) (by decide +kernel) .nil)

theorem g7169 : BadRow (Grammar43.fiveRow 7 7 3 true 3 2 4 [2,1,0,0]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g7170 : BadRow (Grammar43.fiveRow 7 7 3 false 3 2 4 [3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7171 : BadRow (Grammar43.fiveRow 7 7 3 true 3 2 4 [3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7172 : BadRow (Grammar43.fiveRow 7 7 3 false 3 2 5 [0,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7173 : BadRow (Grammar43.fiveRow 7 7 3 true 3 2 5 [0,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7174 : BadRow (Grammar43.fiveRow 7 7 3 false 3 2 5 [0,0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7175 : BadRow (Grammar43.fiveRow 7 7 3 true 3 2 5 [0,0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7176 : BadRow (Grammar43.fiveRow 7 7 3 false 3 2 5 [0,0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7177 : BadRow (Grammar43.fiveRow 7 7 3 true 3 2 5 [0,0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7178 : BadRow (Grammar43.fiveRow 7 7 3 false 3 2 5 [0,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7179 : BadRow (Grammar43.fiveRow 7 7 3 true 3 2 5 [0,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7180 : BadRow (Grammar43.fiveRow 7 7 3 false 3 2 5 [0,0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7181 : BadRow (Grammar43.fiveRow 7 7 3 true 3 2 5 [0,0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7182 : BadRow (Grammar43.fiveRow 7 7 3 false 3 2 5 [0,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7183 : BadRow (Grammar43.fiveRow 7 7 3 true 3 2 5 [0,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
