import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2720 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [2,0,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2721 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [2,0,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2722 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [2,0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2723 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [2,0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2724 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [2,0,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2725 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [2,0,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2726 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [2,0,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2727 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [2,0,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2728 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [2,0,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2729 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [2,0,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2730 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [2,1,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2731 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [2,1,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2732 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [2,1,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2733 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [2,1,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2734 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [2,1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2735 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [2,1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
