import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1584 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [3,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1585 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [3,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1586 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [3,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1587 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [0,1] [0,0,0,1,3]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,5,5,5,5,5,5,5,5,14,58] (hard := []) (by decide +kernel) .nil)

theorem f1588 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [0,1] [0,0,0,2,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,5,5,5,5,5,5,5,5,14,68] (hard := []) (by decide +kernel) .nil)

theorem f1589 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [0,1] [0,0,0,3,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,5,5,5,5,5,5,5,5,14,102] (hard := []) (by decide +kernel) .nil)

theorem f1590 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [0,1] [0,0,1,0,3]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,11,14,58,102] (hard := []) (by decide +kernel) .nil)

theorem f1591 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [0,1] [0,0,1,1,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,4,4,4,2,2,2,4,4,4,4,4,4,5,5,5,5,5,5,103] (hard := []) (by decide +kernel) .nil)

theorem f1592 (hard : BadRow [Floor43.e2411718538182]) : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [0,1] [0,0,1,2,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,4,4,4,2,2,2,4,4,4,4,4,4,4,5,5,5,5,5,5,0,8] (hard := [Floor43.e2411718538182]) (by decide +kernel) hard)

theorem f1593 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [0,1] [0,0,1,3,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,5,5,5,5,11,101,101] (hard := []) (by decide +kernel) .nil)

theorem f1594 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [0,1] [0,0,2,0,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,5,5,5,5,5,5,5,5,5,34,47] (hard := []) (by decide +kernel) .nil)

theorem f1595 : BadRow (Grammar43.fourRow ⟨1,2,1,3,5,4⟩ [0,1] [0,0,2,1,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,2,2,2,4,4,4,4,4,4,4,4,4,4,4,5,5,5,5,5,5,5,5,5,5,34,94,8] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
