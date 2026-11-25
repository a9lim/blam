import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1932 : BadRow (markedRow ⟨2,2,0,3,4,6⟩ [0,0] [1,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1933 : BadRow (markedRow ⟨2,2,0,3,4,6⟩ [0,0] [1,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1934 : BadRow (markedRow ⟨2,2,0,3,4,6⟩ [0,0] [1,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1935 : BadRow (markedRow ⟨2,2,0,3,4,6⟩ [0,0] [2,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1936 : BadRow (markedRow ⟨2,2,0,3,4,6⟩ [0,0] [2,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1937 : BadRow (markedRow ⟨2,2,0,3,4,6⟩ [0,0] [2,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1938 : BadRow (markedRow ⟨2,2,0,3,4,6⟩ [0,0] [2,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1939 : BadRow (markedRow ⟨2,2,0,3,4,6⟩ [0,0] [2,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1940 : BadRow (markedRow ⟨2,2,0,3,4,6⟩ [0,0] [2,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1941 : BadRow (markedRow ⟨2,2,0,3,4,6⟩ [0,0] [2,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1942 : BadRow (markedRow ⟨2,2,0,3,4,6⟩ [0,0] [2,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1943 : BadRow (markedRow ⟨2,2,0,3,4,6⟩ [0,0] [2,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1944 : BadRow (markedRow ⟨2,2,0,3,4,6⟩ [0,0] [2,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1945 : BadRow (markedRow ⟨2,2,0,3,4,6⟩ [0,0] [2,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
