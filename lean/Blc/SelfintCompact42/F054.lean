import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f756 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [0,1] [2,1,1,1,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f757 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [0,1] [2,1,2,0,0]) :=
  row_of_forall (discharge bank [29,29,29,29,29,15,1,29,29,20] (hard := []) (by decide +kernel) .nil)

theorem f758 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [0,1] [2,2,0,0,1]) :=
  row_of_forall (discharge bank [29,29,29,29,29,4,4,4,4,29,29,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f759 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [0,1] [2,2,0,1,0]) :=
  row_of_forall (discharge bank [29,29,29,29,29,4,4,4,4,29,29,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f760 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [0,1] [2,2,1,0,0]) :=
  row_of_forall (discharge bank [29,29,29,29,29,4,4,29,29,4] (hard := []) (by decide +kernel) .nil)

theorem f761 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [1,0] [0,0,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f762 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [1,0] [0,0,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f763 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [1,0] [0,0,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f764 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [1,0] [0,1,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f765 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [1,0] [0,1,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f766 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [1,0] [0,1,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f767 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [1,0] [0,1,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f768 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [1,0] [0,1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f769 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [1,0] [0,1,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
