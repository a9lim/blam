import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2196 : BadRow (Grammar43.fourRow ⟨1,2,2,4,4,5⟩ [1,1] [2,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2197 : BadRow (Grammar43.fourRow ⟨1,2,2,4,4,5⟩ [1,1] [2,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2198 : BadRow (Grammar43.fourRow ⟨1,2,2,4,4,5⟩ [1,1] [2,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2199 : BadRow (Grammar43.fourRow ⟨1,2,2,4,4,5⟩ [1,1] [2,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2200 : BadRow (Grammar43.fourRow ⟨1,2,2,4,4,5⟩ [1,1] [2,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2201 : BadRow (Grammar43.fourRow ⟨1,2,2,4,4,5⟩ [1,1] [2,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2202 : BadRow (Grammar43.fourRow ⟨1,2,2,4,4,5⟩ [1,1] [2,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2203 : BadRow (Grammar43.fourRow ⟨1,2,2,4,4,5⟩ [1,1] [2,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2204 : BadRow (Grammar43.fourRow ⟨1,2,2,4,4,5⟩ [1,1] [3,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2205 : BadRow (Grammar43.fourRow ⟨1,2,2,4,4,5⟩ [1,1] [3,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2206 : BadRow (Grammar43.fourRow ⟨1,2,2,4,4,5⟩ [1,1] [3,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2207 : BadRow (Grammar43.fourRow ⟨1,2,2,4,4,5⟩ [1,1] [3,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
