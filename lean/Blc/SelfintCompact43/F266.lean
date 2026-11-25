import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3192 : BadRow (Grammar43.fourRow ⟨2,2,3,3,4,4⟩ [2,1] [3,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3193 : BadRow (Grammar43.fourRow ⟨2,2,3,3,4,4⟩ [2,1] [3,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3194 : BadRow (Grammar43.fourRow ⟨2,2,4,3,4,3⟩ [2,2] [0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3195 : BadRow (Grammar43.fourRow ⟨2,2,4,3,4,3⟩ [2,2] [0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3196 : BadRow (Grammar43.fourRow ⟨2,2,4,3,4,3⟩ [2,2] [0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3197 : BadRow (Grammar43.fourRow ⟨2,2,4,3,4,3⟩ [2,2] [0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3198 : BadRow (Grammar43.fourRow ⟨2,2,4,3,4,3⟩ [2,2] [0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3199 : BadRow (Grammar43.fourRow ⟨2,2,4,3,4,3⟩ [2,2] [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3200 : BadRow (Grammar43.fourRow ⟨2,2,4,3,4,3⟩ [2,2] [0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3201 : BadRow (Grammar43.fourRow ⟨2,2,4,3,4,3⟩ [2,2] [0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3202 : BadRow (Grammar43.fourRow ⟨2,2,4,3,4,3⟩ [2,2] [0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3203 : BadRow (Grammar43.fourRow ⟨2,2,4,3,4,3⟩ [2,2] [0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
