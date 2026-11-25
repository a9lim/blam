import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3264 : BadRow (Grammar43.fourRow ⟨2,3,0,3,4,3⟩ [0,0,0] [1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3265 : BadRow (Grammar43.fourRow ⟨2,3,0,3,4,3⟩ [0,0,0] [2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3266 : BadRow (Grammar43.fourRow ⟨2,3,0,3,4,3⟩ [0,0,0] [2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3267 : BadRow (Grammar43.fourRow ⟨2,3,0,3,4,3⟩ [0,0,0] [2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3268 : BadRow (Grammar43.fourRow ⟨2,3,0,3,4,3⟩ [0,0,0] [3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3269 : BadRow (Grammar43.fourRow ⟨2,2,0,4,4,5⟩ [0,0] [0,0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3270 : BadRow (Grammar43.fourRow ⟨2,2,0,4,4,5⟩ [0,0] [0,0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3271 : BadRow (Grammar43.fourRow ⟨2,2,0,4,4,5⟩ [0,0] [0,0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3272 : BadRow (Grammar43.fourRow ⟨2,2,0,4,4,5⟩ [0,0] [0,0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3273 : BadRow (Grammar43.fourRow ⟨2,2,0,4,4,5⟩ [0,0] [0,1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3274 : BadRow (Grammar43.fourRow ⟨2,2,0,4,4,5⟩ [0,0] [0,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3275 : BadRow (Grammar43.fourRow ⟨2,2,0,4,4,5⟩ [0,0] [0,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
