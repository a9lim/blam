import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3144 : BadRow (Grammar43.fourRow ⟨2,2,3,3,4,4⟩ [1,2] [1,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3145 : BadRow (Grammar43.fourRow ⟨2,2,3,3,4,4⟩ [1,2] [1,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3146 : BadRow (Grammar43.fourRow ⟨2,2,3,3,4,4⟩ [1,2] [1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3147 : BadRow (Grammar43.fourRow ⟨2,2,3,3,4,4⟩ [1,2] [1,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3148 : BadRow (Grammar43.fourRow ⟨2,2,3,3,4,4⟩ [1,2] [1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3149 : BadRow (Grammar43.fourRow ⟨2,2,3,3,4,4⟩ [1,2] [1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3150 : BadRow (Grammar43.fourRow ⟨2,2,3,3,4,4⟩ [1,2] [1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3151 : BadRow (Grammar43.fourRow ⟨2,2,3,3,4,4⟩ [1,2] [1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3152 : BadRow (Grammar43.fourRow ⟨2,2,3,3,4,4⟩ [1,2] [1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3153 : BadRow (Grammar43.fourRow ⟨2,2,3,3,4,4⟩ [1,2] [1,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3154 : BadRow (Grammar43.fourRow ⟨2,2,3,3,4,4⟩ [1,2] [2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3155 : BadRow (Grammar43.fourRow ⟨2,2,3,3,4,4⟩ [1,2] [2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
