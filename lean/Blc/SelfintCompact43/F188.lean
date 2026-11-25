import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2256 : BadRow (Grammar43.fourRow ⟨1,3,0,4,4,3⟩ [0,0,0] [0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2257 : BadRow (Grammar43.fourRow ⟨1,3,0,4,4,3⟩ [0,0,0] [0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2258 : BadRow (Grammar43.fourRow ⟨1,3,0,4,4,3⟩ [0,0,0] [1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2259 : BadRow (Grammar43.fourRow ⟨1,3,0,4,4,3⟩ [0,0,0] [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2260 : BadRow (Grammar43.fourRow ⟨1,3,0,4,4,3⟩ [0,0,0] [1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2261 : BadRow (Grammar43.fourRow ⟨1,3,0,4,4,3⟩ [0,0,0] [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2262 : BadRow (Grammar43.fourRow ⟨1,3,0,4,4,3⟩ [0,0,0] [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2263 : BadRow (Grammar43.fourRow ⟨1,3,0,4,4,3⟩ [0,0,0] [1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2264 : BadRow (Grammar43.fourRow ⟨1,3,0,4,4,3⟩ [0,0,0] [2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2265 : BadRow (Grammar43.fourRow ⟨1,3,0,4,4,3⟩ [0,0,0] [2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2266 : BadRow (Grammar43.fourRow ⟨1,3,0,4,4,3⟩ [0,0,0] [2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2267 : BadRow (Grammar43.fourRow ⟨1,3,0,4,4,3⟩ [0,0,0] [3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
