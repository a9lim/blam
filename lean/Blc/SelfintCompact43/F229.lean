import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2748 : BadRow (Grammar43.fourRow ⟨2,3,1,2,4,4⟩ [0,0,1] [2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2749 : BadRow (Grammar43.fourRow ⟨2,3,1,2,4,4⟩ [0,0,1] [2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2750 : BadRow (Grammar43.fourRow ⟨2,3,1,2,4,4⟩ [0,1,0] [0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2751 : BadRow (Grammar43.fourRow ⟨2,3,1,2,4,4⟩ [0,1,0] [0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2752 : BadRow (Grammar43.fourRow ⟨2,3,1,2,4,4⟩ [0,1,0] [0,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2753 : BadRow (Grammar43.fourRow ⟨2,3,1,2,4,4⟩ [0,1,0] [0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2754 : BadRow (Grammar43.fourRow ⟨2,3,1,2,4,4⟩ [0,1,0] [0,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2755 : BadRow (Grammar43.fourRow ⟨2,3,1,2,4,4⟩ [0,1,0] [0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2756 : BadRow (Grammar43.fourRow ⟨2,3,1,2,4,4⟩ [0,1,0] [1,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2757 : BadRow (Grammar43.fourRow ⟨2,3,1,2,4,4⟩ [0,1,0] [1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2758 : BadRow (Grammar43.fourRow ⟨2,3,1,2,4,4⟩ [0,1,0] [1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2759 : BadRow (Grammar43.fourRow ⟨2,3,1,2,4,4⟩ [0,1,0] [1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
