import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f728 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [0,1] [1,0,1,2,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,29,29,29,12] (hard := []) (by decide +kernel) .nil)

theorem f729 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [0,1] [1,0,2,0,2]) :=
  row_of_forall (discharge bank [7,1,1,1,1,7,1,12,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f730 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [0,1] [1,0,2,1,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,29,29,29,12] (hard := []) (by decide +kernel) .nil)

theorem f731 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [0,1] [1,0,2,2,0]) :=
  row_of_forall (discharge bank [7,7,1,7,1,7,7,1,1,7,1,7,1,1] (hard := []) (by decide +kernel) .nil)

theorem f732 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [0,1] [1,1,0,1,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,29,29,29,29,29,29,12] (hard := []) (by decide +kernel) .nil)

theorem f733 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [0,1] [1,1,0,2,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,29,29,29,29,29,29,20,12,12] (hard := []) (by decide +kernel) .nil)

theorem f734 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [0,1] [1,1,1,0,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,29,29,29,29,29,29,29,12,12] (hard := []) (by decide +kernel) .nil)

theorem f735 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [0,1] [1,1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f736 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [0,1] [1,1,1,2,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,29,29,29,29,12] (hard := []) (by decide +kernel) .nil)

theorem f737 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [0,1] [1,1,2,0,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,29,29,29,29,29,29,29,12,15,12] (hard := []) (by decide +kernel) .nil)

theorem f738 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [0,1] [1,1,2,1,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,29,29,29,29,12] (hard := []) (by decide +kernel) .nil)

theorem f739 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [0,1] [1,2,0,0,2]) :=
  row_of_forall (discharge bank [33,33,1,1,16,12,12,12,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f740 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [0,1] [1,2,0,1,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,29,29,29,29,29,12,12] (hard := []) (by decide +kernel) .nil)

theorem f741 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [0,1] [1,2,0,2,0]) :=
  row_of_forall (discharge bank [33,33,27,7,1,12,12,1,1,7,1,1,1,1] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
