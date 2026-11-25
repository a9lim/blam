import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1788 : BadRow (Grammar43.fourRow ⟨1,3,0,3,4,5⟩ [0,0,0] [3,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1789 : BadRow (Grammar43.fourRow ⟨1,3,0,3,4,5⟩ [0,0,0] [3,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1790 : BadRow (Grammar43.fourRow ⟨1,3,0,3,4,5⟩ [0,0,0] [3,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1791 : BadRow (Grammar43.fourRow ⟨1,3,0,3,4,5⟩ [0,0,0] [3,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1792 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [0,0,1] [0,0,1,3]) :=
  row_of_forall (discharge bank [39,39,39,39,39,39,39,39,29,14,6,6,6,6,1,1,1,15,1,10] (hard := []) (by decide +kernel) .nil)

theorem f1793 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [0,0,1] [0,0,2,2]) :=
  row_of_forall (discharge bank [39,39,39,39,39,39,39,39,14,14,1,1,1,1,1,1,15,15,13,14] (hard := []) (by decide +kernel) .nil)

theorem f1794 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [0,0,1] [0,0,3,1]) :=
  row_of_forall (discharge bank [39,39,39,39,39,39,39,39,29,14,6,6,6,6,1,1,1,15,1,14] (hard := []) (by decide +kernel) .nil)

theorem f1795 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [0,0,1] [0,1,0,3]) :=
  row_of_forall (discharge bank [39,39,39,39,39,39,39,39,39,39,39,39,39,39,29,29,14,14,6,6,6,6,6,6,6,28,30,1,1,1,15,15,8,73,14,58] (hard := []) (by decide +kernel) .nil)

theorem f1796 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [0,0,1] [0,1,1,2]) :=
  row_of_forall (discharge bank [2,2,2,39,39,39,39,39,14,6,6,6,30,1,1,1,15,73] (hard := []) (by decide +kernel) .nil)

theorem f1797 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [0,0,1] [0,1,2,1]) :=
  row_of_forall (discharge bank [2,2,2,39,39,39,39,39,14,6,6,6,28,30,1,1,15,73] (hard := []) (by decide +kernel) .nil)

theorem f1798 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [0,0,1] [0,1,3,0]) :=
  row_of_forall (discharge bank [39,39,39,39,39,29,6,6,6,6,1,8] (hard := []) (by decide +kernel) .nil)

theorem f1799 : BadRow (Grammar43.fourRow ⟨1,3,1,3,4,4⟩ [0,0,1] [0,2,0,2]) :=
  row_of_forall (discharge bank [39,39,39,39,39,39,39,39,39,14,14,25,30,1,1,1,1,1,15,15,14,24] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
