import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g208 : BadRow (Grammar43.fiveRow 7 5 7 false 3 3 5 [0,0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g209 : BadRow (Grammar43.fiveRow 7 5 7 true 3 3 5 [0,0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g210 : BadRow (Grammar43.fiveRow 7 5 7 false 3 3 5 [0,1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g211 : BadRow (Grammar43.fiveRow 7 5 7 true 3 3 5 [0,1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g212 : BadRow (Grammar43.fiveRow 7 5 7 false 3 3 5 [0,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g213 : BadRow (Grammar43.fiveRow 7 5 7 true 3 3 5 [0,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g214 : BadRow (Grammar43.fiveRow 7 5 7 false 3 3 5 [0,1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g215 : BadRow (Grammar43.fiveRow 7 5 7 true 3 3 5 [0,1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g216 : BadRow (Grammar43.fiveRow 7 5 7 false 3 3 5 [0,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g217 : BadRow (Grammar43.fiveRow 7 5 7 true 3 3 5 [0,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g218 : BadRow (Grammar43.fiveRow 7 5 7 false 3 3 5 [0,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g219 : BadRow (Grammar43.fiveRow 7 5 7 true 3 3 5 [0,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g220 : BadRow (Grammar43.fiveRow 7 5 7 false 3 3 5 [0,1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g221 : BadRow (Grammar43.fiveRow 7 5 7 true 3 3 5 [0,1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g222 : BadRow (Grammar43.fiveRow 7 5 7 false 3 3 5 [0,2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g223 : BadRow (Grammar43.fiveRow 7 5 7 true 3 3 5 [0,2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
