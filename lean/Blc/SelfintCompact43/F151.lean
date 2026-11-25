import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1812 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [0,0,1] [1,2,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,39,39,6,6,6,15,15,15] (hard := []) (by decide +kernel) .nil)

theorem f1813 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [0,0,1] [1,3,0,0]) :=
  row_of_forall (discharge bank [39,39,39,6,6,6] (hard := []) (by decide +kernel) .nil)

theorem f1814 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [0,0,1] [2,0,0,2]) :=
  row_of_forall (discharge bank [6,6,6,6,6,7,7,17,17,14] (hard := []) (by decide +kernel) .nil)

theorem f1815 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [0,0,1] [2,0,1,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,6,6,6,6,6,6,6,6,6,6,6,6,6,7,7,7,17,7,17,17,14] (hard := []) (by decide +kernel) .nil)

theorem f1816 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [0,0,1] [2,0,2,0]) :=
  row_of_forall (discharge bank [6,6,6,7,7,17] (hard := []) (by decide +kernel) .nil)

theorem f1817 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [0,0,1] [2,1,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,6,6,6,6,6,6,6,6,6,6,7,7,17,7,34] (hard := []) (by decide +kernel) .nil)

theorem f1818 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [0,0,1] [2,1,1,0]) :=
  row_of_forall (discharge bank [2,2,2,6,6,6,6,6,6,6,7,17,7,17] (hard := []) (by decide +kernel) .nil)

theorem f1819 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [0,0,1] [2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1820 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [0,0,1] [3,0,0,1]) :=
  row_of_forall (discharge bank [6,6,6,6,6,6,6,6,6,6] (hard := []) (by decide +kernel) .nil)

theorem f1821 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [0,0,1] [3,0,1,0]) :=
  row_of_forall (discharge bank [6,6,6,6,6,6,6,6,6,6] (hard := []) (by decide +kernel) .nil)

theorem f1822 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [0,0,1] [3,1,0,0]) :=
  row_of_forall (discharge bank [6,6,6,6,6,6] (hard := []) (by decide +kernel) .nil)

theorem f1823 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [0,1,0] [0,0,1,3]) :=
  row_of_forall (discharge bank [6,6,6,6,1,1,1,1,8,14] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
