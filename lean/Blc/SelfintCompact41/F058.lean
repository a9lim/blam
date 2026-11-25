import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f812 : BadRow (markedRow ⟨1,2,0,3,4,7⟩ [0,0] [1,3,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f813 : BadRow (markedRow ⟨1,2,0,3,4,7⟩ [0,0] [1,3,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f814 : BadRow (markedRow ⟨1,2,0,3,4,7⟩ [0,0] [1,3,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f815 : BadRow (markedRow ⟨1,2,0,3,4,7⟩ [0,0] [1,3,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f816 : BadRow (markedRow ⟨1,2,0,3,4,7⟩ [0,0] [2,0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f817 : BadRow (markedRow ⟨1,2,0,3,4,7⟩ [0,0] [2,0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f818 : BadRow (markedRow ⟨1,2,0,3,4,7⟩ [0,0] [2,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f819 : BadRow (markedRow ⟨1,2,0,3,4,7⟩ [0,0] [2,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f820 : BadRow (markedRow ⟨1,2,0,3,4,7⟩ [0,0] [2,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f821 : BadRow (markedRow ⟨1,2,0,3,4,7⟩ [0,0] [2,2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f822 : BadRow (markedRow ⟨1,2,0,3,4,7⟩ [0,0] [2,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f823 : BadRow (markedRow ⟨1,2,0,3,4,7⟩ [0,0] [2,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f824 : BadRow (markedRow ⟨1,2,0,3,4,7⟩ [0,0] [2,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f825 : BadRow (markedRow ⟨1,2,0,3,4,7⟩ [0,0] [2,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
