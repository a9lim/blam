import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3312 : BadRow (Grammar43.fourRow ⟨2,2,0,4,4,5⟩ [0,0] [3,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3313 : BadRow (Grammar43.fourRow ⟨2,2,0,4,4,5⟩ [0,0] [3,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3314 : BadRow (Grammar43.fourRow ⟨2,2,0,4,4,5⟩ [0,0] [3,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3315 : BadRow (Grammar43.fourRow ⟨2,2,0,4,4,5⟩ [0,0] [3,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3316 : BadRow (Grammar43.fourRow ⟨2,2,0,4,4,5⟩ [0,0] [3,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3317 : BadRow (Grammar43.fourRow ⟨2,2,0,4,4,5⟩ [0,0] [3,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3318 : BadRow (Grammar43.fourRow ⟨2,2,0,4,4,5⟩ [0,0] [4,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3319 : BadRow (Grammar43.fourRow ⟨2,2,0,4,4,5⟩ [0,0] [4,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3320 : BadRow (Grammar43.fourRow ⟨2,2,0,4,4,5⟩ [0,0] [4,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3321 : BadRow (Grammar43.fourRow ⟨2,2,1,4,4,4⟩ [0,1] [0,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3322 : BadRow (Grammar43.fourRow ⟨2,2,1,4,4,4⟩ [0,1] [0,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3323 : BadRow (Grammar43.fourRow ⟨2,2,1,4,4,4⟩ [0,1] [0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
