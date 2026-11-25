import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f504 : BadRow (Grammar43.fourRow ⟨0,4,0,3,4,3⟩ [0,0,0,0] [2,0,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,15,15,15,15,15,5,5,5,5,5,18,18,9,9,34] (hard := []) (by decide +kernel) .nil)

theorem f505 : BadRow (Grammar43.fourRow ⟨0,4,0,3,4,3⟩ [0,0,0,0] [2,0,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,15,15,15,15,15,5,5,5,5,5,18,18,9,18,9] (hard := []) (by decide +kernel) .nil)

theorem f506 : BadRow (Grammar43.fourRow ⟨0,4,0,3,4,3⟩ [0,0,0,0] [2,1,0,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,15,15,15,5,5,5,18,18,18] (hard := []) (by decide +kernel) .nil)

theorem f507 : BadRow (Grammar43.fourRow ⟨0,4,0,3,4,3⟩ [0,0,0,0] [3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f508 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [0,1,4,4]) :=
  row_of_forall (discharge bank [1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f509 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [0,2,3,4]) :=
  row_of_forall (discharge bank [4,25,1,1,4,14,4,1] (hard := []) (by decide +kernel) .nil)

theorem f510 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [0,2,4,3]) :=
  row_of_forall (discharge bank [4,1,1,1,4,39,4,1] (hard := []) (by decide +kernel) .nil)

theorem f511 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [0,3,2,4]) :=
  row_of_forall (discharge bank [1,1,39,1,4,4,4,4,1,1] (hard := []) (by decide +kernel) .nil)

theorem f512 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [0,3,3,3]) :=
  row_of_forall (discharge bank [4,39,1,1,1,4,39,1,1] (hard := []) (by decide +kernel) .nil)

theorem f513 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [0,3,4,2]) :=
  row_of_forall (discharge bank [39,4,25,1,4,14,4,9] (hard := []) (by decide +kernel) .nil)

theorem f514 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [0,4,1,4]) :=
  row_of_forall (discharge bank [1,39,1] (hard := []) (by decide +kernel) .nil)

theorem f515 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [0,4,2,3]) :=
  row_of_forall (discharge bank [1,39,1,4,4,4,4,1,17] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
