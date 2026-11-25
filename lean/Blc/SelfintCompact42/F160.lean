import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2240 : BadRow (markedRow ⟨2,2,1,4,4,3⟩ [1,0] [1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2241 : BadRow (markedRow ⟨2,2,1,4,4,3⟩ [1,0] [2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2242 : BadRow (markedRow ⟨2,2,1,4,4,3⟩ [1,0] [2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2243 : BadRow (markedRow ⟨2,2,1,4,4,3⟩ [1,0] [2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2244 : BadRow (markedRow ⟨2,2,1,4,4,3⟩ [1,0] [3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2245 : BadRow (markedRow ⟨3,2,0,2,4,6⟩ [0,0] [0,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2246 : BadRow (markedRow ⟨3,2,0,2,4,6⟩ [0,0] [1,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2247 : BadRow (markedRow ⟨3,2,0,2,4,6⟩ [0,0] [1,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2248 : BadRow (markedRow ⟨3,2,0,2,4,6⟩ [0,0] [1,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2249 : BadRow (markedRow ⟨3,2,0,2,4,6⟩ [0,0] [2,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2250 : BadRow (markedRow ⟨3,2,0,2,4,6⟩ [0,0] [2,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2251 : BadRow (markedRow ⟨3,2,0,2,4,6⟩ [0,0] [2,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2252 : BadRow (markedRow ⟨3,2,0,2,4,6⟩ [0,0] [2,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2253 : BadRow (markedRow ⟨3,2,0,2,4,6⟩ [0,0] [2,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
