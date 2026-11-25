import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f492 : BadRow (Grammar43.fourRow ⟨0,4,0,3,4,3⟩ [0,0,0,0] [0,1,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,28,28,28,28,28,28,28,14,14,5,5,5,5,5,5,5,15,15,27,38,1,1,1,18,18,8,8] (hard := []) (by decide +kernel) .nil)

theorem f493 : BadRow (Grammar43.fourRow ⟨0,4,0,3,4,3⟩ [0,0,0,0] [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f494 : BadRow (Grammar43.fourRow ⟨0,4,0,3,4,3⟩ [0,0,0,0] [0,1,2,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,28,28,28,28,14,5,5,5,5,15,27,1,1,18,8] (hard := []) (by decide +kernel) .nil)

theorem f495 : BadRow (Grammar43.fourRow ⟨0,4,0,3,4,3⟩ [0,0,0,0] [0,2,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,28,28,28,28,28,28,28,14,14,5,5,5,5,5,5,5,15,15,27,38,1,1,1,18,18,8,8] (hard := []) (by decide +kernel) .nil)

theorem f496 : BadRow (Grammar43.fourRow ⟨0,4,0,3,4,3⟩ [0,0,0,0] [0,2,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,28,28,28,28,47,5,5,5,5,15,27,1,1,18,8] (hard := []) (by decide +kernel) .nil)

theorem f497 : BadRow (Grammar43.fourRow ⟨0,4,0,3,4,3⟩ [0,0,0,0] [0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f498 : BadRow (Grammar43.fourRow ⟨0,4,0,3,4,3⟩ [0,0,0,0] [1,0,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,28,28,28,28,28,5,5,5,5,5,18,18,9,9,34] (hard := []) (by decide +kernel) .nil)

theorem f499 : BadRow (Grammar43.fourRow ⟨0,4,0,3,4,3⟩ [0,0,0,0] [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f500 : BadRow (Grammar43.fourRow ⟨0,4,0,3,4,3⟩ [0,0,0,0] [1,0,2,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,28,28,28,28,28,5,5,5,5,5,18,18,9,18,9] (hard := []) (by decide +kernel) .nil)

theorem f501 : BadRow (Grammar43.fourRow ⟨0,4,0,3,4,3⟩ [0,0,0,0] [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f502 : BadRow (Grammar43.fourRow ⟨0,4,0,3,4,3⟩ [0,0,0,0] [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f503 : BadRow (Grammar43.fourRow ⟨0,4,0,3,4,3⟩ [0,0,0,0] [1,2,0,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,28,28,28,5,5,5,18,18,18] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
