import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3840 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 3 [1,6,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3841 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 3 [1,6,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3842 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 3 [2,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3843 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 3 [2,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3844 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 3 [2,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3845 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 3 [2,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3846 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 3 [2,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3847 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 3 [2,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3848 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 3 [2,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3849 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 3 [2,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3850 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 3 [2,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3851 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 3 [2,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3852 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 3 [2,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3853 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 3 [2,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3854 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 3 [3,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3855 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 3 [3,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
