import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3720 : BadRow (Grammar43.fourRow ⟨3,2,0,3,4,5⟩ [0,0] [0,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3721 : BadRow (Grammar43.fourRow ⟨3,2,0,3,4,5⟩ [0,0] [0,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3722 : BadRow (Grammar43.fourRow ⟨3,2,0,3,4,5⟩ [0,0] [0,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3723 : BadRow (Grammar43.fourRow ⟨3,2,0,3,4,5⟩ [0,0] [0,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3724 : BadRow (Grammar43.fourRow ⟨3,2,0,3,4,5⟩ [0,0] [0,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3725 : BadRow (Grammar43.fourRow ⟨3,2,0,3,4,5⟩ [0,0] [1,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3726 : BadRow (Grammar43.fourRow ⟨3,2,0,3,4,5⟩ [0,0] [1,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3727 : BadRow (Grammar43.fourRow ⟨3,2,0,3,4,5⟩ [0,0] [1,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3728 : BadRow (Grammar43.fourRow ⟨3,2,0,3,4,5⟩ [0,0] [1,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3729 : BadRow (Grammar43.fourRow ⟨3,2,0,3,4,5⟩ [0,0] [1,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3730 : BadRow (Grammar43.fourRow ⟨3,2,0,3,4,5⟩ [0,0] [1,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3731 : BadRow (Grammar43.fourRow ⟨3,2,0,3,4,5⟩ [0,0] [1,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
