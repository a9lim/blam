import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3288 : BadRow (Grammar43.fourRow ⟨2,2,0,4,4,5⟩ [0,0] [1,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3289 : BadRow (Grammar43.fourRow ⟨2,2,0,4,4,5⟩ [0,0] [1,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3290 : BadRow (Grammar43.fourRow ⟨2,2,0,4,4,5⟩ [0,0] [1,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3291 : BadRow (Grammar43.fourRow ⟨2,2,0,4,4,5⟩ [0,0] [1,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3292 : BadRow (Grammar43.fourRow ⟨2,2,0,4,4,5⟩ [0,0] [1,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3293 : BadRow (Grammar43.fourRow ⟨2,2,0,4,4,5⟩ [0,0] [1,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3294 : BadRow (Grammar43.fourRow ⟨2,2,0,4,4,5⟩ [0,0] [1,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3295 : BadRow (Grammar43.fourRow ⟨2,2,0,4,4,5⟩ [0,0] [1,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3296 : BadRow (Grammar43.fourRow ⟨2,2,0,4,4,5⟩ [0,0] [1,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3297 : BadRow (Grammar43.fourRow ⟨2,2,0,4,4,5⟩ [0,0] [1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3298 : BadRow (Grammar43.fourRow ⟨2,2,0,4,4,5⟩ [0,0] [1,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3299 : BadRow (Grammar43.fourRow ⟨2,2,0,4,4,5⟩ [0,0] [1,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
