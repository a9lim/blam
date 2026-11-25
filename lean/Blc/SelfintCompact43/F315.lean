import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3780 : BadRow (Grammar43.fourRow ⟨3,2,1,3,4,4⟩ [0,1] [2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3781 : BadRow (Grammar43.fourRow ⟨3,2,1,3,4,4⟩ [0,1] [3,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3782 : BadRow (Grammar43.fourRow ⟨3,2,1,3,4,4⟩ [0,1] [3,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3783 : BadRow (Grammar43.fourRow ⟨3,2,1,3,4,4⟩ [0,1] [3,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3784 : BadRow (Grammar43.fourRow ⟨3,2,1,3,4,4⟩ [1,0] [0,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3785 : BadRow (Grammar43.fourRow ⟨3,2,1,3,4,4⟩ [1,0] [0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3786 : BadRow (Grammar43.fourRow ⟨3,2,1,3,4,4⟩ [1,0] [0,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3787 : BadRow (Grammar43.fourRow ⟨3,2,1,3,4,4⟩ [1,0] [0,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3788 : BadRow (Grammar43.fourRow ⟨3,2,1,3,4,4⟩ [1,0] [0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3789 : BadRow (Grammar43.fourRow ⟨3,2,1,3,4,4⟩ [1,0] [0,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3790 : BadRow (Grammar43.fourRow ⟨3,2,1,3,4,4⟩ [1,0] [0,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3791 : BadRow (Grammar43.fourRow ⟨3,2,1,3,4,4⟩ [1,0] [0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
