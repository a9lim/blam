import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g7760 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 5 [3,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7761 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 5 [3,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7762 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 6 [0,0,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7763 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 6 [0,0,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7764 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 6 [0,0,0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7765 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 6 [0,0,0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7766 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 6 [0,0,0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7767 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 6 [0,0,0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7768 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 6 [0,0,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7769 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 6 [0,0,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7770 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 6 [0,0,0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7771 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 6 [0,0,0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7772 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 6 [0,0,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7773 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 6 [0,0,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7774 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 6 [0,0,0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7775 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 6 [0,0,0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
