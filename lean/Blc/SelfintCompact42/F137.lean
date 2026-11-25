import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1918 : BadRow (markedRow ⟨2,2,0,3,4,6⟩ [0,0] [0,2,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1919 : BadRow (markedRow ⟨2,2,0,3,4,6⟩ [0,0] [0,3,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1920 : BadRow (markedRow ⟨2,2,0,3,4,6⟩ [0,0] [0,3,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1921 : BadRow (markedRow ⟨2,2,0,3,4,6⟩ [0,0] [0,3,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1922 : BadRow (markedRow ⟨2,2,0,3,4,6⟩ [0,0] [0,3,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1923 : BadRow (markedRow ⟨2,2,0,3,4,6⟩ [0,0] [1,0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1924 : BadRow (markedRow ⟨2,2,0,3,4,6⟩ [0,0] [1,0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1925 : BadRow (markedRow ⟨2,2,0,3,4,6⟩ [0,0] [1,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1926 : BadRow (markedRow ⟨2,2,0,3,4,6⟩ [0,0] [1,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1927 : BadRow (markedRow ⟨2,2,0,3,4,6⟩ [0,0] [1,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1928 : BadRow (markedRow ⟨2,2,0,3,4,6⟩ [0,0] [1,2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1929 : BadRow (markedRow ⟨2,2,0,3,4,6⟩ [0,0] [1,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1930 : BadRow (markedRow ⟨2,2,0,3,4,6⟩ [0,0] [1,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1931 : BadRow (markedRow ⟨2,2,0,3,4,6⟩ [0,0] [1,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
