import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f574 : BadRow (markedRow ⟨1,2,1,2,5,4⟩ [0,1] [0,2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f575 : BadRow (markedRow ⟨1,2,1,2,5,4⟩ [0,1] [0,2,1,0,1]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,1,35,35,35,35,35] (hard := []) (by decide +kernel) .nil)

theorem f576 : BadRow (markedRow ⟨1,2,1,2,5,4⟩ [0,1] [0,2,1,1,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,35,35,35] (hard := []) (by decide +kernel) .nil)

theorem f577 : BadRow (markedRow ⟨1,2,1,2,5,4⟩ [0,1] [0,2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f578 : BadRow (markedRow ⟨1,2,1,2,5,4⟩ [0,1] [1,0,0,1,2]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,35,35,35,35,10] (hard := []) (by decide +kernel) .nil)

theorem f579 : BadRow (markedRow ⟨1,2,1,2,5,4⟩ [0,1] [1,0,0,2,1]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,35,35,35,35,10] (hard := []) (by decide +kernel) .nil)

theorem f580 : BadRow (markedRow ⟨1,2,1,2,5,4⟩ [0,1] [1,0,1,0,2]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,35,35,35,35,35,35,35,10,10] (hard := []) (by decide +kernel) .nil)

theorem f581 : BadRow (markedRow ⟨1,2,1,2,5,4⟩ [0,1] [1,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f582 : BadRow (markedRow ⟨1,2,1,2,5,4⟩ [0,1] [1,0,1,2,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,35,35,35,35,10,35] (hard := []) (by decide +kernel) .nil)

theorem f583 : BadRow (markedRow ⟨1,2,1,2,5,4⟩ [0,1] [1,0,2,0,1]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,35,35,35,35,35,35,35,10,10] (hard := []) (by decide +kernel) .nil)

theorem f584 : BadRow (markedRow ⟨1,2,1,2,5,4⟩ [0,1] [1,0,2,1,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,35,35,35,35,10,35] (hard := []) (by decide +kernel) .nil)

theorem f585 : BadRow (markedRow ⟨1,2,1,2,5,4⟩ [0,1] [1,1,0,0,2]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,35,35,35,35,35] (hard := []) (by decide +kernel) .nil)

theorem f586 : BadRow (markedRow ⟨1,2,1,2,5,4⟩ [0,1] [1,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f587 : BadRow (markedRow ⟨1,2,1,2,5,4⟩ [0,1] [1,1,0,2,0]) :=
  row_of_forall (discharge bank [12,12,12,12,12,12,12,12,12,12,12,12,12,12,35,35,35,35,35,35,35] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
