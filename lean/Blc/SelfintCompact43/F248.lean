import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2976 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [1,0] [0,3,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2977 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [1,0] [0,3,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2978 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [1,0] [1,0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2979 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [1,0] [1,0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2980 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [1,0] [1,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2981 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [1,0] [1,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2982 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [1,0] [1,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2983 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [1,0] [1,2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2984 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [1,0] [1,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2985 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [1,0] [1,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2986 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [1,0] [1,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2987 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [1,0] [1,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
