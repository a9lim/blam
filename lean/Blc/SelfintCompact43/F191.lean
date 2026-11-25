import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2292 : BadRow (Grammar43.fourRow ⟨1,2,0,5,4,5⟩ [0,0] [1,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2293 : BadRow (Grammar43.fourRow ⟨1,2,0,5,4,5⟩ [0,0] [1,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2294 : BadRow (Grammar43.fourRow ⟨1,2,0,5,4,5⟩ [0,0] [1,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2295 : BadRow (Grammar43.fourRow ⟨1,2,0,5,4,5⟩ [0,0] [1,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2296 : BadRow (Grammar43.fourRow ⟨1,2,0,5,4,5⟩ [0,0] [1,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2297 : BadRow (Grammar43.fourRow ⟨1,2,0,5,4,5⟩ [0,0] [1,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2298 : BadRow (Grammar43.fourRow ⟨1,2,0,5,4,5⟩ [0,0] [1,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2299 : BadRow (Grammar43.fourRow ⟨1,2,0,5,4,5⟩ [0,0] [1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2300 : BadRow (Grammar43.fourRow ⟨1,2,0,5,4,5⟩ [0,0] [1,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2301 : BadRow (Grammar43.fourRow ⟨1,2,0,5,4,5⟩ [0,0] [1,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2302 : BadRow (Grammar43.fourRow ⟨1,2,0,5,4,5⟩ [0,0] [1,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2303 : BadRow (Grammar43.fourRow ⟨1,2,0,5,4,5⟩ [0,0] [1,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
