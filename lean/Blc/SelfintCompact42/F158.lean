import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2212 : BadRow (markedRow ⟨2,2,1,4,4,3⟩ [0,1] [0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2213 : BadRow (markedRow ⟨2,2,1,4,4,3⟩ [0,1] [0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2214 : BadRow (markedRow ⟨2,2,1,4,4,3⟩ [0,1] [0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2215 : BadRow (markedRow ⟨2,2,1,4,4,3⟩ [0,1] [1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2216 : BadRow (markedRow ⟨2,2,1,4,4,3⟩ [0,1] [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2217 : BadRow (markedRow ⟨2,2,1,4,4,3⟩ [0,1] [1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2218 : BadRow (markedRow ⟨2,2,1,4,4,3⟩ [0,1] [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2219 : BadRow (markedRow ⟨2,2,1,4,4,3⟩ [0,1] [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2220 : BadRow (markedRow ⟨2,2,1,4,4,3⟩ [0,1] [1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2221 : BadRow (markedRow ⟨2,2,1,4,4,3⟩ [0,1] [2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2222 : BadRow (markedRow ⟨2,2,1,4,4,3⟩ [0,1] [2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2223 : BadRow (markedRow ⟨2,2,1,4,4,3⟩ [0,1] [2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2224 : BadRow (markedRow ⟨2,2,1,4,4,3⟩ [0,1] [3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2225 : BadRow (markedRow ⟨2,2,1,4,4,3⟩ [1,0] [0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
