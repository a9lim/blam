import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1778 : BadRow (markedRow ⟨2,2,0,2,5,4⟩ [0,0] [2,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1779 : BadRow (markedRow ⟨2,2,0,2,5,4⟩ [0,0] [2,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1780 : BadRow (markedRow ⟨2,2,0,2,5,4⟩ [0,0] [2,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1781 : BadRow (markedRow ⟨2,2,0,2,5,4⟩ [0,0] [2,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1782 : BadRow (markedRow ⟨2,2,0,2,5,4⟩ [0,0] [2,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1783 : BadRow (markedRow ⟨2,2,0,2,5,4⟩ [0,0] [2,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1784 : BadRow (markedRow ⟨2,2,0,2,5,4⟩ [0,0] [2,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1785 : BadRow (markedRow ⟨2,2,0,2,5,4⟩ [0,0] [2,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1786 : BadRow (markedRow ⟨2,2,1,2,5,3⟩ [0,1] [0,0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1787 : BadRow (markedRow ⟨2,2,1,2,5,3⟩ [0,1] [0,0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1788 : BadRow (markedRow ⟨2,2,1,2,5,3⟩ [0,1] [0,0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1789 : BadRow (markedRow ⟨2,2,1,2,5,3⟩ [0,1] [0,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1790 : BadRow (markedRow ⟨2,2,1,2,5,3⟩ [0,1] [0,0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1791 : BadRow (markedRow ⟨2,2,1,2,5,3⟩ [0,1] [0,0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
