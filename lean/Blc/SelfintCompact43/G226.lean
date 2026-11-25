import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3616 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [2,1,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3617 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [2,1,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3618 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [2,1,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3619 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [2,1,1,3,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g3620 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [2,1,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3621 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [2,1,2,0,2]) :=
  row_of_forall (discharge bank [1,39,1,39,1] (hard := []) (by decide +kernel) .nil)

theorem g3622 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [2,1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3623 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [2,1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3624 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [2,1,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3625 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [2,1,2,2,0]) :=
  row_of_forall (discharge bank [25,1,39] (hard := []) (by decide +kernel) .nil)

theorem g3626 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [2,1,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3627 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [2,1,3,0,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g3628 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [2,1,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3629 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [2,1,3,1,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g3630 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [2,1,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3631 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [2,1,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
