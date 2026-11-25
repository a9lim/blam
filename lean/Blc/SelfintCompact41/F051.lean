import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f714 : BadRow (markedRow ⟨1,3,1,2,4,4⟩ [0,1,0] [0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f715 : BadRow (markedRow ⟨1,3,1,2,4,4⟩ [0,1,0] [0,1,1,2]) :=
  row_of_forall (discharge bank [1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f716 : BadRow (markedRow ⟨1,3,1,2,4,4⟩ [0,1,0] [0,1,2,1]) :=
  row_of_forall (discharge bank [1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f717 : BadRow (markedRow ⟨1,3,1,2,4,4⟩ [0,1,0] [0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f718 : BadRow (markedRow ⟨1,3,1,2,4,4⟩ [0,1,0] [0,2,1,1]) :=
  row_of_forall (discharge bank [1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f719 : BadRow (markedRow ⟨1,3,1,2,4,4⟩ [0,1,0] [0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f720 : BadRow (markedRow ⟨1,3,1,2,4,4⟩ [0,1,0] [1,0,1,2]) :=
  row_of_forall (discharge bank [27,1,11,14,16,19] (hard := []) (by decide +kernel) .nil)

theorem f721 : BadRow (markedRow ⟨1,3,1,2,4,4⟩ [0,1,0] [1,0,2,1]) :=
  row_of_forall (discharge bank [27,1,10,10,10,19] (hard := []) (by decide +kernel) .nil)

theorem f722 : BadRow (markedRow ⟨1,3,1,2,4,4⟩ [0,1,0] [1,1,0,2]) :=
  row_of_forall (discharge bank [27,29,10,14,10,19,19] (hard := []) (by decide +kernel) .nil)

theorem f723 : BadRow (markedRow ⟨1,3,1,2,4,4⟩ [0,1,0] [1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f724 : BadRow (markedRow ⟨1,3,1,2,4,4⟩ [0,1,0] [1,1,2,0]) :=
  row_of_forall (discharge bank [27,27,10,19] (hard := []) (by decide +kernel) .nil)

theorem f725 : BadRow (markedRow ⟨1,3,1,2,4,4⟩ [0,1,0] [1,2,0,1]) :=
  row_of_forall (discharge bank [27,9,10,10,10,19,19] (hard := []) (by decide +kernel) .nil)

theorem f726 : BadRow (markedRow ⟨1,3,1,2,4,4⟩ [0,1,0] [1,2,1,0]) :=
  row_of_forall (discharge bank [27,27,10,19] (hard := []) (by decide +kernel) .nil)

theorem f727 : BadRow (markedRow ⟨1,3,1,2,4,4⟩ [0,1,0] [2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
