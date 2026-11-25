import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f444 : BadRow (Grammar43.fourRow ⟨0,3,0,3,4,7⟩ [0,0,0] [3,1,0,3]) :=
  row_of_forall (discharge bank [1,1,1,1,13,1,1,7,7,7] (hard := []) (by decide +kernel) .nil)

theorem f445 : BadRow (Grammar43.fourRow ⟨0,3,0,3,4,7⟩ [0,0,0] [3,1,1,2]) :=
  row_of_forall (discharge bank [6,6,6,6,6,7,7,17,17,14] (hard := []) (by decide +kernel) .nil)

theorem f446 : BadRow (Grammar43.fourRow ⟨0,3,0,3,4,7⟩ [0,0,0] [3,1,2,1]) :=
  row_of_forall (discharge bank [6,6,6,6,6,7,7,17,7,17] (hard := []) (by decide +kernel) .nil)

theorem f447 : BadRow (Grammar43.fourRow ⟨0,3,0,3,4,7⟩ [0,0,0] [3,1,3,0]) :=
  row_of_forall (discharge bank [38,1,59,30,1,7] (hard := []) (by decide +kernel) .nil)

theorem f448 : BadRow (Grammar43.fourRow ⟨0,3,0,3,4,7⟩ [0,0,0] [3,2,0,2]) :=
  row_of_forall (discharge bank [6,6,6,6,6,17,1,1,1,9] (hard := []) (by decide +kernel) .nil)

theorem f449 : BadRow (Grammar43.fourRow ⟨0,3,0,3,4,7⟩ [0,0,0] [3,2,1,1]) :=
  row_of_forall (discharge bank [6,6,6,7,7,7] (hard := []) (by decide +kernel) .nil)

theorem f450 : BadRow (Grammar43.fourRow ⟨0,3,0,3,4,7⟩ [0,0,0] [3,2,2,0]) :=
  row_of_forall (discharge bank [6,6,6,17,17,1] (hard := []) (by decide +kernel) .nil)

theorem f451 : BadRow (Grammar43.fourRow ⟨0,3,0,3,4,7⟩ [0,0,0] [3,3,0,1]) :=
  row_of_forall (discharge bank [9,9,36,13,36,17,17,36,9,36] (hard := []) (by decide +kernel) .nil)

theorem f452 : BadRow (Grammar43.fourRow ⟨0,3,0,3,4,7⟩ [0,0,0] [3,3,1,0]) :=
  row_of_forall (discharge bank [9,9,36,17,17,36] (hard := []) (by decide +kernel) .nil)

theorem f453 : BadRow (Grammar43.fourRow ⟨0,3,0,3,5,3⟩ [0,0,0] [0,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f454 : BadRow (Grammar43.fourRow ⟨0,3,0,3,5,3⟩ [0,0,0] [0,0,0,1,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,6,6,6,6,6,6,6,6,6,6,6,6,6,6,15,15,15,15,15,84] (hard := []) (by decide +kernel) .nil)

theorem f455 : BadRow (Grammar43.fourRow ⟨0,3,0,3,5,3⟩ [0,0,0] [0,0,0,2,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,6,6,6,6,6,6,6,6,6,6,6,6,6,6,15,15,15,15,15,85] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
