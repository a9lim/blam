import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2232 : BadRow (Grammar43.fourRow ⟨1,2,0,4,5,3⟩ [0,0] [0,3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2233 : BadRow (Grammar43.fourRow ⟨1,2,0,4,5,3⟩ [0,0] [1,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2234 : BadRow (Grammar43.fourRow ⟨1,2,0,4,5,3⟩ [0,0] [1,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2235 : BadRow (Grammar43.fourRow ⟨1,2,0,4,5,3⟩ [0,0] [1,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2236 : BadRow (Grammar43.fourRow ⟨1,2,0,4,5,3⟩ [0,0] [1,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2237 : BadRow (Grammar43.fourRow ⟨1,2,0,4,5,3⟩ [0,0] [1,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2238 : BadRow (Grammar43.fourRow ⟨1,2,0,4,5,3⟩ [0,0] [1,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2239 : BadRow (Grammar43.fourRow ⟨1,2,0,4,5,3⟩ [0,0] [1,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2240 : BadRow (Grammar43.fourRow ⟨1,2,0,4,5,3⟩ [0,0] [1,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2241 : BadRow (Grammar43.fourRow ⟨1,2,0,4,5,3⟩ [0,0] [1,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2242 : BadRow (Grammar43.fourRow ⟨1,2,0,4,5,3⟩ [0,0] [1,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2243 : BadRow (Grammar43.fourRow ⟨1,2,0,4,5,3⟩ [0,0] [2,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
