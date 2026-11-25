import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f812 : BadRow (markedRow ⟨1,2,2,2,5,4⟩ [1,1] [0,0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f813 : BadRow (markedRow ⟨1,2,2,2,5,4⟩ [1,1] [0,0,1,1,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,12,34,11] (hard := []) (by decide +kernel) .nil)

theorem f814 : BadRow (markedRow ⟨1,2,2,2,5,4⟩ [1,1] [0,0,1,2,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,12,12,34,34] (hard := []) (by decide +kernel) .nil)

theorem f815 : BadRow (markedRow ⟨1,2,2,2,5,4⟩ [1,1] [0,0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f816 : BadRow (markedRow ⟨1,2,2,2,5,4⟩ [1,1] [0,0,2,1,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,11,12,34,34] (hard := []) (by decide +kernel) .nil)

theorem f817 : BadRow (markedRow ⟨1,2,2,2,5,4⟩ [1,1] [0,0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f818 : BadRow (markedRow ⟨1,2,2,2,5,4⟩ [1,1] [0,1,0,1,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,11,12,1,1,11,34,34,3] (hard := []) (by decide +kernel) .nil)

theorem f819 : BadRow (markedRow ⟨1,2,2,2,5,4⟩ [1,1] [0,1,0,2,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,34,12,34,12,1,1,34,34,34,3] (hard := []) (by decide +kernel) .nil)

theorem f820 : BadRow (markedRow ⟨1,2,2,2,5,4⟩ [1,1] [0,1,1,0,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,34,11,12,12,1,1,3,34,3,3,3] (hard := []) (by decide +kernel) .nil)

theorem f821 : BadRow (markedRow ⟨1,2,2,2,5,4⟩ [1,1] [0,1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f822 : BadRow (markedRow ⟨1,2,2,2,5,4⟩ [1,1] [0,1,1,2,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,11,12,1,3,3,3] (hard := []) (by decide +kernel) .nil)

theorem f823 : BadRow (markedRow ⟨1,2,2,2,5,4⟩ [1,1] [0,1,2,0,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,12,34,12,12,11,1,1,3,34,3,3,3] (hard := []) (by decide +kernel) .nil)

theorem f824 : BadRow (markedRow ⟨1,2,2,2,5,4⟩ [1,1] [0,1,2,1,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,12,12,1,3,3,3] (hard := []) (by decide +kernel) .nil)

theorem f825 : BadRow (markedRow ⟨1,2,2,2,5,4⟩ [1,1] [0,2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
