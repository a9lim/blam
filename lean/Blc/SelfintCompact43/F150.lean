import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1800 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [0,0,1] [0,2,1,1]) :=
  row_of_forall (discharge bank [2,2,2,39,39,39,39,39,39,39,39,47,14,6,6,6,25,30,1,1,30,1,15,15,47,10] (hard := []) (by decide +kernel) .nil)

theorem f1801 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [0,0,1] [0,2,2,0]) :=
  row_of_forall (discharge bank [39,39,39,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f1802 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [0,0,1] [0,3,0,1]) :=
  row_of_forall (discharge bank [39,39,39,39,39,39,39,39,39,10,10,6,6,6,6,6,6,6,1,1,14,9] (hard := []) (by decide +kernel) .nil)

theorem f1803 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [0,0,1] [0,3,1,0]) :=
  row_of_forall (discharge bank [39,39,39,39,39,39,10,6,6,6,6,1,1,24] (hard := []) (by decide +kernel) .nil)

theorem f1804 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [0,0,1] [1,0,0,3]) :=
  row_of_forall (discharge bank [39,39,39,39,39,39,39,39,39,39,6,6,6,6,6,15,15,17,17,9] (hard := []) (by decide +kernel) .nil)

theorem f1805 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [0,0,1] [1,0,1,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,39,39,39,6,6,6,6,6,15,15,17,9] (hard := []) (by decide +kernel) .nil)

theorem f1806 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [0,0,1] [1,0,2,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,39,39,39,39,39,6,6,6,6,6,15,15,15,17,15,17] (hard := []) (by decide +kernel) .nil)

theorem f1807 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [0,0,1] [1,0,3,0]) :=
  row_of_forall (discharge bank [39,39,39,39,39,39,39,39,6,6,6,6,6,15,15,17] (hard := []) (by decide +kernel) .nil)

theorem f1808 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [0,0,1] [1,1,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,39,39,6,6,6,6,6,15,15,17,9] (hard := []) (by decide +kernel) .nil)

theorem f1809 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [0,0,1] [1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1810 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [0,0,1] [1,1,2,0]) :=
  row_of_forall (discharge bank [2,2,2,2,39,39,6,6,6,15,17,17] (hard := []) (by decide +kernel) .nil)

theorem f1811 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [0,0,1] [1,2,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,39,39,39,6,6,6,6,6,15,15,15,15,15] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
