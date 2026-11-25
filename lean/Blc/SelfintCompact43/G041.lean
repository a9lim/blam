import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g656 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 5 [0,2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g657 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 5 [0,2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g658 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 5 [0,2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g659 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 5 [0,2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g660 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 5 [0,2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g661 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 5 [0,2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g662 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 5 [0,3,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g663 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 5 [0,3,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g664 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 5 [0,3,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g665 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 5 [0,3,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g666 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 5 [0,3,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g667 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 5 [0,3,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g668 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 5 [0,4,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g669 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 5 [0,4,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g670 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 5 [1,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g671 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 5 [1,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
