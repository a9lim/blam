import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3444 : BadRow (Grammar43.fourRow ⟨2,2,2,4,4,3⟩ [2,0] [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3445 : BadRow (Grammar43.fourRow ⟨2,2,2,4,4,3⟩ [2,0] [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3446 : BadRow (Grammar43.fourRow ⟨2,2,2,4,4,3⟩ [2,0] [1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3447 : BadRow (Grammar43.fourRow ⟨2,2,2,4,4,3⟩ [2,0] [2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3448 : BadRow (Grammar43.fourRow ⟨2,2,2,4,4,3⟩ [2,0] [2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3449 : BadRow (Grammar43.fourRow ⟨2,2,2,4,4,3⟩ [2,0] [2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3450 : BadRow (Grammar43.fourRow ⟨2,2,2,4,4,3⟩ [2,0] [3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3451 : BadRow (Grammar43.fourRow ⟨2,2,0,5,4,3⟩ [0,0] [0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3452 : BadRow (Grammar43.fourRow ⟨2,2,0,5,4,3⟩ [0,0] [0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3453 : BadRow (Grammar43.fourRow ⟨2,2,0,5,4,3⟩ [0,0] [0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3454 : BadRow (Grammar43.fourRow ⟨2,2,0,5,4,3⟩ [0,0] [0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3455 : BadRow (Grammar43.fourRow ⟨2,2,0,5,4,3⟩ [0,0] [0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
