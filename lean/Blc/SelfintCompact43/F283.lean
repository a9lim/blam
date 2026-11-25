import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3396 : BadRow (Grammar43.fourRow ⟨2,2,2,4,4,3⟩ [0,2] [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3397 : BadRow (Grammar43.fourRow ⟨2,2,2,4,4,3⟩ [0,2] [0,1,2,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f3398 : BadRow (Grammar43.fourRow ⟨2,2,2,4,4,3⟩ [0,2] [0,2,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f3399 : BadRow (Grammar43.fourRow ⟨2,2,2,4,4,3⟩ [0,2] [0,2,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f3400 : BadRow (Grammar43.fourRow ⟨2,2,2,4,4,3⟩ [0,2] [0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3401 : BadRow (Grammar43.fourRow ⟨2,2,2,4,4,3⟩ [0,2] [1,0,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f3402 : BadRow (Grammar43.fourRow ⟨2,2,2,4,4,3⟩ [0,2] [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3403 : BadRow (Grammar43.fourRow ⟨2,2,2,4,4,3⟩ [0,2] [1,0,2,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f3404 : BadRow (Grammar43.fourRow ⟨2,2,2,4,4,3⟩ [0,2] [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3405 : BadRow (Grammar43.fourRow ⟨2,2,2,4,4,3⟩ [0,2] [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3406 : BadRow (Grammar43.fourRow ⟨2,2,2,4,4,3⟩ [0,2] [1,2,0,0]) :=
  row_of_forall (discharge bank [2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f3407 : BadRow (Grammar43.fourRow ⟨2,2,2,4,4,3⟩ [0,2] [2,0,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
