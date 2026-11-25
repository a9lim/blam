import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2058 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [0,2] [1,3,0,0]) :=
  row_of_forall (discharge bank [9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f2059 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [0,2] [2,0,0,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f2060 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [0,2] [2,0,1,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f2061 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [0,2] [2,0,2,0]) :=
  row_of_forall (discharge bank [9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f2062 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [0,2] [2,1,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f2063 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [0,2] [2,1,1,0]) :=
  row_of_forall (discharge bank [2,2,2,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f2064 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [0,2] [2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2065 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [0,2] [3,0,0,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f2066 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [0,2] [3,0,1,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f2067 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [0,2] [3,1,0,0]) :=
  row_of_forall (discharge bank [9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f2068 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [1,1] [0,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2069 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [1,1] [0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2070 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [1,1] [0,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2071 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [1,1] [0,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
