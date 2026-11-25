import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3856 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 3 [3,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3857 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 3 [3,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3858 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 3 [3,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3859 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 3 [3,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3860 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 3 [3,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3861 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 3 [3,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3862 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 3 [3,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3863 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 3 [3,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3864 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 3 [4,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3865 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 3 [4,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3866 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 3 [4,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3867 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 3 [4,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3868 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 3 [4,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3869 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 3 [4,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3870 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 3 [4,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3871 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 3 [4,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
