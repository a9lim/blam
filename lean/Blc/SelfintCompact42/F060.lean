import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f840 : BadRow (markedRow ⟨1,2,2,2,5,4⟩ [1,1] [1,1,0,2,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,1,1,1,1,34,34] (hard := []) (by decide +kernel) .nil)

theorem f841 : BadRow (markedRow ⟨1,2,2,2,5,4⟩ [1,1] [1,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f842 : BadRow (markedRow ⟨1,2,2,2,5,4⟩ [1,1] [1,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f843 : BadRow (markedRow ⟨1,2,2,2,5,4⟩ [1,1] [1,1,2,0,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,1,1,1,34] (hard := []) (by decide +kernel) .nil)

theorem f844 : BadRow (markedRow ⟨1,2,2,2,5,4⟩ [1,1] [1,2,0,0,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,3,3,3,3] (hard := []) (by decide +kernel) .nil)

theorem f845 : BadRow (markedRow ⟨1,2,2,2,5,4⟩ [1,1] [1,2,0,1,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,1,3,1,3,34,3] (hard := []) (by decide +kernel) .nil)

theorem f846 : BadRow (markedRow ⟨1,2,2,2,5,4⟩ [1,1] [1,2,1,0,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,1,1,1,34] (hard := []) (by decide +kernel) .nil)

theorem f847 : BadRow (markedRow ⟨1,2,2,2,5,4⟩ [1,1] [2,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f848 : BadRow (markedRow ⟨1,2,2,2,5,4⟩ [1,1] [2,0,0,1,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f849 : BadRow (markedRow ⟨1,2,2,2,5,4⟩ [1,1] [2,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f850 : BadRow (markedRow ⟨1,2,2,2,5,4⟩ [1,1] [2,0,1,0,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f851 : BadRow (markedRow ⟨1,2,2,2,5,4⟩ [1,1] [2,0,1,1,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f852 : BadRow (markedRow ⟨1,2,2,2,5,4⟩ [1,1] [2,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f853 : BadRow (markedRow ⟨1,2,2,2,5,4⟩ [1,1] [2,1,0,0,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
