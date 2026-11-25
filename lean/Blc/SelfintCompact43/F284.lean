import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3408 : BadRow (Grammar43.fourRow ⟨2,2,2,4,4,3⟩ [0,2] [2,0,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f3409 : BadRow (Grammar43.fourRow ⟨2,2,2,4,4,3⟩ [0,2] [2,1,0,0]) :=
  row_of_forall (discharge bank [2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f3410 : BadRow (Grammar43.fourRow ⟨2,2,2,4,4,3⟩ [0,2] [3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3411 : BadRow (Grammar43.fourRow ⟨2,2,2,4,4,3⟩ [1,1] [0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3412 : BadRow (Grammar43.fourRow ⟨2,2,2,4,4,3⟩ [1,1] [0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3413 : BadRow (Grammar43.fourRow ⟨2,2,2,4,4,3⟩ [1,1] [0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3414 : BadRow (Grammar43.fourRow ⟨2,2,2,4,4,3⟩ [1,1] [0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3415 : BadRow (Grammar43.fourRow ⟨2,2,2,4,4,3⟩ [1,1] [0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3416 : BadRow (Grammar43.fourRow ⟨2,2,2,4,4,3⟩ [1,1] [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3417 : BadRow (Grammar43.fourRow ⟨2,2,2,4,4,3⟩ [1,1] [0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3418 : BadRow (Grammar43.fourRow ⟨2,2,2,4,4,3⟩ [1,1] [0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3419 : BadRow (Grammar43.fourRow ⟨2,2,2,4,4,3⟩ [1,1] [0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
