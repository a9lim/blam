import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3744 : BadRow (Grammar43.fourRow ⟨3,2,0,3,4,5⟩ [0,0] [2,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3745 : BadRow (Grammar43.fourRow ⟨3,2,0,3,4,5⟩ [0,0] [2,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3746 : BadRow (Grammar43.fourRow ⟨3,2,0,3,4,5⟩ [0,0] [2,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3747 : BadRow (Grammar43.fourRow ⟨3,2,0,3,4,5⟩ [0,0] [3,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3748 : BadRow (Grammar43.fourRow ⟨3,2,0,3,4,5⟩ [0,0] [3,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3749 : BadRow (Grammar43.fourRow ⟨3,2,0,3,4,5⟩ [0,0] [3,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3750 : BadRow (Grammar43.fourRow ⟨3,2,0,3,4,5⟩ [0,0] [3,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3751 : BadRow (Grammar43.fourRow ⟨3,2,0,3,4,5⟩ [0,0] [3,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3752 : BadRow (Grammar43.fourRow ⟨3,2,0,3,4,5⟩ [0,0] [3,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3753 : BadRow (Grammar43.fourRow ⟨3,2,1,3,4,4⟩ [0,1] [0,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3754 : BadRow (Grammar43.fourRow ⟨3,2,1,3,4,4⟩ [0,1] [0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3755 : BadRow (Grammar43.fourRow ⟨3,2,1,3,4,4⟩ [0,1] [0,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
