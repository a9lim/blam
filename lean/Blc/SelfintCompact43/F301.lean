import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3612 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [3,0] [1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3613 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [3,0] [2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3614 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [3,0] [2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3615 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [3,0] [2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3616 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [3,0] [2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3617 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [3,0] [2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3618 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [3,0] [2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3619 : BadRow (Grammar43.fourRow ⟨3,2,4,2,4,3⟩ [1,3] [0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3620 : BadRow (Grammar43.fourRow ⟨3,2,4,2,4,3⟩ [1,3] [0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3621 : BadRow (Grammar43.fourRow ⟨3,2,4,2,4,3⟩ [1,3] [0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3622 : BadRow (Grammar43.fourRow ⟨3,2,4,2,4,3⟩ [1,3] [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3623 : BadRow (Grammar43.fourRow ⟨3,2,4,2,4,3⟩ [1,3] [0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
