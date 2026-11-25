import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g7104 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [4,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7105 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [4,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7106 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [4,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7107 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [4,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7108 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [4,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7109 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [4,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7110 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [5,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7111 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [5,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7112 : BadRow (Grammar43.fiveRow 7 7 3 false 3 2 3 [0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7113 : BadRow (Grammar43.fiveRow 7 7 3 true 3 2 3 [0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7114 : BadRow (Grammar43.fiveRow 7 7 3 false 3 2 3 [0,1,2]) :=
  row_of_forall (discharge bank [49,2] (hard := []) (by decide +kernel) .nil)

theorem g7115 : BadRow (Grammar43.fiveRow 7 7 3 true 3 2 3 [0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7116 : BadRow (Grammar43.fiveRow 7 7 3 false 3 2 3 [0,2,1]) :=
  row_of_forall (discharge bank [49,2] (hard := []) (by decide +kernel) .nil)

theorem g7117 : BadRow (Grammar43.fiveRow 7 7 3 true 3 2 3 [0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7118 : BadRow (Grammar43.fiveRow 7 7 3 false 3 2 3 [0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7119 : BadRow (Grammar43.fiveRow 7 7 3 true 3 2 3 [0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
