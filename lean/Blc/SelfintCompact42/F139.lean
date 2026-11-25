import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1946 : BadRow (markedRow ⟨2,2,0,3,4,6⟩ [0,0] [2,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1947 : BadRow (markedRow ⟨2,2,0,3,4,6⟩ [0,0] [3,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1948 : BadRow (markedRow ⟨2,2,0,3,4,6⟩ [0,0] [3,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1949 : BadRow (markedRow ⟨2,2,0,3,4,6⟩ [0,0] [3,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1950 : BadRow (markedRow ⟨2,2,0,3,4,6⟩ [0,0] [3,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1951 : BadRow (markedRow ⟨2,2,0,3,4,6⟩ [0,0] [3,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1952 : BadRow (markedRow ⟨2,2,0,3,4,6⟩ [0,0] [3,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1953 : BadRow (markedRow ⟨2,2,0,3,4,6⟩ [0,0] [3,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1954 : BadRow (markedRow ⟨2,2,0,3,4,6⟩ [0,0] [3,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1955 : BadRow (markedRow ⟨2,2,0,3,4,6⟩ [0,0] [3,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1956 : BadRow (markedRow ⟨2,2,0,3,4,6⟩ [0,0] [3,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1957 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [0,1] [0,0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1958 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [0,1] [0,0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1959 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [0,1] [0,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
