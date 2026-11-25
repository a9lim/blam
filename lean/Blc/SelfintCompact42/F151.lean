import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2114 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [2,0] [1,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2115 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [2,0] [1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2116 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [2,0] [1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2117 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [2,0] [1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2118 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [2,0] [1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2119 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [2,0] [1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2120 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [2,0] [1,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2121 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [2,0] [2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2122 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [2,0] [2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2123 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [2,0] [2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2124 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [2,0] [2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2125 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [2,0] [2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2126 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [2,0] [2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2127 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [2,0] [3,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
