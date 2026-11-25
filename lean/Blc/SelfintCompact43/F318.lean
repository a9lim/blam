import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3816 : BadRow (Grammar43.fourRow ⟨3,2,2,3,4,3⟩ [0,2] [0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3817 : BadRow (Grammar43.fourRow ⟨3,2,2,3,4,3⟩ [0,2] [0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3818 : BadRow (Grammar43.fourRow ⟨3,2,2,3,4,3⟩ [0,2] [0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3819 : BadRow (Grammar43.fourRow ⟨3,2,2,3,4,3⟩ [0,2] [0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3820 : BadRow (Grammar43.fourRow ⟨3,2,2,3,4,3⟩ [0,2] [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3821 : BadRow (Grammar43.fourRow ⟨3,2,2,3,4,3⟩ [0,2] [0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3822 : BadRow (Grammar43.fourRow ⟨3,2,2,3,4,3⟩ [0,2] [0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3823 : BadRow (Grammar43.fourRow ⟨3,2,2,3,4,3⟩ [0,2] [0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3824 : BadRow (Grammar43.fourRow ⟨3,2,2,3,4,3⟩ [0,2] [0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3825 : BadRow (Grammar43.fourRow ⟨3,2,2,3,4,3⟩ [0,2] [1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3826 : BadRow (Grammar43.fourRow ⟨3,2,2,3,4,3⟩ [0,2] [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3827 : BadRow (Grammar43.fourRow ⟨3,2,2,3,4,3⟩ [0,2] [1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
