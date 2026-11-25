import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3540 : BadRow (Grammar43.fourRow ⟨3,2,2,2,4,5⟩ [2,0] [2,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3541 : BadRow (Grammar43.fourRow ⟨3,2,2,2,4,5⟩ [2,0] [2,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3542 : BadRow (Grammar43.fourRow ⟨3,2,2,2,4,5⟩ [2,0] [2,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3543 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [0,3] [0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3544 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [0,3] [0,1,1,2]) :=
  row_of_forall (discharge bank [4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f3545 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [0,3] [0,1,2,1]) :=
  row_of_forall (discharge bank [4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f3546 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [0,3] [0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3547 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [0,3] [0,2,1,1]) :=
  row_of_forall (discharge bank [4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f3548 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [0,3] [0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3549 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [0,3] [1,0,1,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,5] (hard := []) (by decide +kernel) .nil)

theorem f3550 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [0,3] [1,0,2,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,5] (hard := []) (by decide +kernel) .nil)

theorem f3551 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [0,3] [1,1,0,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,5,5] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
