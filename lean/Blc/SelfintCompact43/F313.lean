import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3756 : BadRow (Grammar43.fourRow ⟨3,2,1,3,4,4⟩ [0,1] [0,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3757 : BadRow (Grammar43.fourRow ⟨3,2,1,3,4,4⟩ [0,1] [0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3758 : BadRow (Grammar43.fourRow ⟨3,2,1,3,4,4⟩ [0,1] [0,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3759 : BadRow (Grammar43.fourRow ⟨3,2,1,3,4,4⟩ [0,1] [0,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3760 : BadRow (Grammar43.fourRow ⟨3,2,1,3,4,4⟩ [0,1] [0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3761 : BadRow (Grammar43.fourRow ⟨3,2,1,3,4,4⟩ [0,1] [0,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3762 : BadRow (Grammar43.fourRow ⟨3,2,1,3,4,4⟩ [0,1] [0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3763 : BadRow (Grammar43.fourRow ⟨3,2,1,3,4,4⟩ [0,1] [0,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3764 : BadRow (Grammar43.fourRow ⟨3,2,1,3,4,4⟩ [0,1] [0,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3765 : BadRow (Grammar43.fourRow ⟨3,2,1,3,4,4⟩ [0,1] [1,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3766 : BadRow (Grammar43.fourRow ⟨3,2,1,3,4,4⟩ [0,1] [1,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3767 : BadRow (Grammar43.fourRow ⟨3,2,1,3,4,4⟩ [0,1] [1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
