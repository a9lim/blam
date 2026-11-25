import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f4020 : BadRow (Grammar43.fourRow ⟨5,2,0,2,4,3⟩ [0,0] [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f4021 : BadRow (Grammar43.fourRow ⟨5,2,0,2,4,3⟩ [0,0] [0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f4022 : BadRow (Grammar43.fourRow ⟨5,2,0,2,4,3⟩ [0,0] [0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f4023 : BadRow (Grammar43.fourRow ⟨5,2,0,2,4,3⟩ [0,0] [0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f4024 : BadRow (Grammar43.fourRow ⟨5,2,0,2,4,3⟩ [0,0] [1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f4025 : BadRow (Grammar43.fourRow ⟨5,2,0,2,4,3⟩ [0,0] [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f4026 : BadRow (Grammar43.fourRow ⟨5,2,0,2,4,3⟩ [0,0] [1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f4027 : BadRow (Grammar43.fourRow ⟨5,2,0,2,4,3⟩ [0,0] [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f4028 : BadRow (Grammar43.fourRow ⟨5,2,0,2,4,3⟩ [0,0] [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f4029 : BadRow (Grammar43.fourRow ⟨5,2,0,2,4,3⟩ [0,0] [1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f4030 : BadRow (Grammar43.fourRow ⟨5,2,0,2,4,3⟩ [0,0] [2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f4031 : BadRow (Grammar43.fourRow ⟨5,2,0,2,4,3⟩ [0,0] [2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
