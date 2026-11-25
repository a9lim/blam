import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2184 : BadRow (markedRow ⟨2,2,0,4,4,4⟩ [0,0] [0,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2185 : BadRow (markedRow ⟨2,2,0,4,4,4⟩ [0,0] [1,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2186 : BadRow (markedRow ⟨2,2,0,4,4,4⟩ [0,0] [1,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2187 : BadRow (markedRow ⟨2,2,0,4,4,4⟩ [0,0] [1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2188 : BadRow (markedRow ⟨2,2,0,4,4,4⟩ [0,0] [1,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2189 : BadRow (markedRow ⟨2,2,0,4,4,4⟩ [0,0] [1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2190 : BadRow (markedRow ⟨2,2,0,4,4,4⟩ [0,0] [1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2191 : BadRow (markedRow ⟨2,2,0,4,4,4⟩ [0,0] [1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2192 : BadRow (markedRow ⟨2,2,0,4,4,4⟩ [0,0] [1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2193 : BadRow (markedRow ⟨2,2,0,4,4,4⟩ [0,0] [1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2194 : BadRow (markedRow ⟨2,2,0,4,4,4⟩ [0,0] [1,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2195 : BadRow (markedRow ⟨2,2,0,4,4,4⟩ [0,0] [2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2196 : BadRow (markedRow ⟨2,2,0,4,4,4⟩ [0,0] [2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2197 : BadRow (markedRow ⟨2,2,0,4,4,4⟩ [0,0] [2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
