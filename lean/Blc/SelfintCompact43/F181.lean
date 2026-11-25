import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2172 : BadRow (Grammar43.fourRow ⟨1,2,2,4,4,5⟩ [1,1] [0,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2173 : BadRow (Grammar43.fourRow ⟨1,2,2,4,4,5⟩ [1,1] [0,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2174 : BadRow (Grammar43.fourRow ⟨1,2,2,4,4,5⟩ [1,1] [0,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2175 : BadRow (Grammar43.fourRow ⟨1,2,2,4,4,5⟩ [1,1] [0,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2176 : BadRow (Grammar43.fourRow ⟨1,2,2,4,4,5⟩ [1,1] [0,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2177 : BadRow (Grammar43.fourRow ⟨1,2,2,4,4,5⟩ [1,1] [0,4,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2178 : BadRow (Grammar43.fourRow ⟨1,2,2,4,4,5⟩ [1,1] [0,4,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2179 : BadRow (Grammar43.fourRow ⟨1,2,2,4,4,5⟩ [1,1] [1,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2180 : BadRow (Grammar43.fourRow ⟨1,2,2,4,4,5⟩ [1,1] [1,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2181 : BadRow (Grammar43.fourRow ⟨1,2,2,4,4,5⟩ [1,1] [1,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2182 : BadRow (Grammar43.fourRow ⟨1,2,2,4,4,5⟩ [1,1] [1,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2183 : BadRow (Grammar43.fourRow ⟨1,2,2,4,4,5⟩ [1,1] [1,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
