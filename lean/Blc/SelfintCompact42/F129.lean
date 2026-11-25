import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1806 : BadRow (markedRow ⟨2,2,1,2,5,3⟩ [0,1] [1,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1807 : BadRow (markedRow ⟨2,2,1,2,5,3⟩ [0,1] [1,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1808 : BadRow (markedRow ⟨2,2,1,2,5,3⟩ [0,1] [1,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1809 : BadRow (markedRow ⟨2,2,1,2,5,3⟩ [0,1] [1,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1810 : BadRow (markedRow ⟨2,2,1,2,5,3⟩ [0,1] [1,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1811 : BadRow (markedRow ⟨2,2,1,2,5,3⟩ [0,1] [1,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1812 : BadRow (markedRow ⟨2,2,1,2,5,3⟩ [0,1] [2,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1813 : BadRow (markedRow ⟨2,2,1,2,5,3⟩ [0,1] [2,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1814 : BadRow (markedRow ⟨2,2,1,2,5,3⟩ [0,1] [2,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1815 : BadRow (markedRow ⟨2,2,1,2,5,3⟩ [0,1] [2,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1816 : BadRow (markedRow ⟨2,2,1,2,5,3⟩ [1,0] [0,0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1817 : BadRow (markedRow ⟨2,2,1,2,5,3⟩ [1,0] [0,0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1818 : BadRow (markedRow ⟨2,2,1,2,5,3⟩ [1,0] [0,0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1819 : BadRow (markedRow ⟨2,2,1,2,5,3⟩ [1,0] [0,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
