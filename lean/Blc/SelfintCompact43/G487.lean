import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g7792 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 6 [0,0,1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7793 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 6 [0,0,1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7794 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 6 [0,0,2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7795 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 6 [0,0,2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7796 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 6 [0,0,2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7797 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 6 [0,0,2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7798 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 6 [0,0,2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7799 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 6 [0,0,2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7800 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 6 [0,0,3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7801 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 6 [0,0,3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7802 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 6 [0,1,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7803 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 6 [0,1,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7804 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 6 [0,1,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7805 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 6 [0,1,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7806 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 6 [0,1,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7807 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 6 [0,1,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
