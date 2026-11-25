import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2388 : BadRow (Grammar43.fourRow ⟨1,2,1,5,4,4⟩ [1,0] [2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2389 : BadRow (Grammar43.fourRow ⟨1,2,1,5,4,4⟩ [1,0] [2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2390 : BadRow (Grammar43.fourRow ⟨1,2,1,5,4,4⟩ [1,0] [3,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2391 : BadRow (Grammar43.fourRow ⟨1,2,1,5,4,4⟩ [1,0] [3,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2392 : BadRow (Grammar43.fourRow ⟨1,2,1,5,4,4⟩ [1,0] [3,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2393 : BadRow (Grammar43.fourRow ⟨1,2,1,5,4,4⟩ [1,0] [4,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2394 : BadRow (Grammar43.fourRow ⟨1,2,2,5,4,3⟩ [1,1] [0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2395 : BadRow (Grammar43.fourRow ⟨1,2,2,5,4,3⟩ [1,1] [0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2396 : BadRow (Grammar43.fourRow ⟨1,2,2,5,4,3⟩ [1,1] [0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2397 : BadRow (Grammar43.fourRow ⟨1,2,2,5,4,3⟩ [1,1] [0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2398 : BadRow (Grammar43.fourRow ⟨1,2,2,5,4,3⟩ [1,1] [0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2399 : BadRow (Grammar43.fourRow ⟨1,2,2,5,4,3⟩ [1,1] [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
