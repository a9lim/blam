import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2184 : BadRow (Grammar43.fourRow ⟨1,2,2,4,4,5⟩ [1,1] [1,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2185 : BadRow (Grammar43.fourRow ⟨1,2,2,4,4,5⟩ [1,1] [1,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2186 : BadRow (Grammar43.fourRow ⟨1,2,2,4,4,5⟩ [1,1] [1,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2187 : BadRow (Grammar43.fourRow ⟨1,2,2,4,4,5⟩ [1,1] [1,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2188 : BadRow (Grammar43.fourRow ⟨1,2,2,4,4,5⟩ [1,1] [1,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2189 : BadRow (Grammar43.fourRow ⟨1,2,2,4,4,5⟩ [1,1] [1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2190 : BadRow (Grammar43.fourRow ⟨1,2,2,4,4,5⟩ [1,1] [1,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2191 : BadRow (Grammar43.fourRow ⟨1,2,2,4,4,5⟩ [1,1] [1,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2192 : BadRow (Grammar43.fourRow ⟨1,2,2,4,4,5⟩ [1,1] [1,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2193 : BadRow (Grammar43.fourRow ⟨1,2,2,4,4,5⟩ [1,1] [1,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2194 : BadRow (Grammar43.fourRow ⟨1,2,2,4,4,5⟩ [1,1] [2,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2195 : BadRow (Grammar43.fourRow ⟨1,2,2,4,4,5⟩ [1,1] [2,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
