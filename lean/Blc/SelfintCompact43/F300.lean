import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3600 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [3,0] [0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3601 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [3,0] [0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3602 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [3,0] [0,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3603 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [3,0] [0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3604 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [3,0] [0,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3605 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [3,0] [0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3606 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [3,0] [1,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3607 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [3,0] [1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3608 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [3,0] [1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3609 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [3,0] [1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3610 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [3,0] [1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3611 : BadRow (Grammar43.fourRow ⟨3,2,3,2,4,4⟩ [3,0] [1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
