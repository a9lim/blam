import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g112 : BadRow (Grammar43.fiveRow 7 5 7 false 3 2 5 [1,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g113 : BadRow (Grammar43.fiveRow 7 5 7 true 3 2 5 [1,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g114 : BadRow (Grammar43.fiveRow 7 5 7 false 3 2 5 [1,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g115 : BadRow (Grammar43.fiveRow 7 5 7 true 3 2 5 [1,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g116 : BadRow (Grammar43.fiveRow 7 5 7 false 3 2 5 [1,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g117 : BadRow (Grammar43.fiveRow 7 5 7 true 3 2 5 [1,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g118 : BadRow (Grammar43.fiveRow 7 5 7 false 3 2 5 [1,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g119 : BadRow (Grammar43.fiveRow 7 5 7 true 3 2 5 [1,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g120 : BadRow (Grammar43.fiveRow 7 5 7 false 3 2 5 [2,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g121 : BadRow (Grammar43.fiveRow 7 5 7 true 3 2 5 [2,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g122 : BadRow (Grammar43.fiveRow 7 5 7 false 3 2 5 [2,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g123 : BadRow (Grammar43.fiveRow 7 5 7 true 3 2 5 [2,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g124 : BadRow (Grammar43.fiveRow 7 5 7 false 3 2 5 [2,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g125 : BadRow (Grammar43.fiveRow 7 5 7 true 3 2 5 [2,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g126 : BadRow (Grammar43.fiveRow 7 5 7 false 3 2 5 [2,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g127 : BadRow (Grammar43.fiveRow 7 5 7 true 3 2 5 [2,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
