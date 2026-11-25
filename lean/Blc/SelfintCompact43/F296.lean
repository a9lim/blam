import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3552 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [0,3] [1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3553 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [0,3] [1,1,2,0]) :=
  row_of_forall (discharge bank [4,4,4,5] (hard := []) (by decide +kernel) .nil)

theorem f3554 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [0,3] [1,2,0,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,5,5] (hard := []) (by decide +kernel) .nil)

theorem f3555 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [0,3] [1,2,1,0]) :=
  row_of_forall (discharge bank [4,4,4,5] (hard := []) (by decide +kernel) .nil)

theorem f3556 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [0,3] [2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3557 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [0,3] [2,0,1,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f3558 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [0,3] [2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3559 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [0,3] [2,1,0,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f3560 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [0,3] [2,1,1,0]) :=
  row_of_forall (discharge bank [4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f3561 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [0,3] [2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3562 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [1,2] [0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3563 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [1,2] [0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
