import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2208 : BadRow (Grammar43.fourRow ⟨1,2,2,4,4,5⟩ [1,1] [3,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2209 : BadRow (Grammar43.fourRow ⟨1,2,2,4,4,5⟩ [1,1] [3,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2210 : BadRow (Grammar43.fourRow ⟨1,2,2,4,4,5⟩ [1,1] [4,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2211 : BadRow (Grammar43.fourRow ⟨1,2,2,4,4,5⟩ [1,1] [4,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2212 : BadRow (Grammar43.fourRow ⟨1,2,2,4,4,5⟩ [1,1] [4,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2213 : BadRow (Grammar43.fourRow ⟨1,2,0,4,5,3⟩ [0,0] [0,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2214 : BadRow (Grammar43.fourRow ⟨1,2,0,4,5,3⟩ [0,0] [0,0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2215 : BadRow (Grammar43.fourRow ⟨1,2,0,4,5,3⟩ [0,0] [0,0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2216 : BadRow (Grammar43.fourRow ⟨1,2,0,4,5,3⟩ [0,0] [0,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2217 : BadRow (Grammar43.fourRow ⟨1,2,0,4,5,3⟩ [0,0] [0,0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2218 : BadRow (Grammar43.fourRow ⟨1,2,0,4,5,3⟩ [0,0] [0,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2219 : BadRow (Grammar43.fourRow ⟨1,2,0,4,5,3⟩ [0,0] [0,0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
