import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3216 : BadRow (Grammar43.fourRow ⟨2,2,0,3,5,3⟩ [0,0] [0,0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3217 : BadRow (Grammar43.fourRow ⟨2,2,0,3,5,3⟩ [0,0] [0,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3218 : BadRow (Grammar43.fourRow ⟨2,2,0,3,5,3⟩ [0,0] [0,0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3219 : BadRow (Grammar43.fourRow ⟨2,2,0,3,5,3⟩ [0,0] [0,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3220 : BadRow (Grammar43.fourRow ⟨2,2,0,3,5,3⟩ [0,0] [0,0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3221 : BadRow (Grammar43.fourRow ⟨2,2,0,3,5,3⟩ [0,0] [0,0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3222 : BadRow (Grammar43.fourRow ⟨2,2,0,3,5,3⟩ [0,0] [0,0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3223 : BadRow (Grammar43.fourRow ⟨2,2,0,3,5,3⟩ [0,0] [0,0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3224 : BadRow (Grammar43.fourRow ⟨2,2,0,3,5,3⟩ [0,0] [0,1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3225 : BadRow (Grammar43.fourRow ⟨2,2,0,3,5,3⟩ [0,0] [0,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3226 : BadRow (Grammar43.fourRow ⟨2,2,0,3,5,3⟩ [0,0] [0,1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3227 : BadRow (Grammar43.fourRow ⟨2,2,0,3,5,3⟩ [0,0] [0,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
