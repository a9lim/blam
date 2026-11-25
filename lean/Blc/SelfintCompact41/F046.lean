import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f644 : BadRow (markedRow ⟨1,2,1,2,5,4⟩ [1,0] [2,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f645 : BadRow (markedRow ⟨1,2,1,2,5,4⟩ [1,0] [2,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f646 : BadRow (markedRow ⟨1,2,1,2,5,4⟩ [1,0] [2,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f647 : BadRow (markedRow ⟨1,2,1,2,5,4⟩ [1,0] [2,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f648 : BadRow (markedRow ⟨1,2,1,2,5,4⟩ [1,0] [2,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f649 : BadRow (markedRow ⟨1,2,2,2,5,3⟩ [1,1] [0,0,0,1,2]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,38,36,11,4,36,4] (hard := []) (by decide +kernel) .nil)

theorem f650 : BadRow (markedRow ⟨1,2,2,2,5,3⟩ [1,1] [0,0,0,2,1]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,11,11,11,4,36,4] (hard := []) (by decide +kernel) .nil)

theorem f651 : BadRow (markedRow ⟨1,2,2,2,5,3⟩ [1,1] [0,0,1,0,2]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,11,36,11,11,11,4,4,36,36,4,4] (hard := []) (by decide +kernel) .nil)

theorem f652 : BadRow (markedRow ⟨1,2,2,2,5,3⟩ [1,1] [0,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f653 : BadRow (markedRow ⟨1,2,2,2,5,3⟩ [1,1] [0,0,1,2,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,36,10,36,4,36,4,36] (hard := []) (by decide +kernel) .nil)

theorem f654 : BadRow (markedRow ⟨1,2,2,2,5,3⟩ [1,1] [0,0,2,0,1]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,11,11,10,11,36,4,4,36,36,4,4] (hard := []) (by decide +kernel) .nil)

theorem f655 : BadRow (markedRow ⟨1,2,2,2,5,3⟩ [1,1] [0,0,2,1,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,36,10,11,4,36,4,36] (hard := []) (by decide +kernel) .nil)

theorem f656 : BadRow (markedRow ⟨1,2,2,2,5,3⟩ [1,1] [0,1,0,0,2]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,1,1,36,37,11] (hard := []) (by decide +kernel) .nil)

theorem f657 : BadRow (markedRow ⟨1,2,2,2,5,3⟩ [1,1] [0,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
