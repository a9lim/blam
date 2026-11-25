import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3336 : BadRow (Grammar43.fourRow ⟨2,2,1,4,4,4⟩ [0,1] [1,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3337 : BadRow (Grammar43.fourRow ⟨2,2,1,4,4,4⟩ [0,1] [1,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3338 : BadRow (Grammar43.fourRow ⟨2,2,1,4,4,4⟩ [0,1] [1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3339 : BadRow (Grammar43.fourRow ⟨2,2,1,4,4,4⟩ [0,1] [1,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3340 : BadRow (Grammar43.fourRow ⟨2,2,1,4,4,4⟩ [0,1] [1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3341 : BadRow (Grammar43.fourRow ⟨2,2,1,4,4,4⟩ [0,1] [1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3342 : BadRow (Grammar43.fourRow ⟨2,2,1,4,4,4⟩ [0,1] [1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3343 : BadRow (Grammar43.fourRow ⟨2,2,1,4,4,4⟩ [0,1] [1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3344 : BadRow (Grammar43.fourRow ⟨2,2,1,4,4,4⟩ [0,1] [1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3345 : BadRow (Grammar43.fourRow ⟨2,2,1,4,4,4⟩ [0,1] [1,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3346 : BadRow (Grammar43.fourRow ⟨2,2,1,4,4,4⟩ [0,1] [2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3347 : BadRow (Grammar43.fourRow ⟨2,2,1,4,4,4⟩ [0,1] [2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
