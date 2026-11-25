import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3084 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [1,1] [2,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3085 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [1,1] [2,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3086 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [1,1] [3,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3087 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [1,1] [3,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3088 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [1,1] [3,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3089 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [1,1] [3,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3090 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [1,1] [3,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3091 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [1,1] [3,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3092 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [2,0] [0,0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3093 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [2,0] [0,0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3094 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [2,0] [0,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3095 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [2,0] [0,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
