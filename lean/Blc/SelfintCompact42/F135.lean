import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1890 : BadRow (markedRow ⟨2,3,1,2,4,3⟩ [0,1,0] [1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1891 : BadRow (markedRow ⟨2,3,1,2,4,3⟩ [0,1,0] [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1892 : BadRow (markedRow ⟨2,3,1,2,4,3⟩ [0,1,0] [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1893 : BadRow (markedRow ⟨2,3,1,2,4,3⟩ [0,1,0] [1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1894 : BadRow (markedRow ⟨2,3,1,2,4,3⟩ [0,1,0] [2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1895 : BadRow (markedRow ⟨2,3,1,2,4,3⟩ [0,1,0] [2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1896 : BadRow (markedRow ⟨2,3,1,2,4,3⟩ [0,1,0] [2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1897 : BadRow (markedRow ⟨2,3,1,2,4,3⟩ [1,0,0] [0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1898 : BadRow (markedRow ⟨2,3,1,2,4,3⟩ [1,0,0] [0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1899 : BadRow (markedRow ⟨2,3,1,2,4,3⟩ [1,0,0] [0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1900 : BadRow (markedRow ⟨2,3,1,2,4,3⟩ [1,0,0] [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1901 : BadRow (markedRow ⟨2,3,1,2,4,3⟩ [1,0,0] [0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1902 : BadRow (markedRow ⟨2,3,1,2,4,3⟩ [1,0,0] [0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1903 : BadRow (markedRow ⟨2,3,1,2,4,3⟩ [1,0,0] [0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
