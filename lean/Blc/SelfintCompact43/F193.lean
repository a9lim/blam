import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2316 : BadRow (Grammar43.fourRow ⟨1,2,0,5,4,5⟩ [0,0] [3,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2317 : BadRow (Grammar43.fourRow ⟨1,2,0,5,4,5⟩ [0,0] [3,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2318 : BadRow (Grammar43.fourRow ⟨1,2,0,5,4,5⟩ [0,0] [3,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2319 : BadRow (Grammar43.fourRow ⟨1,2,0,5,4,5⟩ [0,0] [3,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2320 : BadRow (Grammar43.fourRow ⟨1,2,0,5,4,5⟩ [0,0] [4,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2321 : BadRow (Grammar43.fourRow ⟨1,2,0,5,4,5⟩ [0,0] [4,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2322 : BadRow (Grammar43.fourRow ⟨1,2,0,5,4,5⟩ [0,0] [4,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2323 : BadRow (Grammar43.fourRow ⟨1,2,0,5,4,5⟩ [0,0] [5,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2324 : BadRow (Grammar43.fourRow ⟨1,2,1,5,4,4⟩ [0,1] [0,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2325 : BadRow (Grammar43.fourRow ⟨1,2,1,5,4,4⟩ [0,1] [0,0,1,3]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f2326 : BadRow (Grammar43.fourRow ⟨1,2,1,5,4,4⟩ [0,1] [0,0,2,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f2327 : BadRow (Grammar43.fourRow ⟨1,2,1,5,4,4⟩ [0,1] [0,0,3,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
