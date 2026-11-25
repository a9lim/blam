import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3708 : BadRow (Grammar43.fourRow ⟨3,3,0,2,4,3⟩ [0,0,0] [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3709 : BadRow (Grammar43.fourRow ⟨3,3,0,2,4,3⟩ [0,0,0] [1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3710 : BadRow (Grammar43.fourRow ⟨3,3,0,2,4,3⟩ [0,0,0] [2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3711 : BadRow (Grammar43.fourRow ⟨3,3,0,2,4,3⟩ [0,0,0] [2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3712 : BadRow (Grammar43.fourRow ⟨3,3,0,2,4,3⟩ [0,0,0] [2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3713 : BadRow (Grammar43.fourRow ⟨3,2,0,3,4,5⟩ [0,0] [0,0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3714 : BadRow (Grammar43.fourRow ⟨3,2,0,3,4,5⟩ [0,0] [0,0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3715 : BadRow (Grammar43.fourRow ⟨3,2,0,3,4,5⟩ [0,0] [0,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3716 : BadRow (Grammar43.fourRow ⟨3,2,0,3,4,5⟩ [0,0] [0,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3717 : BadRow (Grammar43.fourRow ⟨3,2,0,3,4,5⟩ [0,0] [0,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3718 : BadRow (Grammar43.fourRow ⟨3,2,0,3,4,5⟩ [0,0] [0,2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3719 : BadRow (Grammar43.fourRow ⟨3,2,0,3,4,5⟩ [0,0] [0,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
