import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2376 : BadRow (Grammar43.fourRow ⟨1,2,1,5,4,4⟩ [1,0] [1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2377 : BadRow (Grammar43.fourRow ⟨1,2,1,5,4,4⟩ [1,0] [1,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2378 : BadRow (Grammar43.fourRow ⟨1,2,1,5,4,4⟩ [1,0] [1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2379 : BadRow (Grammar43.fourRow ⟨1,2,1,5,4,4⟩ [1,0] [1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2380 : BadRow (Grammar43.fourRow ⟨1,2,1,5,4,4⟩ [1,0] [1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2381 : BadRow (Grammar43.fourRow ⟨1,2,1,5,4,4⟩ [1,0] [1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2382 : BadRow (Grammar43.fourRow ⟨1,2,1,5,4,4⟩ [1,0] [1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2383 : BadRow (Grammar43.fourRow ⟨1,2,1,5,4,4⟩ [1,0] [1,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2384 : BadRow (Grammar43.fourRow ⟨1,2,1,5,4,4⟩ [1,0] [2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2385 : BadRow (Grammar43.fourRow ⟨1,2,1,5,4,4⟩ [1,0] [2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2386 : BadRow (Grammar43.fourRow ⟨1,2,1,5,4,4⟩ [1,0] [2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2387 : BadRow (Grammar43.fourRow ⟨1,2,1,5,4,4⟩ [1,0] [2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
