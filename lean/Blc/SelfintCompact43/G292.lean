import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g4672 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [3,0,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4673 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [3,0,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4674 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [3,1,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4675 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [3,1,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4676 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [3,1,0,1,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g4677 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [3,1,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4678 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [3,1,0,2,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g4679 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [3,1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4680 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [3,1,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4681 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [3,1,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4682 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [3,1,1,0,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g4683 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [3,1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4684 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [3,1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4685 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [3,1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4686 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [3,1,1,2,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g4687 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [3,1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
