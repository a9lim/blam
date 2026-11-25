import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3744 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [4,0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3745 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [4,0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3746 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [4,0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3747 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [4,0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3748 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [4,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3749 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [4,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3750 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [4,0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3751 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [4,0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3752 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [4,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3753 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [4,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3754 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [4,0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3755 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [4,0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3756 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [4,0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3757 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [4,0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3758 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [4,0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3759 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [4,0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
