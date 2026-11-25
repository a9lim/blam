import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2296 : BadRow (markedRow ⟨3,2,2,2,4,4⟩ [0,2] [1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2297 : BadRow (markedRow ⟨3,2,2,2,4,4⟩ [0,2] [1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2298 : BadRow (markedRow ⟨3,2,2,2,4,4⟩ [0,2] [1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2299 : BadRow (markedRow ⟨3,2,2,2,4,4⟩ [0,2] [1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2300 : BadRow (markedRow ⟨3,2,2,2,4,4⟩ [0,2] [2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2301 : BadRow (markedRow ⟨3,2,2,2,4,4⟩ [0,2] [2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2302 : BadRow (markedRow ⟨3,2,2,2,4,4⟩ [0,2] [2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2303 : BadRow (markedRow ⟨3,2,2,2,4,4⟩ [0,2] [2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2304 : BadRow (markedRow ⟨3,2,2,2,4,4⟩ [0,2] [2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2305 : BadRow (markedRow ⟨3,2,2,2,4,4⟩ [0,2] [2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2306 : BadRow (markedRow ⟨3,2,2,2,4,4⟩ [1,1] [0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2307 : BadRow (markedRow ⟨3,2,2,2,4,4⟩ [1,1] [0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2308 : BadRow (markedRow ⟨3,2,2,2,4,4⟩ [1,1] [0,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2309 : BadRow (markedRow ⟨3,2,2,2,4,4⟩ [1,1] [0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
