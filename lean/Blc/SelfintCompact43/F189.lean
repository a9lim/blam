import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2268 : BadRow (Grammar43.fourRow ⟨1,2,0,5,4,5⟩ [0,0] [0,0,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2269 : BadRow (Grammar43.fourRow ⟨1,2,0,5,4,5⟩ [0,0] [0,0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2270 : BadRow (Grammar43.fourRow ⟨1,2,0,5,4,5⟩ [0,0] [0,0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2271 : BadRow (Grammar43.fourRow ⟨1,2,0,5,4,5⟩ [0,0] [0,0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2272 : BadRow (Grammar43.fourRow ⟨1,2,0,5,4,5⟩ [0,0] [0,0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2273 : BadRow (Grammar43.fourRow ⟨1,2,0,5,4,5⟩ [0,0] [0,0,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2274 : BadRow (Grammar43.fourRow ⟨1,2,0,5,4,5⟩ [0,0] [0,1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2275 : BadRow (Grammar43.fourRow ⟨1,2,0,5,4,5⟩ [0,0] [0,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2276 : BadRow (Grammar43.fourRow ⟨1,2,0,5,4,5⟩ [0,0] [0,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2277 : BadRow (Grammar43.fourRow ⟨1,2,0,5,4,5⟩ [0,0] [0,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2278 : BadRow (Grammar43.fourRow ⟨1,2,0,5,4,5⟩ [0,0] [0,1,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2279 : BadRow (Grammar43.fourRow ⟨1,2,0,5,4,5⟩ [0,0] [0,2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
