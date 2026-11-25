import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f324 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [2,3,1,1,0]) :=
  row_of_forall (discharge bank [1,1,8,17,17,17,9,9] (hard := []) (by decide +kernel) .nil)

theorem f325 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [2,3,2,0,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f326 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [3,0,0,1,3]) :=
  row_of_forall (discharge bank [1,1,1,1,1,15,15,7,17,7,7,17,17,1] (hard := []) (by decide +kernel) .nil)

theorem f327 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [3,0,0,2,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f328 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [3,0,0,3,1]) :=
  row_of_forall (discharge bank [1,1,1,1,1,15,15,7,17,1,1,15,7,17] (hard := []) (by decide +kernel) .nil)

theorem f329 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [3,0,1,0,3]) :=
  row_of_forall (discharge bank [1,1,1,1,1,15,15,7,17,7,7,17,17,1] (hard := []) (by decide +kernel) .nil)

theorem f330 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [3,0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f331 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [3,0,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f332 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [3,0,1,3,0]) :=
  row_of_forall (discharge bank [1,1,1,1,1,15,15,7,17,1,1,15,7,17] (hard := []) (by decide +kernel) .nil)

theorem f333 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [3,0,2,0,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f334 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [3,0,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f335 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [3,0,2,2,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
