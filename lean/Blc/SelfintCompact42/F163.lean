import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2282 : BadRow (markedRow ⟨3,2,1,2,4,5⟩ [1,0] [2,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2283 : BadRow (markedRow ⟨3,2,1,2,4,5⟩ [1,0] [2,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2284 : BadRow (markedRow ⟨3,2,1,2,4,5⟩ [1,0] [2,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2285 : BadRow (markedRow ⟨3,2,1,2,4,5⟩ [1,0] [2,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2286 : BadRow (markedRow ⟨3,2,1,2,4,5⟩ [1,0] [2,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2287 : BadRow (markedRow ⟨3,2,2,2,4,4⟩ [0,2] [0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2288 : BadRow (markedRow ⟨3,2,2,2,4,4⟩ [0,2] [0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2289 : BadRow (markedRow ⟨3,2,2,2,4,4⟩ [0,2] [0,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2290 : BadRow (markedRow ⟨3,2,2,2,4,4⟩ [0,2] [0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2291 : BadRow (markedRow ⟨3,2,2,2,4,4⟩ [0,2] [0,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2292 : BadRow (markedRow ⟨3,2,2,2,4,4⟩ [0,2] [0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2293 : BadRow (markedRow ⟨3,2,2,2,4,4⟩ [0,2] [1,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2294 : BadRow (markedRow ⟨3,2,2,2,4,4⟩ [0,2] [1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2295 : BadRow (markedRow ⟨3,2,2,2,4,4⟩ [0,2] [1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
