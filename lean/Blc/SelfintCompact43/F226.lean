import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2712 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [2,0] [2,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2713 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [2,0] [2,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2714 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [2,0] [2,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2715 : BadRow (Grammar43.fourRow ⟨2,3,0,2,4,5⟩ [0,0,0] [0,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2716 : BadRow (Grammar43.fourRow ⟨2,3,0,2,4,5⟩ [0,0,0] [0,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2717 : BadRow (Grammar43.fourRow ⟨2,3,0,2,4,5⟩ [0,0,0] [0,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2718 : BadRow (Grammar43.fourRow ⟨2,3,0,2,4,5⟩ [0,0,0] [1,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2719 : BadRow (Grammar43.fourRow ⟨2,3,0,2,4,5⟩ [0,0,0] [1,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2720 : BadRow (Grammar43.fourRow ⟨2,3,0,2,4,5⟩ [0,0,0] [1,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2721 : BadRow (Grammar43.fourRow ⟨2,3,0,2,4,5⟩ [0,0,0] [1,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2722 : BadRow (Grammar43.fourRow ⟨2,3,0,2,4,5⟩ [0,0,0] [1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2723 : BadRow (Grammar43.fourRow ⟨2,3,0,2,4,5⟩ [0,0,0] [1,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
