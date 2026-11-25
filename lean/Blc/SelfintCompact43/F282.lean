import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3384 : BadRow (Grammar43.fourRow ⟨2,2,1,4,4,4⟩ [1,0] [2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3385 : BadRow (Grammar43.fourRow ⟨2,2,1,4,4,4⟩ [1,0] [2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3386 : BadRow (Grammar43.fourRow ⟨2,2,1,4,4,4⟩ [1,0] [2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3387 : BadRow (Grammar43.fourRow ⟨2,2,1,4,4,4⟩ [1,0] [3,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3388 : BadRow (Grammar43.fourRow ⟨2,2,1,4,4,4⟩ [1,0] [3,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3389 : BadRow (Grammar43.fourRow ⟨2,2,1,4,4,4⟩ [1,0] [3,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3390 : BadRow (Grammar43.fourRow ⟨2,2,1,4,4,4⟩ [1,0] [4,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3391 : BadRow (Grammar43.fourRow ⟨2,2,2,4,4,3⟩ [0,2] [0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3392 : BadRow (Grammar43.fourRow ⟨2,2,2,4,4,3⟩ [0,2] [0,0,1,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f3393 : BadRow (Grammar43.fourRow ⟨2,2,2,4,4,3⟩ [0,2] [0,0,2,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f3394 : BadRow (Grammar43.fourRow ⟨2,2,2,4,4,3⟩ [0,2] [0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3395 : BadRow (Grammar43.fourRow ⟨2,2,2,4,4,3⟩ [0,2] [0,1,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
