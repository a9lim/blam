import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2340 : BadRow (Grammar43.fourRow ⟨1,2,1,5,4,4⟩ [0,1] [1,0,1,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f2341 : BadRow (Grammar43.fourRow ⟨1,2,1,5,4,4⟩ [0,1] [1,0,2,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f2342 : BadRow (Grammar43.fourRow ⟨1,2,1,5,4,4⟩ [0,1] [1,0,3,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f2343 : BadRow (Grammar43.fourRow ⟨1,2,1,5,4,4⟩ [0,1] [1,1,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f2344 : BadRow (Grammar43.fourRow ⟨1,2,1,5,4,4⟩ [0,1] [1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2345 : BadRow (Grammar43.fourRow ⟨1,2,1,5,4,4⟩ [0,1] [1,1,2,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f2346 : BadRow (Grammar43.fourRow ⟨1,2,1,5,4,4⟩ [0,1] [1,2,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f2347 : BadRow (Grammar43.fourRow ⟨1,2,1,5,4,4⟩ [0,1] [1,2,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f2348 : BadRow (Grammar43.fourRow ⟨1,2,1,5,4,4⟩ [0,1] [1,3,0,0]) :=
  row_of_forall (discharge bank [2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f2349 : BadRow (Grammar43.fourRow ⟨1,2,1,5,4,4⟩ [0,1] [2,0,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f2350 : BadRow (Grammar43.fourRow ⟨1,2,1,5,4,4⟩ [0,1] [2,0,1,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f2351 : BadRow (Grammar43.fourRow ⟨1,2,1,5,4,4⟩ [0,1] [2,0,2,0]) :=
  row_of_forall (discharge bank [2,2,2] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
