import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3204 : BadRow (Grammar43.fourRow ⟨2,2,4,3,4,3⟩ [2,2] [1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3205 : BadRow (Grammar43.fourRow ⟨2,2,4,3,4,3⟩ [2,2] [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3206 : BadRow (Grammar43.fourRow ⟨2,2,4,3,4,3⟩ [2,2] [1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3207 : BadRow (Grammar43.fourRow ⟨2,2,4,3,4,3⟩ [2,2] [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3208 : BadRow (Grammar43.fourRow ⟨2,2,4,3,4,3⟩ [2,2] [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3209 : BadRow (Grammar43.fourRow ⟨2,2,4,3,4,3⟩ [2,2] [1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3210 : BadRow (Grammar43.fourRow ⟨2,2,4,3,4,3⟩ [2,2] [2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3211 : BadRow (Grammar43.fourRow ⟨2,2,4,3,4,3⟩ [2,2] [2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3212 : BadRow (Grammar43.fourRow ⟨2,2,4,3,4,3⟩ [2,2] [2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3213 : BadRow (Grammar43.fourRow ⟨2,2,4,3,4,3⟩ [2,2] [3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3214 : BadRow (Grammar43.fourRow ⟨2,2,0,3,5,3⟩ [0,0] [0,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3215 : BadRow (Grammar43.fourRow ⟨2,2,0,3,5,3⟩ [0,0] [0,0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
