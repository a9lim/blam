import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1876 : BadRow (markedRow ⟨2,3,1,2,4,3⟩ [0,0,1] [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1877 : BadRow (markedRow ⟨2,3,1,2,4,3⟩ [0,0,1] [1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1878 : BadRow (markedRow ⟨2,3,1,2,4,3⟩ [0,0,1] [2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1879 : BadRow (markedRow ⟨2,3,1,2,4,3⟩ [0,0,1] [2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1880 : BadRow (markedRow ⟨2,3,1,2,4,3⟩ [0,0,1] [2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1881 : BadRow (markedRow ⟨2,3,1,2,4,3⟩ [0,1,0] [0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1882 : BadRow (markedRow ⟨2,3,1,2,4,3⟩ [0,1,0] [0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1883 : BadRow (markedRow ⟨2,3,1,2,4,3⟩ [0,1,0] [0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1884 : BadRow (markedRow ⟨2,3,1,2,4,3⟩ [0,1,0] [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1885 : BadRow (markedRow ⟨2,3,1,2,4,3⟩ [0,1,0] [0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1886 : BadRow (markedRow ⟨2,3,1,2,4,3⟩ [0,1,0] [0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1887 : BadRow (markedRow ⟨2,3,1,2,4,3⟩ [0,1,0] [0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1888 : BadRow (markedRow ⟨2,3,1,2,4,3⟩ [0,1,0] [1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1889 : BadRow (markedRow ⟨2,3,1,2,4,3⟩ [0,1,0] [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
