import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f336 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [3,0,3,0,1]) :=
  row_of_forall (discharge bank [1,1,1,1,1,15,15,1,15,1,1,15,1,15] (hard := []) (by decide +kernel) .nil)

theorem f337 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [3,0,3,1,0]) :=
  row_of_forall (discharge bank [1,1,1,1,1,15,15,1,15,1,1,15,1,15] (hard := []) (by decide +kernel) .nil)

theorem f338 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [3,1,0,0,3]) :=
  row_of_forall (discharge bank [1,1,1,1,1,15,15,7,17,7,7,17,17,1] (hard := []) (by decide +kernel) .nil)

theorem f339 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [3,1,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f340 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [3,1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f341 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [3,1,0,3,0]) :=
  row_of_forall (discharge bank [1,1,1,1,1,15,15,7,17,1,1,15,7,17] (hard := []) (by decide +kernel) .nil)

theorem f342 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [3,1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f343 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [3,1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f344 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [3,1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f345 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [3,1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f346 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [3,1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f347 : BadRow (Grammar43.fourRow ⟨0,2,0,3,5,7⟩ [0,0] [3,1,3,0,0]) :=
  row_of_forall (discharge bank [1,1,1,1,1,15,15,1,1,15] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
