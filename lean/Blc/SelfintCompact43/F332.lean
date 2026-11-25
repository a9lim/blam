import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3984 : BadRow (Grammar43.fourRow ⟨4,2,2,2,4,3⟩ [2,0] [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3985 : BadRow (Grammar43.fourRow ⟨4,2,2,2,4,3⟩ [2,0] [0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3986 : BadRow (Grammar43.fourRow ⟨4,2,2,2,4,3⟩ [2,0] [0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3987 : BadRow (Grammar43.fourRow ⟨4,2,2,2,4,3⟩ [2,0] [0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3988 : BadRow (Grammar43.fourRow ⟨4,2,2,2,4,3⟩ [2,0] [1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3989 : BadRow (Grammar43.fourRow ⟨4,2,2,2,4,3⟩ [2,0] [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3990 : BadRow (Grammar43.fourRow ⟨4,2,2,2,4,3⟩ [2,0] [1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3991 : BadRow (Grammar43.fourRow ⟨4,2,2,2,4,3⟩ [2,0] [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3992 : BadRow (Grammar43.fourRow ⟨4,2,2,2,4,3⟩ [2,0] [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3993 : BadRow (Grammar43.fourRow ⟨4,2,2,2,4,3⟩ [2,0] [1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3994 : BadRow (Grammar43.fourRow ⟨4,2,2,2,4,3⟩ [2,0] [2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3995 : BadRow (Grammar43.fourRow ⟨4,2,2,2,4,3⟩ [2,0] [2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
