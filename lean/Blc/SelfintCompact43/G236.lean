import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3776 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [4,2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3777 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [4,2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3778 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [4,2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3779 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [4,2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3780 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [4,3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3781 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [4,3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3782 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [5,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3783 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [5,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3784 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [5,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3785 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [5,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3786 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [5,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3787 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [5,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3788 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [5,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3789 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [5,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3790 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [5,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3791 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [5,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
