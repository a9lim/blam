import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2988 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [1,0] [1,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2989 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [1,0] [1,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2990 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [1,0] [2,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2991 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [1,0] [2,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2992 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [1,0] [2,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2993 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [1,0] [2,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2994 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [1,0] [2,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2995 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [1,0] [2,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2996 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [1,0] [2,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2997 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [1,0] [2,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2998 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [1,0] [2,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2999 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [1,0] [2,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
