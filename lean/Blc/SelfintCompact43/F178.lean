import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2136 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [1,0] [2,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2137 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [1,0] [2,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2138 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [1,0] [2,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2139 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [1,0] [2,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2140 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [1,0] [2,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2141 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [1,0] [2,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2142 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [1,0] [2,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2143 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [1,0] [2,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2144 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [1,0] [2,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2145 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [1,0] [3,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2146 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [1,0] [3,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2147 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [1,0] [3,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
