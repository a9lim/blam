import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1834 : BadRow (markedRow ⟨2,2,1,2,5,3⟩ [1,0] [1,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1835 : BadRow (markedRow ⟨2,2,1,2,5,3⟩ [1,0] [1,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1836 : BadRow (markedRow ⟨2,2,1,2,5,3⟩ [1,0] [1,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1837 : BadRow (markedRow ⟨2,2,1,2,5,3⟩ [1,0] [1,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1838 : BadRow (markedRow ⟨2,2,1,2,5,3⟩ [1,0] [1,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1839 : BadRow (markedRow ⟨2,2,1,2,5,3⟩ [1,0] [1,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1840 : BadRow (markedRow ⟨2,2,1,2,5,3⟩ [1,0] [1,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1841 : BadRow (markedRow ⟨2,2,1,2,5,3⟩ [1,0] [1,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1842 : BadRow (markedRow ⟨2,2,1,2,5,3⟩ [1,0] [2,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1843 : BadRow (markedRow ⟨2,2,1,2,5,3⟩ [1,0] [2,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1844 : BadRow (markedRow ⟨2,2,1,2,5,3⟩ [1,0] [2,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1845 : BadRow (markedRow ⟨2,2,1,2,5,3⟩ [1,0] [2,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1846 : BadRow (markedRow ⟨2,3,0,2,4,4⟩ [0,0,0] [0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1847 : BadRow (markedRow ⟨2,3,0,2,4,4⟩ [0,0,0] [0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
