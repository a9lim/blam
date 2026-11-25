import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2170 : BadRow (markedRow ⟨2,2,0,4,4,4⟩ [0,0] [0,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2171 : BadRow (markedRow ⟨2,2,0,4,4,4⟩ [0,0] [0,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2172 : BadRow (markedRow ⟨2,2,0,4,4,4⟩ [0,0] [0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2173 : BadRow (markedRow ⟨2,2,0,4,4,4⟩ [0,0] [0,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2174 : BadRow (markedRow ⟨2,2,0,4,4,4⟩ [0,0] [0,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2175 : BadRow (markedRow ⟨2,2,0,4,4,4⟩ [0,0] [0,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2176 : BadRow (markedRow ⟨2,2,0,4,4,4⟩ [0,0] [0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2177 : BadRow (markedRow ⟨2,2,0,4,4,4⟩ [0,0] [0,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2178 : BadRow (markedRow ⟨2,2,0,4,4,4⟩ [0,0] [0,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2179 : BadRow (markedRow ⟨2,2,0,4,4,4⟩ [0,0] [0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2180 : BadRow (markedRow ⟨2,2,0,4,4,4⟩ [0,0] [0,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2181 : BadRow (markedRow ⟨2,2,0,4,4,4⟩ [0,0] [0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2182 : BadRow (markedRow ⟨2,2,0,4,4,4⟩ [0,0] [0,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2183 : BadRow (markedRow ⟨2,2,0,4,4,4⟩ [0,0] [0,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
