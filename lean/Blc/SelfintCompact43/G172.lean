import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2752 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [2,2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2753 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [2,2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2754 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [2,2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2755 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [2,2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2756 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [2,2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2757 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [2,2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2758 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [2,2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2759 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [2,2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2760 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [2,2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2761 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [2,2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2762 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [2,3,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2763 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [2,3,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2764 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [2,3,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2765 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [2,3,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2766 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [2,3,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2767 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [2,3,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
