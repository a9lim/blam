import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1824 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [0,1,0] [0,0,2,2]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,14,14] (hard := []) (by decide +kernel) .nil)

theorem f1825 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [0,1,0] [0,0,3,1]) :=
  row_of_forall (discharge bank [6,6,6,6,1,1,1,1,8,14] (hard := []) (by decide +kernel) .nil)

theorem f1826 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [0,1,0] [0,1,0,3]) :=
  row_of_forall (discharge bank [6,6,6,6,6,6,6,25,30,1,1,1,30,37,8,8,14,14] (hard := []) (by decide +kernel) .nil)

theorem f1827 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [0,1,0] [0,1,1,2]) :=
  row_of_forall (discharge bank [6,6,6,30,1,1,1,37,24] (hard := []) (by decide +kernel) .nil)

theorem f1828 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [0,1,0] [0,1,2,1]) :=
  row_of_forall (discharge bank [6,6,6,25,1,1,1,38,13] (hard := []) (by decide +kernel) .nil)

theorem f1829 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [0,1,0] [0,1,3,0]) :=
  row_of_forall (discharge bank [6,6,6,6,1,8] (hard := []) (by decide +kernel) .nil)

theorem f1830 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [0,1,0] [0,2,0,2]) :=
  row_of_forall (discharge bank [28,30,1,1,1,1,1,52,37,14,11] (hard := []) (by decide +kernel) .nil)

theorem f1831 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [0,1,0] [0,2,1,1]) :=
  row_of_forall (discharge bank [6,6,6,28,30,1,1,1,1,52,37,40,11] (hard := []) (by decide +kernel) .nil)

theorem f1832 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [0,1,0] [0,2,2,0]) :=
  row_of_forall (discharge bank [1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f1833 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [0,1,0] [0,3,0,1]) :=
  row_of_forall (discharge bank [6,6,6,6,6,6,6,1,1,8,8] (hard := []) (by decide +kernel) .nil)

theorem f1834 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [0,1,0] [0,3,1,0]) :=
  row_of_forall (discharge bank [6,6,6,6,1,1,8] (hard := []) (by decide +kernel) .nil)

theorem f1835 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [0,1,0] [1,0,0,3]) :=
  row_of_forall (discharge bank [6,6,6,6,6,7,7,17,17,14] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
