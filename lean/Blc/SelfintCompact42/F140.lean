import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1960 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [0,1] [0,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1961 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [0,1] [0,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1962 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [0,1] [0,2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1963 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [0,1] [0,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1964 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [0,1] [0,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1965 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [0,1] [0,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1966 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [0,1] [0,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1967 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [0,1] [0,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1968 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [0,1] [0,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1969 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [0,1] [1,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1970 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [0,1] [1,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1971 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [0,1] [1,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1972 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [0,1] [1,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1973 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [0,1] [1,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
