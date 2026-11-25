import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3096 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [2,0] [0,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3097 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [2,0] [0,2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3098 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [2,0] [0,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3099 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [2,0] [0,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3100 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [2,0] [0,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3101 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [2,0] [0,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3102 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [2,0] [0,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3103 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [2,0] [0,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3104 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [2,0] [1,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3105 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [2,0] [1,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3106 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [2,0] [1,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3107 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [2,0] [1,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
