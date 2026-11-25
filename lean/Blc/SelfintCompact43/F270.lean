import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3240 : BadRow (Grammar43.fourRow ⟨2,2,0,3,5,3⟩ [0,0] [1,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3241 : BadRow (Grammar43.fourRow ⟨2,2,0,3,5,3⟩ [0,0] [1,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3242 : BadRow (Grammar43.fourRow ⟨2,2,0,3,5,3⟩ [0,0] [1,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3243 : BadRow (Grammar43.fourRow ⟨2,2,0,3,5,3⟩ [0,0] [1,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3244 : BadRow (Grammar43.fourRow ⟨2,2,0,3,5,3⟩ [0,0] [2,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3245 : BadRow (Grammar43.fourRow ⟨2,2,0,3,5,3⟩ [0,0] [2,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3246 : BadRow (Grammar43.fourRow ⟨2,2,0,3,5,3⟩ [0,0] [2,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3247 : BadRow (Grammar43.fourRow ⟨2,2,0,3,5,3⟩ [0,0] [2,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3248 : BadRow (Grammar43.fourRow ⟨2,2,0,3,5,3⟩ [0,0] [3,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3249 : BadRow (Grammar43.fourRow ⟨2,3,0,3,4,3⟩ [0,0,0] [0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3250 : BadRow (Grammar43.fourRow ⟨2,3,0,3,4,3⟩ [0,0,0] [0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3251 : BadRow (Grammar43.fourRow ⟨2,3,0,3,4,3⟩ [0,0,0] [0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
