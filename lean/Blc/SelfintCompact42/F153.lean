import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2142 : BadRow (markedRow ⟨2,2,3,3,4,3⟩ [1,2] [1,0,2,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f2143 : BadRow (markedRow ⟨2,2,3,3,4,3⟩ [1,2] [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2144 : BadRow (markedRow ⟨2,2,3,3,4,3⟩ [1,2] [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2145 : BadRow (markedRow ⟨2,2,3,3,4,3⟩ [1,2] [1,2,0,0]) :=
  row_of_forall (discharge bank [2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f2146 : BadRow (markedRow ⟨2,2,3,3,4,3⟩ [1,2] [2,0,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f2147 : BadRow (markedRow ⟨2,2,3,3,4,3⟩ [1,2] [2,0,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f2148 : BadRow (markedRow ⟨2,2,3,3,4,3⟩ [1,2] [2,1,0,0]) :=
  row_of_forall (discharge bank [2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f2149 : BadRow (markedRow ⟨2,2,3,3,4,3⟩ [1,2] [3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2150 : BadRow (markedRow ⟨2,2,3,3,4,3⟩ [2,1] [0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2151 : BadRow (markedRow ⟨2,2,3,3,4,3⟩ [2,1] [0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2152 : BadRow (markedRow ⟨2,2,3,3,4,3⟩ [2,1] [0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2153 : BadRow (markedRow ⟨2,2,3,3,4,3⟩ [2,1] [0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2154 : BadRow (markedRow ⟨2,2,3,3,4,3⟩ [2,1] [0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2155 : BadRow (markedRow ⟨2,2,3,3,4,3⟩ [2,1] [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
