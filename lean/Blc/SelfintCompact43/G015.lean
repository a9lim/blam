import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g240 : BadRow (Grammar43.fiveRow 7 5 7 false 3 3 5 [1,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g241 : BadRow (Grammar43.fiveRow 7 5 7 true 3 3 5 [1,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g242 : BadRow (Grammar43.fiveRow 7 5 7 false 3 3 5 [1,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g243 : BadRow (Grammar43.fiveRow 7 5 7 true 3 3 5 [1,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g244 : BadRow (Grammar43.fiveRow 7 5 7 false 3 3 5 [1,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g245 : BadRow (Grammar43.fiveRow 7 5 7 true 3 3 5 [1,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g246 : BadRow (Grammar43.fiveRow 7 5 7 false 3 3 5 [1,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g247 : BadRow (Grammar43.fiveRow 7 5 7 true 3 3 5 [1,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g248 : BadRow (Grammar43.fiveRow 7 5 7 false 3 3 5 [1,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g249 : BadRow (Grammar43.fiveRow 7 5 7 true 3 3 5 [1,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g250 : BadRow (Grammar43.fiveRow 7 5 7 false 3 3 5 [2,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g251 : BadRow (Grammar43.fiveRow 7 5 7 true 3 3 5 [2,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g252 : BadRow (Grammar43.fiveRow 7 5 7 false 3 3 5 [2,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g253 : BadRow (Grammar43.fiveRow 7 5 7 true 3 3 5 [2,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g254 : BadRow (Grammar43.fiveRow 7 5 7 false 3 3 5 [2,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g255 : BadRow (Grammar43.fiveRow 7 5 7 true 3 3 5 [2,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
