import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2280 : BadRow (Grammar43.fourRow ⟨1,2,0,5,4,5⟩ [0,0] [0,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2281 : BadRow (Grammar43.fourRow ⟨1,2,0,5,4,5⟩ [0,0] [0,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2282 : BadRow (Grammar43.fourRow ⟨1,2,0,5,4,5⟩ [0,0] [0,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2283 : BadRow (Grammar43.fourRow ⟨1,2,0,5,4,5⟩ [0,0] [0,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2284 : BadRow (Grammar43.fourRow ⟨1,2,0,5,4,5⟩ [0,0] [0,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2285 : BadRow (Grammar43.fourRow ⟨1,2,0,5,4,5⟩ [0,0] [0,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2286 : BadRow (Grammar43.fourRow ⟨1,2,0,5,4,5⟩ [0,0] [0,4,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2287 : BadRow (Grammar43.fourRow ⟨1,2,0,5,4,5⟩ [0,0] [0,4,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2288 : BadRow (Grammar43.fourRow ⟨1,2,0,5,4,5⟩ [0,0] [0,5,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2289 : BadRow (Grammar43.fourRow ⟨1,2,0,5,4,5⟩ [0,0] [1,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2290 : BadRow (Grammar43.fourRow ⟨1,2,0,5,4,5⟩ [0,0] [1,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2291 : BadRow (Grammar43.fourRow ⟨1,2,0,5,4,5⟩ [0,0] [1,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
