import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1820 : BadRow (markedRow ⟨2,2,1,2,5,3⟩ [1,0] [0,0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1821 : BadRow (markedRow ⟨2,2,1,2,5,3⟩ [1,0] [0,0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1822 : BadRow (markedRow ⟨2,2,1,2,5,3⟩ [1,0] [0,0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1823 : BadRow (markedRow ⟨2,2,1,2,5,3⟩ [1,0] [0,1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1824 : BadRow (markedRow ⟨2,2,1,2,5,3⟩ [1,0] [0,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1825 : BadRow (markedRow ⟨2,2,1,2,5,3⟩ [1,0] [0,1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1826 : BadRow (markedRow ⟨2,2,1,2,5,3⟩ [1,0] [0,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1827 : BadRow (markedRow ⟨2,2,1,2,5,3⟩ [1,0] [0,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1828 : BadRow (markedRow ⟨2,2,1,2,5,3⟩ [1,0] [0,1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1829 : BadRow (markedRow ⟨2,2,1,2,5,3⟩ [1,0] [0,2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1830 : BadRow (markedRow ⟨2,2,1,2,5,3⟩ [1,0] [0,2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1831 : BadRow (markedRow ⟨2,2,1,2,5,3⟩ [1,0] [0,2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1832 : BadRow (markedRow ⟨2,2,1,2,5,3⟩ [1,0] [1,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1833 : BadRow (markedRow ⟨2,2,1,2,5,3⟩ [1,0] [1,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
