import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2226 : BadRow (markedRow ⟨2,2,1,4,4,3⟩ [1,0] [0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2227 : BadRow (markedRow ⟨2,2,1,4,4,3⟩ [1,0] [0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2228 : BadRow (markedRow ⟨2,2,1,4,4,3⟩ [1,0] [0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2229 : BadRow (markedRow ⟨2,2,1,4,4,3⟩ [1,0] [0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2230 : BadRow (markedRow ⟨2,2,1,4,4,3⟩ [1,0] [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2231 : BadRow (markedRow ⟨2,2,1,4,4,3⟩ [1,0] [0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2232 : BadRow (markedRow ⟨2,2,1,4,4,3⟩ [1,0] [0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2233 : BadRow (markedRow ⟨2,2,1,4,4,3⟩ [1,0] [0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2234 : BadRow (markedRow ⟨2,2,1,4,4,3⟩ [1,0] [0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2235 : BadRow (markedRow ⟨2,2,1,4,4,3⟩ [1,0] [1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2236 : BadRow (markedRow ⟨2,2,1,4,4,3⟩ [1,0] [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2237 : BadRow (markedRow ⟨2,2,1,4,4,3⟩ [1,0] [1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2238 : BadRow (markedRow ⟨2,2,1,4,4,3⟩ [1,0] [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2239 : BadRow (markedRow ⟨2,2,1,4,4,3⟩ [1,0] [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
