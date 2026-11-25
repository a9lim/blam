import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3996 : BadRow (Grammar43.fourRow ⟨4,2,2,2,4,3⟩ [2,0] [2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3997 : BadRow (Grammar43.fourRow ⟨4,2,0,3,4,3⟩ [0,0] [0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3998 : BadRow (Grammar43.fourRow ⟨4,2,0,3,4,3⟩ [0,0] [0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3999 : BadRow (Grammar43.fourRow ⟨4,2,0,3,4,3⟩ [0,0] [0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f4000 : BadRow (Grammar43.fourRow ⟨4,2,0,3,4,3⟩ [0,0] [0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f4001 : BadRow (Grammar43.fourRow ⟨4,2,0,3,4,3⟩ [0,0] [0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f4002 : BadRow (Grammar43.fourRow ⟨4,2,0,3,4,3⟩ [0,0] [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f4003 : BadRow (Grammar43.fourRow ⟨4,2,0,3,4,3⟩ [0,0] [0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f4004 : BadRow (Grammar43.fourRow ⟨4,2,0,3,4,3⟩ [0,0] [0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f4005 : BadRow (Grammar43.fourRow ⟨4,2,0,3,4,3⟩ [0,0] [0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f4006 : BadRow (Grammar43.fourRow ⟨4,2,0,3,4,3⟩ [0,0] [0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f4007 : BadRow (Grammar43.fourRow ⟨4,2,0,3,4,3⟩ [0,0] [1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
