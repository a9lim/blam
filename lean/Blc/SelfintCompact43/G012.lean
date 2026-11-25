import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g192 : BadRow (Grammar43.fiveRow 7 5 7 false 3 3 5 [0,0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g193 : BadRow (Grammar43.fiveRow 7 5 7 true 3 3 5 [0,0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g194 : BadRow (Grammar43.fiveRow 7 5 7 false 3 3 5 [0,0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g195 : BadRow (Grammar43.fiveRow 7 5 7 true 3 3 5 [0,0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g196 : BadRow (Grammar43.fiveRow 7 5 7 false 3 3 5 [0,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g197 : BadRow (Grammar43.fiveRow 7 5 7 true 3 3 5 [0,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g198 : BadRow (Grammar43.fiveRow 7 5 7 false 3 3 5 [0,0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g199 : BadRow (Grammar43.fiveRow 7 5 7 true 3 3 5 [0,0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g200 : BadRow (Grammar43.fiveRow 7 5 7 false 3 3 5 [0,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g201 : BadRow (Grammar43.fiveRow 7 5 7 true 3 3 5 [0,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g202 : BadRow (Grammar43.fiveRow 7 5 7 false 3 3 5 [0,0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g203 : BadRow (Grammar43.fiveRow 7 5 7 true 3 3 5 [0,0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g204 : BadRow (Grammar43.fiveRow 7 5 7 false 3 3 5 [0,0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g205 : BadRow (Grammar43.fiveRow 7 5 7 true 3 3 5 [0,0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g206 : BadRow (Grammar43.fiveRow 7 5 7 false 3 3 5 [0,0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g207 : BadRow (Grammar43.fiveRow 7 5 7 true 3 3 5 [0,0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
