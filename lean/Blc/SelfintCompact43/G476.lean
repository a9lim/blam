import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g7616 : BadRow (Grammar43.fiveRow 7 7 3 false 3 5 5 [1,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7617 : BadRow (Grammar43.fiveRow 7 7 3 true 3 5 5 [1,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7618 : BadRow (Grammar43.fiveRow 7 7 3 false 3 5 5 [1,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7619 : BadRow (Grammar43.fiveRow 7 7 3 true 3 5 5 [1,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7620 : BadRow (Grammar43.fiveRow 7 7 3 false 3 5 5 [1,2,0,0,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,4,4,4,20,4,4,4,4,53,4,4,4,1,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g7621 : BadRow (Grammar43.fiveRow 7 7 3 true 3 5 5 [1,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7622 : BadRow (Grammar43.fiveRow 7 7 3 false 3 5 5 [2,0,0,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,1,4,4,4,4,4,4,126,4,4,4,1,4,4,4,22,4,4,4,4,126,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g7623 : BadRow (Grammar43.fiveRow 7 7 3 true 3 5 5 [2,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7624 : BadRow (Grammar43.fiveRow 7 7 3 false 3 5 5 [2,0,0,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,4,4,4,126,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g7625 : BadRow (Grammar43.fiveRow 7 7 3 true 3 5 5 [2,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7626 : BadRow (Grammar43.fiveRow 7 7 3 false 3 5 5 [2,0,1,0,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,4,4,4,1,4,4,4,4,4,1,4,4,4,4,4,22,4,18,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g7627 : BadRow (Grammar43.fiveRow 7 7 3 true 3 5 5 [2,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7628 : BadRow (Grammar43.fiveRow 7 7 3 false 3 5 5 [2,1,0,0,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,4,4,4,1,4,4,4,4,1,4,4,4,22,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g7629 : BadRow (Grammar43.fiveRow 7 7 3 true 3 5 5 [2,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7630 : BadRow (Grammar43.fiveRow 7 7 3 false 3 5 5 [3,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7631 : BadRow (Grammar43.fiveRow 7 7 3 true 3 5 5 [3,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
