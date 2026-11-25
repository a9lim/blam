import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3252 : BadRow (Grammar43.fourRow ⟨2,3,0,3,4,3⟩ [0,0,0] [0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3253 : BadRow (Grammar43.fourRow ⟨2,3,0,3,4,3⟩ [0,0,0] [0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3254 : BadRow (Grammar43.fourRow ⟨2,3,0,3,4,3⟩ [0,0,0] [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3255 : BadRow (Grammar43.fourRow ⟨2,3,0,3,4,3⟩ [0,0,0] [0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3256 : BadRow (Grammar43.fourRow ⟨2,3,0,3,4,3⟩ [0,0,0] [0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3257 : BadRow (Grammar43.fourRow ⟨2,3,0,3,4,3⟩ [0,0,0] [0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3258 : BadRow (Grammar43.fourRow ⟨2,3,0,3,4,3⟩ [0,0,0] [0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3259 : BadRow (Grammar43.fourRow ⟨2,3,0,3,4,3⟩ [0,0,0] [1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3260 : BadRow (Grammar43.fourRow ⟨2,3,0,3,4,3⟩ [0,0,0] [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3261 : BadRow (Grammar43.fourRow ⟨2,3,0,3,4,3⟩ [0,0,0] [1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3262 : BadRow (Grammar43.fourRow ⟨2,3,0,3,4,3⟩ [0,0,0] [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3263 : BadRow (Grammar43.fourRow ⟨2,3,0,3,4,3⟩ [0,0,0] [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
