import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3528 : BadRow (Grammar43.fourRow ⟨3,2,2,2,4,5⟩ [2,0] [0,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3529 : BadRow (Grammar43.fourRow ⟨3,2,2,2,4,5⟩ [2,0] [0,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3530 : BadRow (Grammar43.fourRow ⟨3,2,2,2,4,5⟩ [2,0] [1,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3531 : BadRow (Grammar43.fourRow ⟨3,2,2,2,4,5⟩ [2,0] [1,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3532 : BadRow (Grammar43.fourRow ⟨3,2,2,2,4,5⟩ [2,0] [1,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3533 : BadRow (Grammar43.fourRow ⟨3,2,2,2,4,5⟩ [2,0] [1,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3534 : BadRow (Grammar43.fourRow ⟨3,2,2,2,4,5⟩ [2,0] [1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3535 : BadRow (Grammar43.fourRow ⟨3,2,2,2,4,5⟩ [2,0] [1,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3536 : BadRow (Grammar43.fourRow ⟨3,2,2,2,4,5⟩ [2,0] [2,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3537 : BadRow (Grammar43.fourRow ⟨3,2,2,2,4,5⟩ [2,0] [2,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3538 : BadRow (Grammar43.fourRow ⟨3,2,2,2,4,5⟩ [2,0] [2,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3539 : BadRow (Grammar43.fourRow ⟨3,2,2,2,4,5⟩ [2,0] [2,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
