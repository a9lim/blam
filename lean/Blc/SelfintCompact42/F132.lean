import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1848 : BadRow (markedRow ⟨2,3,0,2,4,4⟩ [0,0,0] [0,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1849 : BadRow (markedRow ⟨2,3,0,2,4,4⟩ [0,0,0] [0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1850 : BadRow (markedRow ⟨2,3,0,2,4,4⟩ [0,0,0] [0,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1851 : BadRow (markedRow ⟨2,3,0,2,4,4⟩ [0,0,0] [0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1852 : BadRow (markedRow ⟨2,3,0,2,4,4⟩ [0,0,0] [1,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1853 : BadRow (markedRow ⟨2,3,0,2,4,4⟩ [0,0,0] [1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1854 : BadRow (markedRow ⟨2,3,0,2,4,4⟩ [0,0,0] [1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1855 : BadRow (markedRow ⟨2,3,0,2,4,4⟩ [0,0,0] [1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1856 : BadRow (markedRow ⟨2,3,0,2,4,4⟩ [0,0,0] [1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1857 : BadRow (markedRow ⟨2,3,0,2,4,4⟩ [0,0,0] [1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1858 : BadRow (markedRow ⟨2,3,0,2,4,4⟩ [0,0,0] [1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1859 : BadRow (markedRow ⟨2,3,0,2,4,4⟩ [0,0,0] [2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1860 : BadRow (markedRow ⟨2,3,0,2,4,4⟩ [0,0,0] [2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1861 : BadRow (markedRow ⟨2,3,0,2,4,4⟩ [0,0,0] [2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
