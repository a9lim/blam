import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2128 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [2,0] [3,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2129 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [2,0] [3,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2130 : BadRow (markedRow ⟨2,2,3,3,4,3⟩ [1,2] [0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2131 : BadRow (markedRow ⟨2,2,3,3,4,3⟩ [1,2] [0,0,1,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f2132 : BadRow (markedRow ⟨2,2,3,3,4,3⟩ [1,2] [0,0,2,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f2133 : BadRow (markedRow ⟨2,2,3,3,4,3⟩ [1,2] [0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2134 : BadRow (markedRow ⟨2,2,3,3,4,3⟩ [1,2] [0,1,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f2135 : BadRow (markedRow ⟨2,2,3,3,4,3⟩ [1,2] [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2136 : BadRow (markedRow ⟨2,2,3,3,4,3⟩ [1,2] [0,1,2,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f2137 : BadRow (markedRow ⟨2,2,3,3,4,3⟩ [1,2] [0,2,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f2138 : BadRow (markedRow ⟨2,2,3,3,4,3⟩ [1,2] [0,2,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f2139 : BadRow (markedRow ⟨2,2,3,3,4,3⟩ [1,2] [0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2140 : BadRow (markedRow ⟨2,2,3,3,4,3⟩ [1,2] [1,0,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f2141 : BadRow (markedRow ⟨2,2,3,3,4,3⟩ [1,2] [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
