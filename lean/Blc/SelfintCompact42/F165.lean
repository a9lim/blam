import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2310 : BadRow (markedRow ⟨3,2,2,2,4,4⟩ [1,1] [0,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2311 : BadRow (markedRow ⟨3,2,2,2,4,4⟩ [1,1] [0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2312 : BadRow (markedRow ⟨3,2,2,2,4,4⟩ [1,1] [1,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2313 : BadRow (markedRow ⟨3,2,2,2,4,4⟩ [1,1] [1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2314 : BadRow (markedRow ⟨3,2,2,2,4,4⟩ [1,1] [1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2315 : BadRow (markedRow ⟨3,2,2,2,4,4⟩ [1,1] [1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2316 : BadRow (markedRow ⟨3,2,2,2,4,4⟩ [1,1] [1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2317 : BadRow (markedRow ⟨3,2,2,2,4,4⟩ [1,1] [1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2318 : BadRow (markedRow ⟨3,2,2,2,4,4⟩ [1,1] [1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2319 : BadRow (markedRow ⟨3,2,2,2,4,4⟩ [1,1] [2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2320 : BadRow (markedRow ⟨3,2,2,2,4,4⟩ [1,1] [2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2321 : BadRow (markedRow ⟨3,2,2,2,4,4⟩ [1,1] [2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2322 : BadRow (markedRow ⟨3,2,2,2,4,4⟩ [1,1] [2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2323 : BadRow (markedRow ⟨3,2,2,2,4,4⟩ [1,1] [2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
