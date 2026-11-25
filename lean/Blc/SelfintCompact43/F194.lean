import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2328 : BadRow (Grammar43.fourRow ⟨1,2,1,5,4,4⟩ [0,1] [0,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2329 : BadRow (Grammar43.fourRow ⟨1,2,1,5,4,4⟩ [0,1] [0,1,0,3]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f2330 : BadRow (Grammar43.fourRow ⟨1,2,1,5,4,4⟩ [0,1] [0,1,1,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f2331 : BadRow (Grammar43.fourRow ⟨1,2,1,5,4,4⟩ [0,1] [0,1,2,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f2332 : BadRow (Grammar43.fourRow ⟨1,2,1,5,4,4⟩ [0,1] [0,1,3,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f2333 : BadRow (Grammar43.fourRow ⟨1,2,1,5,4,4⟩ [0,1] [0,2,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f2334 : BadRow (Grammar43.fourRow ⟨1,2,1,5,4,4⟩ [0,1] [0,2,1,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f2335 : BadRow (Grammar43.fourRow ⟨1,2,1,5,4,4⟩ [0,1] [0,2,2,0]) :=
  row_of_forall (discharge bank [2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f2336 : BadRow (Grammar43.fourRow ⟨1,2,1,5,4,4⟩ [0,1] [0,3,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f2337 : BadRow (Grammar43.fourRow ⟨1,2,1,5,4,4⟩ [0,1] [0,3,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f2338 : BadRow (Grammar43.fourRow ⟨1,2,1,5,4,4⟩ [0,1] [0,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2339 : BadRow (Grammar43.fourRow ⟨1,2,1,5,4,4⟩ [0,1] [1,0,0,3]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
