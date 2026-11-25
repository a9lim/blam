import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3960 : BadRow (Grammar43.fourRow ⟨4,2,2,2,4,3⟩ [0,2] [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3961 : BadRow (Grammar43.fourRow ⟨4,2,2,2,4,3⟩ [0,2] [1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3962 : BadRow (Grammar43.fourRow ⟨4,2,2,2,4,3⟩ [0,2] [2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3963 : BadRow (Grammar43.fourRow ⟨4,2,2,2,4,3⟩ [0,2] [2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3964 : BadRow (Grammar43.fourRow ⟨4,2,2,2,4,3⟩ [0,2] [2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3965 : BadRow (Grammar43.fourRow ⟨4,2,2,2,4,3⟩ [1,1] [0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3966 : BadRow (Grammar43.fourRow ⟨4,2,2,2,4,3⟩ [1,1] [0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3967 : BadRow (Grammar43.fourRow ⟨4,2,2,2,4,3⟩ [1,1] [0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3968 : BadRow (Grammar43.fourRow ⟨4,2,2,2,4,3⟩ [1,1] [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3969 : BadRow (Grammar43.fourRow ⟨4,2,2,2,4,3⟩ [1,1] [0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3970 : BadRow (Grammar43.fourRow ⟨4,2,2,2,4,3⟩ [1,1] [0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3971 : BadRow (Grammar43.fourRow ⟨4,2,2,2,4,3⟩ [1,1] [0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
