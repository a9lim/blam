import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1974 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [0,1] [1,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1975 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [0,1] [1,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1976 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [0,1] [1,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1977 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [0,1] [1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1978 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [0,1] [1,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1979 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [0,1] [1,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1980 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [0,1] [1,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1981 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [0,1] [2,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1982 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [0,1] [2,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1983 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [0,1] [2,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1984 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [0,1] [2,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1985 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [0,1] [2,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1986 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [0,1] [2,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1987 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [0,1] [2,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
