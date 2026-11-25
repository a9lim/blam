import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3348 : BadRow (Grammar43.fourRow ⟨2,2,1,4,4,4⟩ [0,1] [2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3349 : BadRow (Grammar43.fourRow ⟨2,2,1,4,4,4⟩ [0,1] [2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3350 : BadRow (Grammar43.fourRow ⟨2,2,1,4,4,4⟩ [0,1] [2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3351 : BadRow (Grammar43.fourRow ⟨2,2,1,4,4,4⟩ [0,1] [2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3352 : BadRow (Grammar43.fourRow ⟨2,2,1,4,4,4⟩ [0,1] [3,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3353 : BadRow (Grammar43.fourRow ⟨2,2,1,4,4,4⟩ [0,1] [3,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3354 : BadRow (Grammar43.fourRow ⟨2,2,1,4,4,4⟩ [0,1] [3,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3355 : BadRow (Grammar43.fourRow ⟨2,2,1,4,4,4⟩ [0,1] [4,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3356 : BadRow (Grammar43.fourRow ⟨2,2,1,4,4,4⟩ [1,0] [0,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3357 : BadRow (Grammar43.fourRow ⟨2,2,1,4,4,4⟩ [1,0] [0,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3358 : BadRow (Grammar43.fourRow ⟨2,2,1,4,4,4⟩ [1,0] [0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3359 : BadRow (Grammar43.fourRow ⟨2,2,1,4,4,4⟩ [1,0] [0,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
