import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3324 : BadRow (Grammar43.fourRow ⟨2,2,1,4,4,4⟩ [0,1] [0,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3325 : BadRow (Grammar43.fourRow ⟨2,2,1,4,4,4⟩ [0,1] [0,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3326 : BadRow (Grammar43.fourRow ⟨2,2,1,4,4,4⟩ [0,1] [0,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3327 : BadRow (Grammar43.fourRow ⟨2,2,1,4,4,4⟩ [0,1] [0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3328 : BadRow (Grammar43.fourRow ⟨2,2,1,4,4,4⟩ [0,1] [0,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3329 : BadRow (Grammar43.fourRow ⟨2,2,1,4,4,4⟩ [0,1] [0,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3330 : BadRow (Grammar43.fourRow ⟨2,2,1,4,4,4⟩ [0,1] [0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3331 : BadRow (Grammar43.fourRow ⟨2,2,1,4,4,4⟩ [0,1] [0,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3332 : BadRow (Grammar43.fourRow ⟨2,2,1,4,4,4⟩ [0,1] [0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3333 : BadRow (Grammar43.fourRow ⟨2,2,1,4,4,4⟩ [0,1] [0,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3334 : BadRow (Grammar43.fourRow ⟨2,2,1,4,4,4⟩ [0,1] [0,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3335 : BadRow (Grammar43.fourRow ⟨2,2,1,4,4,4⟩ [0,1] [0,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
