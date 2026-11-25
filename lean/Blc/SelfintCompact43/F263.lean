import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3156 : BadRow (Grammar43.fourRow ⟨2,2,3,3,4,4⟩ [1,2] [2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3157 : BadRow (Grammar43.fourRow ⟨2,2,3,3,4,4⟩ [1,2] [2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3158 : BadRow (Grammar43.fourRow ⟨2,2,3,3,4,4⟩ [1,2] [2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3159 : BadRow (Grammar43.fourRow ⟨2,2,3,3,4,4⟩ [1,2] [2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3160 : BadRow (Grammar43.fourRow ⟨2,2,3,3,4,4⟩ [1,2] [3,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3161 : BadRow (Grammar43.fourRow ⟨2,2,3,3,4,4⟩ [1,2] [3,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3162 : BadRow (Grammar43.fourRow ⟨2,2,3,3,4,4⟩ [1,2] [3,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3163 : BadRow (Grammar43.fourRow ⟨2,2,3,3,4,4⟩ [2,1] [0,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3164 : BadRow (Grammar43.fourRow ⟨2,2,3,3,4,4⟩ [2,1] [0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3165 : BadRow (Grammar43.fourRow ⟨2,2,3,3,4,4⟩ [2,1] [0,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3166 : BadRow (Grammar43.fourRow ⟨2,2,3,3,4,4⟩ [2,1] [0,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3167 : BadRow (Grammar43.fourRow ⟨2,2,3,3,4,4⟩ [2,1] [0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
