import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3576 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [1,2] [2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3577 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [1,2] [2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3578 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [1,2] [2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3579 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [1,2] [2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3580 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [1,2] [2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3581 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [2,1] [0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3582 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [2,1] [0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3583 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [2,1] [0,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3584 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [2,1] [0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3585 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [2,1] [0,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3586 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [2,1] [0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3587 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [2,1] [1,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
