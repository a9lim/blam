import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2254 : BadRow (markedRow ⟨3,2,0,2,4,6⟩ [0,0] [2,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2255 : BadRow (markedRow ⟨3,2,1,2,4,5⟩ [0,1] [0,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2256 : BadRow (markedRow ⟨3,2,1,2,4,5⟩ [0,1] [0,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2257 : BadRow (markedRow ⟨3,2,1,2,4,5⟩ [0,1] [0,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2258 : BadRow (markedRow ⟨3,2,1,2,4,5⟩ [0,1] [1,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2259 : BadRow (markedRow ⟨3,2,1,2,4,5⟩ [0,1] [1,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2260 : BadRow (markedRow ⟨3,2,1,2,4,5⟩ [0,1] [1,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2261 : BadRow (markedRow ⟨3,2,1,2,4,5⟩ [0,1] [1,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2262 : BadRow (markedRow ⟨3,2,1,2,4,5⟩ [0,1] [1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2263 : BadRow (markedRow ⟨3,2,1,2,4,5⟩ [0,1] [1,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2264 : BadRow (markedRow ⟨3,2,1,2,4,5⟩ [0,1] [2,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2265 : BadRow (markedRow ⟨3,2,1,2,4,5⟩ [0,1] [2,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2266 : BadRow (markedRow ⟨3,2,1,2,4,5⟩ [0,1] [2,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2267 : BadRow (markedRow ⟨3,2,1,2,4,5⟩ [0,1] [2,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
