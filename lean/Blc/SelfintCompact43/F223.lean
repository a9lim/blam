import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2676 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [1,1] [1,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2677 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [1,1] [1,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2678 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [1,1] [1,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2679 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [1,1] [1,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2680 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [1,1] [1,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2681 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [1,1] [2,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2682 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [1,1] [2,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2683 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [1,1] [2,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2684 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [1,1] [2,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2685 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [2,0] [0,0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2686 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [2,0] [0,0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2687 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,3⟩ [2,0] [0,0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
