import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1792 : BadRow (markedRow ⟨2,2,1,2,5,3⟩ [0,1] [0,0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1793 : BadRow (markedRow ⟨2,2,1,2,5,3⟩ [0,1] [0,1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1794 : BadRow (markedRow ⟨2,2,1,2,5,3⟩ [0,1] [0,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1795 : BadRow (markedRow ⟨2,2,1,2,5,3⟩ [0,1] [0,1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1796 : BadRow (markedRow ⟨2,2,1,2,5,3⟩ [0,1] [0,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1797 : BadRow (markedRow ⟨2,2,1,2,5,3⟩ [0,1] [0,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1798 : BadRow (markedRow ⟨2,2,1,2,5,3⟩ [0,1] [0,1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1799 : BadRow (markedRow ⟨2,2,1,2,5,3⟩ [0,1] [0,2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1800 : BadRow (markedRow ⟨2,2,1,2,5,3⟩ [0,1] [0,2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1801 : BadRow (markedRow ⟨2,2,1,2,5,3⟩ [0,1] [0,2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1802 : BadRow (markedRow ⟨2,2,1,2,5,3⟩ [0,1] [1,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1803 : BadRow (markedRow ⟨2,2,1,2,5,3⟩ [0,1] [1,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1804 : BadRow (markedRow ⟨2,2,1,2,5,3⟩ [0,1] [1,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1805 : BadRow (markedRow ⟨2,2,1,2,5,3⟩ [0,1] [1,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
