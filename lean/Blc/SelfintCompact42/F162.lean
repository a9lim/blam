import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2268 : BadRow (markedRow ⟨3,2,1,2,4,5⟩ [0,1] [2,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2269 : BadRow (markedRow ⟨3,2,1,2,4,5⟩ [0,1] [2,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2270 : BadRow (markedRow ⟨3,2,1,2,4,5⟩ [0,1] [2,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2271 : BadRow (markedRow ⟨3,2,1,2,4,5⟩ [1,0] [0,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2272 : BadRow (markedRow ⟨3,2,1,2,4,5⟩ [1,0] [0,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2273 : BadRow (markedRow ⟨3,2,1,2,4,5⟩ [1,0] [0,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2274 : BadRow (markedRow ⟨3,2,1,2,4,5⟩ [1,0] [1,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2275 : BadRow (markedRow ⟨3,2,1,2,4,5⟩ [1,0] [1,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2276 : BadRow (markedRow ⟨3,2,1,2,4,5⟩ [1,0] [1,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2277 : BadRow (markedRow ⟨3,2,1,2,4,5⟩ [1,0] [1,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2278 : BadRow (markedRow ⟨3,2,1,2,4,5⟩ [1,0] [1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2279 : BadRow (markedRow ⟨3,2,1,2,4,5⟩ [1,0] [1,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2280 : BadRow (markedRow ⟨3,2,1,2,4,5⟩ [1,0] [2,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2281 : BadRow (markedRow ⟨3,2,1,2,4,5⟩ [1,0] [2,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
