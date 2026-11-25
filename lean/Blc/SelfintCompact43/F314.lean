import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3768 : BadRow (Grammar43.fourRow ⟨3,2,1,3,4,4⟩ [0,1] [1,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3769 : BadRow (Grammar43.fourRow ⟨3,2,1,3,4,4⟩ [0,1] [1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3770 : BadRow (Grammar43.fourRow ⟨3,2,1,3,4,4⟩ [0,1] [1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3771 : BadRow (Grammar43.fourRow ⟨3,2,1,3,4,4⟩ [0,1] [1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3772 : BadRow (Grammar43.fourRow ⟨3,2,1,3,4,4⟩ [0,1] [1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3773 : BadRow (Grammar43.fourRow ⟨3,2,1,3,4,4⟩ [0,1] [1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3774 : BadRow (Grammar43.fourRow ⟨3,2,1,3,4,4⟩ [0,1] [1,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3775 : BadRow (Grammar43.fourRow ⟨3,2,1,3,4,4⟩ [0,1] [2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3776 : BadRow (Grammar43.fourRow ⟨3,2,1,3,4,4⟩ [0,1] [2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3777 : BadRow (Grammar43.fourRow ⟨3,2,1,3,4,4⟩ [0,1] [2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3778 : BadRow (Grammar43.fourRow ⟨3,2,1,3,4,4⟩ [0,1] [2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3779 : BadRow (Grammar43.fourRow ⟨3,2,1,3,4,4⟩ [0,1] [2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
