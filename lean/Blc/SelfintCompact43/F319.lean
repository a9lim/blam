import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3828 : BadRow (Grammar43.fourRow ⟨3,2,2,3,4,3⟩ [0,2] [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3829 : BadRow (Grammar43.fourRow ⟨3,2,2,3,4,3⟩ [0,2] [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3830 : BadRow (Grammar43.fourRow ⟨3,2,2,3,4,3⟩ [0,2] [1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3831 : BadRow (Grammar43.fourRow ⟨3,2,2,3,4,3⟩ [0,2] [2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3832 : BadRow (Grammar43.fourRow ⟨3,2,2,3,4,3⟩ [0,2] [2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3833 : BadRow (Grammar43.fourRow ⟨3,2,2,3,4,3⟩ [0,2] [2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3834 : BadRow (Grammar43.fourRow ⟨3,2,2,3,4,3⟩ [0,2] [3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3835 : BadRow (Grammar43.fourRow ⟨3,2,2,3,4,3⟩ [1,1] [0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3836 : BadRow (Grammar43.fourRow ⟨3,2,2,3,4,3⟩ [1,1] [0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3837 : BadRow (Grammar43.fourRow ⟨3,2,2,3,4,3⟩ [1,1] [0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3838 : BadRow (Grammar43.fourRow ⟨3,2,2,3,4,3⟩ [1,1] [0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3839 : BadRow (Grammar43.fourRow ⟨3,2,2,3,4,3⟩ [1,1] [0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
