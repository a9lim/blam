import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f714 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [0,1] [0,1,1,1,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f715 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [0,1] [0,1,1,2,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f716 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [0,1] [0,1,2,0,2]) :=
  row_of_forall (discharge bank [7,1,1,1,1,7,1,1,1,1,1,1,1,1,7,1,1,1,1,29,29,29,29,29] (hard := []) (by decide +kernel) .nil)

theorem f717 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [0,1] [0,1,2,1,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f718 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [0,1] [0,1,2,2,0]) :=
  row_of_forall (discharge bank [7,7,1,7,7,1,1,7,1,1,7,7,1,29,29,29] (hard := []) (by decide +kernel) .nil)

theorem f719 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [0,1] [0,2,0,1,2]) :=
  row_of_forall (discharge bank [33,33,12,11,16,12,12,12,12,12,12,12,12,12,33,33,1,1,55,29,29,29,29,29] (hard := []) (by decide +kernel) .nil)

theorem f720 (hard : BadRow [Floor42.e1205814877558]) : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [0,1] [0,2,0,2,1]) :=
  row_of_forall (discharge bank [33,33,27,7,12,12,12,12,26,7,11,12,12,0,33,33,1,7,1,29,29,29,29,29] (hard := [Floor42.e1205814877558]) (by decide +kernel) hard)

theorem f721 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [0,1] [0,2,1,0,2]) :=
  row_of_forall (discharge bank [33,33,26,11,16,12,12,26,11,12,11,12,11,11,33,33,1,1,55,29,29,29,29,29] (hard := []) (by decide +kernel) .nil)

theorem f722 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [0,1] [0,2,1,1,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f723 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [0,1] [0,2,1,2,0]) :=
  row_of_forall (discharge bank [33,33,27,12,12,12,11,11,11,50,33,33,1,29,29,29] (hard := []) (by decide +kernel) .nil)

theorem f724 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [0,1] [0,2,2,0,1]) :=
  row_of_forall (discharge bank [33,33,7,7,7,12,12,7,12,7,7,12,7,11,33,33,7,7,7,29,29,29,29,29] (hard := []) (by decide +kernel) .nil)

theorem f725 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [0,1] [0,2,2,1,0]) :=
  row_of_forall (discharge bank [33,33,7,12,12,7,12,11,7,12,33,33,7,29,29,29] (hard := []) (by decide +kernel) .nil)

theorem f726 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [0,1] [1,0,0,2,2]) :=
  row_of_forall (discharge bank [7,1,7,1,1,7,1,7,7,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f727 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [0,1] [1,0,1,1,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,29,29,29] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
