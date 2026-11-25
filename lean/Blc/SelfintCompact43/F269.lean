import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3228 : BadRow (Grammar43.fourRow ⟨2,2,0,3,5,3⟩ [0,0] [0,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3229 : BadRow (Grammar43.fourRow ⟨2,2,0,3,5,3⟩ [0,0] [0,1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3230 : BadRow (Grammar43.fourRow ⟨2,2,0,3,5,3⟩ [0,0] [0,2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3231 : BadRow (Grammar43.fourRow ⟨2,2,0,3,5,3⟩ [0,0] [0,2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3232 : BadRow (Grammar43.fourRow ⟨2,2,0,3,5,3⟩ [0,0] [0,2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3233 : BadRow (Grammar43.fourRow ⟨2,2,0,3,5,3⟩ [0,0] [0,3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3234 : BadRow (Grammar43.fourRow ⟨2,2,0,3,5,3⟩ [0,0] [1,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3235 : BadRow (Grammar43.fourRow ⟨2,2,0,3,5,3⟩ [0,0] [1,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3236 : BadRow (Grammar43.fourRow ⟨2,2,0,3,5,3⟩ [0,0] [1,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3237 : BadRow (Grammar43.fourRow ⟨2,2,0,3,5,3⟩ [0,0] [1,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3238 : BadRow (Grammar43.fourRow ⟨2,2,0,3,5,3⟩ [0,0] [1,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3239 : BadRow (Grammar43.fourRow ⟨2,2,0,3,5,3⟩ [0,0] [1,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
