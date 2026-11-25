import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1848 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [0,1,0] [2,1,0,1]) :=
  row_of_forall (discharge bank [6,6,6,6,6,15,15,17,15,9] (hard := []) (by decide +kernel) .nil)

theorem f1849 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [0,1,0] [2,1,1,0]) :=
  row_of_forall (discharge bank [6,6,6,15,17,15,17] (hard := []) (by decide +kernel) .nil)

theorem f1850 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [0,1,0] [2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1851 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [0,1,0] [3,0,0,1]) :=
  row_of_forall (discharge bank [6,6,6,6,6] (hard := []) (by decide +kernel) .nil)

theorem f1852 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [0,1,0] [3,0,1,0]) :=
  row_of_forall (discharge bank [6,6,6,6,6] (hard := []) (by decide +kernel) .nil)

theorem f1853 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [0,1,0] [3,1,0,0]) :=
  row_of_forall (discharge bank [6,6,6] (hard := []) (by decide +kernel) .nil)

theorem f1854 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [1,0,0] [0,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1855 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [1,0,0] [0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1856 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [1,0,0] [0,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1857 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [1,0,0] [0,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1858 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [1,0,0] [0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1859 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [1,0,0] [0,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
