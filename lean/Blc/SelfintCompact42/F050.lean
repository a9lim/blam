import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f700 : BadRow (markedRow ⟨1,2,0,2,5,6⟩ [0,0] [2,1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f701 : BadRow (markedRow ⟨1,2,0,2,5,6⟩ [0,0] [2,1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f702 : BadRow (markedRow ⟨1,2,0,2,5,6⟩ [0,0] [2,1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f703 : BadRow (markedRow ⟨1,2,0,2,5,6⟩ [0,0] [2,1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f704 : BadRow (markedRow ⟨1,2,0,2,5,6⟩ [0,0] [2,2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f705 : BadRow (markedRow ⟨1,2,0,2,5,6⟩ [0,0] [2,2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f706 : BadRow (markedRow ⟨1,2,0,2,5,6⟩ [0,0] [2,2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f707 : BadRow (markedRow ⟨1,2,0,2,5,6⟩ [0,0] [2,2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f708 : BadRow (markedRow ⟨1,2,0,2,5,6⟩ [0,0] [2,2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f709 : BadRow (markedRow ⟨1,2,0,2,5,6⟩ [0,0] [2,2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f710 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [0,1] [0,0,1,2,2]) :=
  row_of_forall (discharge bank [7,1,1,7,7,1,1,12,1,12,7,1,1,29,29,29] (hard := []) (by decide +kernel) .nil)

theorem f711 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [0,1] [0,0,2,1,2]) :=
  row_of_forall (discharge bank [12,12,12,53,12,11,11,12,53,12,1,1,1,29,29,29] (hard := []) (by decide +kernel) .nil)

theorem f712 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [0,1] [0,0,2,2,1]) :=
  row_of_forall (discharge bank [12,7,12,53,12,7,11,7,53,12,1,7,1,29,29,29] (hard := []) (by decide +kernel) .nil)

theorem f713 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [0,1] [0,1,0,2,2]) :=
  row_of_forall (discharge bank [7,1,7,1,1,7,1,7,7,1,1,1,1,1,7,1,7,1,1,29,29,29,29,29] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
