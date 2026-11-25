import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1904 : BadRow (markedRow ⟨2,3,1,2,4,3⟩ [1,0,0] [1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1905 : BadRow (markedRow ⟨2,3,1,2,4,3⟩ [1,0,0] [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1906 : BadRow (markedRow ⟨2,3,1,2,4,3⟩ [1,0,0] [1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1907 : BadRow (markedRow ⟨2,3,1,2,4,3⟩ [1,0,0] [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1908 : BadRow (markedRow ⟨2,3,1,2,4,3⟩ [1,0,0] [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1909 : BadRow (markedRow ⟨2,3,1,2,4,3⟩ [1,0,0] [1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1910 : BadRow (markedRow ⟨2,3,1,2,4,3⟩ [1,0,0] [2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1911 : BadRow (markedRow ⟨2,3,1,2,4,3⟩ [1,0,0] [2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1912 : BadRow (markedRow ⟨2,3,1,2,4,3⟩ [1,0,0] [2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1913 : BadRow (markedRow ⟨2,2,0,3,4,6⟩ [0,0] [0,0,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1914 : BadRow (markedRow ⟨2,2,0,3,4,6⟩ [0,0] [0,1,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1915 : BadRow (markedRow ⟨2,2,0,3,4,6⟩ [0,0] [0,1,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1916 : BadRow (markedRow ⟨2,2,0,3,4,6⟩ [0,0] [0,2,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1917 : BadRow (markedRow ⟨2,2,0,3,4,6⟩ [0,0] [0,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
