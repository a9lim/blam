import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g5840 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 5 [1,0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5841 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 5 [1,0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5842 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 5 [1,0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5843 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 5 [1,0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5844 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 5 [1,1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5845 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 5 [1,1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5846 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 5 [1,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5847 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 5 [1,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5848 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 5 [1,1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5849 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 5 [1,1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5850 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 5 [1,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5851 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 5 [1,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5852 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 5 [1,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5853 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 5 [1,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5854 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 5 [1,1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5855 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 5 [1,1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
