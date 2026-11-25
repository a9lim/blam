import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2198 : BadRow (markedRow ⟨2,2,0,4,4,4⟩ [0,0] [2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2199 : BadRow (markedRow ⟨2,2,0,4,4,4⟩ [0,0] [2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2200 : BadRow (markedRow ⟨2,2,0,4,4,4⟩ [0,0] [2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2201 : BadRow (markedRow ⟨2,2,0,4,4,4⟩ [0,0] [3,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2202 : BadRow (markedRow ⟨2,2,0,4,4,4⟩ [0,0] [3,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2203 : BadRow (markedRow ⟨2,2,0,4,4,4⟩ [0,0] [3,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2204 : BadRow (markedRow ⟨2,2,0,4,4,4⟩ [0,0] [4,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2205 : BadRow (markedRow ⟨2,2,1,4,4,3⟩ [0,1] [0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2206 : BadRow (markedRow ⟨2,2,1,4,4,3⟩ [0,1] [0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2207 : BadRow (markedRow ⟨2,2,1,4,4,3⟩ [0,1] [0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2208 : BadRow (markedRow ⟨2,2,1,4,4,3⟩ [0,1] [0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2209 : BadRow (markedRow ⟨2,2,1,4,4,3⟩ [0,1] [0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2210 : BadRow (markedRow ⟨2,2,1,4,4,3⟩ [0,1] [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2211 : BadRow (markedRow ⟨2,2,1,4,4,3⟩ [0,1] [0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
