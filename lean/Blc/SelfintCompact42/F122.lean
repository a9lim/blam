import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1708 : BadRow (markedRow ⟨2,2,3,2,4,5⟩ [2,1] [0,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1709 : BadRow (markedRow ⟨2,2,3,2,4,5⟩ [2,1] [1,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1710 : BadRow (markedRow ⟨2,2,3,2,4,5⟩ [2,1] [1,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1711 : BadRow (markedRow ⟨2,2,3,2,4,5⟩ [2,1] [1,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1712 : BadRow (markedRow ⟨2,2,3,2,4,5⟩ [2,1] [1,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1713 : BadRow (markedRow ⟨2,2,3,2,4,5⟩ [2,1] [1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1714 : BadRow (markedRow ⟨2,2,3,2,4,5⟩ [2,1] [1,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1715 : BadRow (markedRow ⟨2,2,3,2,4,5⟩ [2,1] [2,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1716 : BadRow (markedRow ⟨2,2,3,2,4,5⟩ [2,1] [2,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1717 : BadRow (markedRow ⟨2,2,3,2,4,5⟩ [2,1] [2,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1718 : BadRow (markedRow ⟨2,2,3,2,4,5⟩ [2,1] [2,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1719 : BadRow (markedRow ⟨2,2,3,2,4,5⟩ [2,1] [2,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1720 : BadRow (markedRow ⟨2,2,3,2,4,5⟩ [2,1] [2,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1721 : BadRow (markedRow ⟨2,2,3,2,4,5⟩ [2,1] [2,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
