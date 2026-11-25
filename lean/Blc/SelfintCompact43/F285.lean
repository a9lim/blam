import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3420 : BadRow (Grammar43.fourRow ⟨2,2,2,4,4,3⟩ [1,1] [0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3421 : BadRow (Grammar43.fourRow ⟨2,2,2,4,4,3⟩ [1,1] [1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3422 : BadRow (Grammar43.fourRow ⟨2,2,2,4,4,3⟩ [1,1] [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3423 : BadRow (Grammar43.fourRow ⟨2,2,2,4,4,3⟩ [1,1] [1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3424 : BadRow (Grammar43.fourRow ⟨2,2,2,4,4,3⟩ [1,1] [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3425 : BadRow (Grammar43.fourRow ⟨2,2,2,4,4,3⟩ [1,1] [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3426 : BadRow (Grammar43.fourRow ⟨2,2,2,4,4,3⟩ [1,1] [1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3427 : BadRow (Grammar43.fourRow ⟨2,2,2,4,4,3⟩ [1,1] [2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3428 : BadRow (Grammar43.fourRow ⟨2,2,2,4,4,3⟩ [1,1] [2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3429 : BadRow (Grammar43.fourRow ⟨2,2,2,4,4,3⟩ [1,1] [2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3430 : BadRow (Grammar43.fourRow ⟨2,2,2,4,4,3⟩ [1,1] [3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3431 : BadRow (Grammar43.fourRow ⟨2,2,2,4,4,3⟩ [2,0] [0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
