import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2100 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [2,0] [0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2101 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [2,0] [0,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2102 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [2,0] [0,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2103 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [2,0] [0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2104 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [2,0] [0,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2105 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [2,0] [0,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2106 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [2,0] [0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2107 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [2,0] [0,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2108 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [2,0] [0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2109 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [2,0] [0,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2110 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [2,0] [0,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2111 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [2,0] [1,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2112 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [2,0] [1,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2113 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [2,0] [1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
