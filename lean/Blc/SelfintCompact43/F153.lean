import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1836 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [0,1,0] [1,0,1,2]) :=
  row_of_forall (discharge bank [6,6,6,6,6,15,7,17,34] (hard := []) (by decide +kernel) .nil)

theorem f1837 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [0,1,0] [1,0,2,1]) :=
  row_of_forall (discharge bank [6,6,6,6,6,15,7,7,17,7,17] (hard := []) (by decide +kernel) .nil)

theorem f1838 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [0,1,0] [1,0,3,0]) :=
  row_of_forall (discharge bank [6,6,6,6,6,7,7,17] (hard := []) (by decide +kernel) .nil)

theorem f1839 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [0,1,0] [1,1,0,2]) :=
  row_of_forall (discharge bank [6,6,6,6,6,15,15,17,14] (hard := []) (by decide +kernel) .nil)

theorem f1840 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [0,1,0] [1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1841 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [0,1,0] [1,1,2,0]) :=
  row_of_forall (discharge bank [6,6,6,15,17,17] (hard := []) (by decide +kernel) .nil)

theorem f1842 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [0,1,0] [1,2,0,1]) :=
  row_of_forall (discharge bank [6,6,6,6,6,15,15,7,7,7] (hard := []) (by decide +kernel) .nil)

theorem f1843 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [0,1,0] [1,2,1,0]) :=
  row_of_forall (discharge bank [6,6,6,15,7,7] (hard := []) (by decide +kernel) .nil)

theorem f1844 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [0,1,0] [1,3,0,0]) :=
  row_of_forall (discharge bank [6,6,6] (hard := []) (by decide +kernel) .nil)

theorem f1845 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [0,1,0] [2,0,0,2]) :=
  row_of_forall (discharge bank [15,15,17,17,9] (hard := []) (by decide +kernel) .nil)

theorem f1846 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [0,1,0] [2,0,1,1]) :=
  row_of_forall (discharge bank [6,6,6,6,6,15,15,15,17,15,17,17,9] (hard := []) (by decide +kernel) .nil)

theorem f1847 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [0,1,0] [2,0,2,0]) :=
  row_of_forall (discharge bank [15,15,17] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
