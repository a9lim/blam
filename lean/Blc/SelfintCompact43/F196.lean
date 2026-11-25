import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2352 : BadRow (Grammar43.fourRow ⟨1,2,1,5,4,4⟩ [0,1] [2,1,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f2353 : BadRow (Grammar43.fourRow ⟨1,2,1,5,4,4⟩ [0,1] [2,1,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f2354 : BadRow (Grammar43.fourRow ⟨1,2,1,5,4,4⟩ [0,1] [2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2355 : BadRow (Grammar43.fourRow ⟨1,2,1,5,4,4⟩ [0,1] [3,0,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f2356 : BadRow (Grammar43.fourRow ⟨1,2,1,5,4,4⟩ [0,1] [3,0,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f2357 : BadRow (Grammar43.fourRow ⟨1,2,1,5,4,4⟩ [0,1] [3,1,0,0]) :=
  row_of_forall (discharge bank [2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f2358 : BadRow (Grammar43.fourRow ⟨1,2,1,5,4,4⟩ [0,1] [4,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2359 : BadRow (Grammar43.fourRow ⟨1,2,1,5,4,4⟩ [1,0] [0,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2360 : BadRow (Grammar43.fourRow ⟨1,2,1,5,4,4⟩ [1,0] [0,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2361 : BadRow (Grammar43.fourRow ⟨1,2,1,5,4,4⟩ [1,0] [0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2362 : BadRow (Grammar43.fourRow ⟨1,2,1,5,4,4⟩ [1,0] [0,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2363 : BadRow (Grammar43.fourRow ⟨1,2,1,5,4,4⟩ [1,0] [0,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
