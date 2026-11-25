import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3276 : BadRow (Grammar43.fourRow ⟨2,2,0,4,4,5⟩ [0,0] [0,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3277 : BadRow (Grammar43.fourRow ⟨2,2,0,4,4,5⟩ [0,0] [0,1,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3278 : BadRow (Grammar43.fourRow ⟨2,2,0,4,4,5⟩ [0,0] [0,2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3279 : BadRow (Grammar43.fourRow ⟨2,2,0,4,4,5⟩ [0,0] [0,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3280 : BadRow (Grammar43.fourRow ⟨2,2,0,4,4,5⟩ [0,0] [0,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3281 : BadRow (Grammar43.fourRow ⟨2,2,0,4,4,5⟩ [0,0] [0,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3282 : BadRow (Grammar43.fourRow ⟨2,2,0,4,4,5⟩ [0,0] [0,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3283 : BadRow (Grammar43.fourRow ⟨2,2,0,4,4,5⟩ [0,0] [0,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3284 : BadRow (Grammar43.fourRow ⟨2,2,0,4,4,5⟩ [0,0] [0,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3285 : BadRow (Grammar43.fourRow ⟨2,2,0,4,4,5⟩ [0,0] [0,4,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3286 : BadRow (Grammar43.fourRow ⟨2,2,0,4,4,5⟩ [0,0] [0,4,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3287 : BadRow (Grammar43.fourRow ⟨2,2,0,4,4,5⟩ [0,0] [1,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
