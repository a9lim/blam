import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f672 : BadRow (markedRow ⟨1,2,0,2,5,6⟩ [0,0] [0,2,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f673 : BadRow (markedRow ⟨1,2,0,2,5,6⟩ [0,0] [0,2,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f674 : BadRow (markedRow ⟨1,2,0,2,5,6⟩ [0,0] [0,2,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f675 : BadRow (markedRow ⟨1,2,0,2,5,6⟩ [0,0] [1,0,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f676 : BadRow (markedRow ⟨1,2,0,2,5,6⟩ [0,0] [1,0,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f677 : BadRow (markedRow ⟨1,2,0,2,5,6⟩ [0,0] [1,0,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f678 : BadRow (markedRow ⟨1,2,0,2,5,6⟩ [0,0] [1,1,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f679 : BadRow (markedRow ⟨1,2,0,2,5,6⟩ [0,0] [1,1,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f680 : BadRow (markedRow ⟨1,2,0,2,5,6⟩ [0,0] [1,1,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f681 : BadRow (markedRow ⟨1,2,0,2,5,6⟩ [0,0] [1,1,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f682 : BadRow (markedRow ⟨1,2,0,2,5,6⟩ [0,0] [1,1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f683 : BadRow (markedRow ⟨1,2,0,2,5,6⟩ [0,0] [1,1,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f684 : BadRow (markedRow ⟨1,2,0,2,5,6⟩ [0,0] [1,2,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f685 : BadRow (markedRow ⟨1,2,0,2,5,6⟩ [0,0] [1,2,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
