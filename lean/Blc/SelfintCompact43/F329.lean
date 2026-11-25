import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3948 : BadRow (Grammar43.fourRow ⟨4,2,1,2,4,4⟩ [1,0] [2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3949 : BadRow (Grammar43.fourRow ⟨4,2,2,2,4,3⟩ [0,2] [0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3950 : BadRow (Grammar43.fourRow ⟨4,2,2,2,4,3⟩ [0,2] [0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3951 : BadRow (Grammar43.fourRow ⟨4,2,2,2,4,3⟩ [0,2] [0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3952 : BadRow (Grammar43.fourRow ⟨4,2,2,2,4,3⟩ [0,2] [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3953 : BadRow (Grammar43.fourRow ⟨4,2,2,2,4,3⟩ [0,2] [0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3954 : BadRow (Grammar43.fourRow ⟨4,2,2,2,4,3⟩ [0,2] [0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3955 : BadRow (Grammar43.fourRow ⟨4,2,2,2,4,3⟩ [0,2] [0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3956 : BadRow (Grammar43.fourRow ⟨4,2,2,2,4,3⟩ [0,2] [1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3957 : BadRow (Grammar43.fourRow ⟨4,2,2,2,4,3⟩ [0,2] [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3958 : BadRow (Grammar43.fourRow ⟨4,2,2,2,4,3⟩ [0,2] [1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3959 : BadRow (Grammar43.fourRow ⟨4,2,2,2,4,3⟩ [0,2] [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
