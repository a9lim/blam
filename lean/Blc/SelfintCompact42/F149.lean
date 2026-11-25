import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2086 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [1,1] [1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2087 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [1,1] [1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2088 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [1,1] [1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2089 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [1,1] [1,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2090 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [1,1] [2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2091 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [1,1] [2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2092 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [1,1] [2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2093 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [1,1] [2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2094 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [1,1] [2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2095 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [1,1] [2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2096 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [1,1] [3,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2097 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [1,1] [3,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2098 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [1,1] [3,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2099 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [2,0] [0,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
