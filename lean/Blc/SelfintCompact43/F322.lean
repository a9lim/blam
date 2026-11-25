import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3864 : BadRow (Grammar43.fourRow ⟨3,2,2,3,4,3⟩ [2,0] [0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3865 : BadRow (Grammar43.fourRow ⟨3,2,2,3,4,3⟩ [2,0] [1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3866 : BadRow (Grammar43.fourRow ⟨3,2,2,3,4,3⟩ [2,0] [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3867 : BadRow (Grammar43.fourRow ⟨3,2,2,3,4,3⟩ [2,0] [1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3868 : BadRow (Grammar43.fourRow ⟨3,2,2,3,4,3⟩ [2,0] [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3869 : BadRow (Grammar43.fourRow ⟨3,2,2,3,4,3⟩ [2,0] [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3870 : BadRow (Grammar43.fourRow ⟨3,2,2,3,4,3⟩ [2,0] [1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3871 : BadRow (Grammar43.fourRow ⟨3,2,2,3,4,3⟩ [2,0] [2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3872 : BadRow (Grammar43.fourRow ⟨3,2,2,3,4,3⟩ [2,0] [2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3873 : BadRow (Grammar43.fourRow ⟨3,2,2,3,4,3⟩ [2,0] [2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3874 : BadRow (Grammar43.fourRow ⟨3,2,2,3,4,3⟩ [2,0] [3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3875 : BadRow (Grammar43.fourRow ⟨3,2,0,4,4,3⟩ [0,0] [0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
