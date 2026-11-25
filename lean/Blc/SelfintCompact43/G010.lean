import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g160 : BadRow (Grammar43.fiveRow 7 5 7 false 3 3 4 [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g161 : BadRow (Grammar43.fiveRow 7 5 7 true 3 3 4 [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g162 : BadRow (Grammar43.fiveRow 7 5 7 false 3 3 4 [0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g163 : BadRow (Grammar43.fiveRow 7 5 7 true 3 3 4 [0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g164 : BadRow (Grammar43.fiveRow 7 5 7 false 3 3 4 [0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g165 : BadRow (Grammar43.fiveRow 7 5 7 true 3 3 4 [0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g166 : BadRow (Grammar43.fiveRow 7 5 7 false 3 3 4 [0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g167 : BadRow (Grammar43.fiveRow 7 5 7 true 3 3 4 [0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g168 : BadRow (Grammar43.fiveRow 7 5 7 false 3 3 4 [0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g169 : BadRow (Grammar43.fiveRow 7 5 7 true 3 3 4 [0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g170 : BadRow (Grammar43.fiveRow 7 5 7 false 3 3 4 [1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g171 : BadRow (Grammar43.fiveRow 7 5 7 true 3 3 4 [1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g172 : BadRow (Grammar43.fiveRow 7 5 7 false 3 3 4 [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g173 : BadRow (Grammar43.fiveRow 7 5 7 true 3 3 4 [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g174 : BadRow (Grammar43.fiveRow 7 5 7 false 3 3 4 [1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g175 : BadRow (Grammar43.fiveRow 7 5 7 true 3 3 4 [1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
