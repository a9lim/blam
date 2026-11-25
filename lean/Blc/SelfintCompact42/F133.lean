import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1862 : BadRow (markedRow ⟨2,3,0,2,4,4⟩ [0,0,0] [2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1863 : BadRow (markedRow ⟨2,3,0,2,4,4⟩ [0,0,0] [2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1864 : BadRow (markedRow ⟨2,3,0,2,4,4⟩ [0,0,0] [2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1865 : BadRow (markedRow ⟨2,3,1,2,4,3⟩ [0,0,1] [0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1866 : BadRow (markedRow ⟨2,3,1,2,4,3⟩ [0,0,1] [0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1867 : BadRow (markedRow ⟨2,3,1,2,4,3⟩ [0,0,1] [0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1868 : BadRow (markedRow ⟨2,3,1,2,4,3⟩ [0,0,1] [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1869 : BadRow (markedRow ⟨2,3,1,2,4,3⟩ [0,0,1] [0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1870 : BadRow (markedRow ⟨2,3,1,2,4,3⟩ [0,0,1] [0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1871 : BadRow (markedRow ⟨2,3,1,2,4,3⟩ [0,0,1] [0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1872 : BadRow (markedRow ⟨2,3,1,2,4,3⟩ [0,0,1] [1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1873 : BadRow (markedRow ⟨2,3,1,2,4,3⟩ [0,0,1] [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1874 : BadRow (markedRow ⟨2,3,1,2,4,3⟩ [0,0,1] [1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1875 : BadRow (markedRow ⟨2,3,1,2,4,3⟩ [0,0,1] [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
