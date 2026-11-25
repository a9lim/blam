import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g736 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 5 [3,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g737 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 5 [3,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g738 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 5 [4,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g739 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 5 [4,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g740 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 3 [0,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g741 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 3 [0,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g742 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 3 [0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g743 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 3 [0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g744 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 3 [0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g745 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 3 [0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g746 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 3 [0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g747 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 3 [0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g748 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 3 [0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g749 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 3 [0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g750 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 3 [0,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g751 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 3 [0,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
