import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3108 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [2,0] [1,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3109 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [2,0] [1,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3110 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [2,0] [1,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3111 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [2,0] [1,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3112 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [2,0] [1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3113 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [2,0] [1,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3114 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [2,0] [1,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3115 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [2,0] [1,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3116 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [2,0] [2,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3117 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [2,0] [2,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3118 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [2,0] [2,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3119 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [2,0] [2,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
