import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3792 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [5,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3793 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [5,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3794 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [5,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3795 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [5,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3796 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [5,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3797 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [5,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3798 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [5,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3799 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [5,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3800 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [5,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3801 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [5,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3802 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [6,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3803 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [6,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3804 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [6,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3805 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [6,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3806 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [6,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3807 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [6,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
