import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2364 : BadRow (Grammar43.fourRow ⟨1,2,1,5,4,4⟩ [1,0] [0,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2365 : BadRow (Grammar43.fourRow ⟨1,2,1,5,4,4⟩ [1,0] [0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2366 : BadRow (Grammar43.fourRow ⟨1,2,1,5,4,4⟩ [1,0] [0,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2367 : BadRow (Grammar43.fourRow ⟨1,2,1,5,4,4⟩ [1,0] [0,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2368 : BadRow (Grammar43.fourRow ⟨1,2,1,5,4,4⟩ [1,0] [0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2369 : BadRow (Grammar43.fourRow ⟨1,2,1,5,4,4⟩ [1,0] [0,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2370 : BadRow (Grammar43.fourRow ⟨1,2,1,5,4,4⟩ [1,0] [0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2371 : BadRow (Grammar43.fourRow ⟨1,2,1,5,4,4⟩ [1,0] [0,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2372 : BadRow (Grammar43.fourRow ⟨1,2,1,5,4,4⟩ [1,0] [0,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2373 : BadRow (Grammar43.fourRow ⟨1,2,1,5,4,4⟩ [1,0] [0,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2374 : BadRow (Grammar43.fourRow ⟨1,2,1,5,4,4⟩ [1,0] [1,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2375 : BadRow (Grammar43.fourRow ⟨1,2,1,5,4,4⟩ [1,0] [1,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
