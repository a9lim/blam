import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f826 : BadRow (markedRow ⟨1,2,2,2,5,4⟩ [1,1] [0,2,0,1,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,11,11,34,34,34,11,11] (hard := []) (by decide +kernel) .nil)

theorem f827 : BadRow (markedRow ⟨1,2,2,2,5,4⟩ [1,1] [0,2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f828 : BadRow (markedRow ⟨1,2,2,2,5,4⟩ [1,1] [0,2,1,0,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,11,34,34,3,34,3] (hard := []) (by decide +kernel) .nil)

theorem f829 : BadRow (markedRow ⟨1,2,2,2,5,4⟩ [1,1] [0,2,1,1,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,34,3,3] (hard := []) (by decide +kernel) .nil)

theorem f830 : BadRow (markedRow ⟨1,2,2,2,5,4⟩ [1,1] [0,2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f831 : BadRow (markedRow ⟨1,2,2,2,5,4⟩ [1,1] [1,0,0,1,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,1,3,1,11] (hard := []) (by decide +kernel) .nil)

theorem f832 : BadRow (markedRow ⟨1,2,2,2,5,4⟩ [1,1] [1,0,0,2,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,3,3,3,1,11] (hard := []) (by decide +kernel) .nil)

theorem f833 : BadRow (markedRow ⟨1,2,2,2,5,4⟩ [1,1] [1,0,1,0,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,1,1,1,1,1,1,34,12] (hard := []) (by decide +kernel) .nil)

theorem f834 : BadRow (markedRow ⟨1,2,2,2,5,4⟩ [1,1] [1,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f835 : BadRow (markedRow ⟨1,2,2,2,5,4⟩ [1,1] [1,0,1,2,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,1,1,1,34,11] (hard := []) (by decide +kernel) .nil)

theorem f836 : BadRow (markedRow ⟨1,2,2,2,5,4⟩ [1,1] [1,0,2,0,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,3,3,3,3,1,1,11,11] (hard := []) (by decide +kernel) .nil)

theorem f837 : BadRow (markedRow ⟨1,2,2,2,5,4⟩ [1,1] [1,0,2,1,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,3,3,1,34,3] (hard := []) (by decide +kernel) .nil)

theorem f838 : BadRow (markedRow ⟨1,2,2,2,5,4⟩ [1,1] [1,1,0,0,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f839 : BadRow (markedRow ⟨1,2,2,2,5,4⟩ [1,1] [1,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
