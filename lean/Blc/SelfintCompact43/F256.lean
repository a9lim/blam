import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3072 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [1,1] [1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3073 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [1,1] [1,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3074 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [1,1] [1,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3075 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [1,1] [1,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3076 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [1,1] [2,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3077 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [1,1] [2,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3078 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [1,1] [2,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3079 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [1,1] [2,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3080 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [1,1] [2,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3081 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [1,1] [2,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3082 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [1,1] [2,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3083 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [1,1] [2,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
