import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2244 : BadRow (Grammar43.fourRow ⟨1,2,0,4,5,3⟩ [0,0] [2,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2245 : BadRow (Grammar43.fourRow ⟨1,2,0,4,5,3⟩ [0,0] [2,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2246 : BadRow (Grammar43.fourRow ⟨1,2,0,4,5,3⟩ [0,0] [2,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2247 : BadRow (Grammar43.fourRow ⟨1,2,0,4,5,3⟩ [0,0] [3,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2248 : BadRow (Grammar43.fourRow ⟨1,3,0,4,4,3⟩ [0,0,0] [0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2249 : BadRow (Grammar43.fourRow ⟨1,3,0,4,4,3⟩ [0,0,0] [0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2250 : BadRow (Grammar43.fourRow ⟨1,3,0,4,4,3⟩ [0,0,0] [0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2251 : BadRow (Grammar43.fourRow ⟨1,3,0,4,4,3⟩ [0,0,0] [0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2252 : BadRow (Grammar43.fourRow ⟨1,3,0,4,4,3⟩ [0,0,0] [0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2253 : BadRow (Grammar43.fourRow ⟨1,3,0,4,4,3⟩ [0,0,0] [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2254 : BadRow (Grammar43.fourRow ⟨1,3,0,4,4,3⟩ [0,0,0] [0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2255 : BadRow (Grammar43.fourRow ⟨1,3,0,4,4,3⟩ [0,0,0] [0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
