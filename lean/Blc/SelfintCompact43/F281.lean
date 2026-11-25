import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3372 : BadRow (Grammar43.fourRow ⟨2,2,1,4,4,4⟩ [1,0] [1,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3373 : BadRow (Grammar43.fourRow ⟨2,2,1,4,4,4⟩ [1,0] [1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3374 : BadRow (Grammar43.fourRow ⟨2,2,1,4,4,4⟩ [1,0] [1,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3375 : BadRow (Grammar43.fourRow ⟨2,2,1,4,4,4⟩ [1,0] [1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3376 : BadRow (Grammar43.fourRow ⟨2,2,1,4,4,4⟩ [1,0] [1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3377 : BadRow (Grammar43.fourRow ⟨2,2,1,4,4,4⟩ [1,0] [1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3378 : BadRow (Grammar43.fourRow ⟨2,2,1,4,4,4⟩ [1,0] [1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3379 : BadRow (Grammar43.fourRow ⟨2,2,1,4,4,4⟩ [1,0] [1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3380 : BadRow (Grammar43.fourRow ⟨2,2,1,4,4,4⟩ [1,0] [1,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3381 : BadRow (Grammar43.fourRow ⟨2,2,1,4,4,4⟩ [1,0] [2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3382 : BadRow (Grammar43.fourRow ⟨2,2,1,4,4,4⟩ [1,0] [2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3383 : BadRow (Grammar43.fourRow ⟨2,2,1,4,4,4⟩ [1,0] [2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
