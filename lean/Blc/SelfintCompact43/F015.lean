import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f180 : BadRow (Grammar43.fourRow ⟨0,3,0,2,5,5⟩ [0,0,0] [2,2,0,1,0]) :=
  row_of_forall (discharge bank [1,1,1,1,1,36,36,14,36,14,14,36,14,36,1,1,1,1,1,36,36,14,36,14,14,36,14,36] (hard := []) (by decide +kernel) .nil)

theorem f181 : BadRow (Grammar43.fourRow ⟨0,3,0,2,5,5⟩ [0,0,0] [2,2,1,0,0]) :=
  row_of_forall (discharge bank [1,1,1,1,1,36,36,14,14,36,1,1,1,1,1,36,36,14,48,36] (hard := []) (by decide +kernel) .nil)

theorem f182 : BadRow (Grammar43.fourRow ⟨0,4,0,2,4,5⟩ [0,0,0,0] [0,1,2,2]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,1,1,1,1,14,14,61] (hard := []) (by decide +kernel) .nil)

theorem f183 : BadRow (Grammar43.fourRow ⟨0,4,0,2,4,5⟩ [0,0,0,0] [0,2,1,2]) :=
  row_of_forall (discharge bank [47,47,47,14,14,14,1,1,1,1,1,1,14,14,61] (hard := []) (by decide +kernel) .nil)

theorem f184 : BadRow (Grammar43.fourRow ⟨0,4,0,2,4,5⟩ [0,0,0,0] [0,2,2,1]) :=
  row_of_forall (discharge bank [47,47,47,14,111,110,1,1,1,1,1,1,14,14,61] (hard := []) (by decide +kernel) .nil)

theorem f185 : BadRow (Grammar43.fourRow ⟨0,4,0,2,4,5⟩ [0,0,0,0] [1,0,2,2]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,1,1,14,14,14,14,14,1,1,47,14,14,14,14,14,14,61] (hard := []) (by decide +kernel) .nil)

theorem f186 : BadRow (Grammar43.fourRow ⟨0,4,0,2,4,5⟩ [0,0,0,0] [1,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f187 : BadRow (Grammar43.fourRow ⟨0,4,0,2,4,5⟩ [0,0,0,0] [1,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f188 : BadRow (Grammar43.fourRow ⟨0,4,0,2,4,5⟩ [0,0,0,0] [1,2,0,2]) :=
  row_of_forall (discharge bank [1,1,14,1,1,1,1,14,1,1,14,14,14,14,14,1,1,14,14,14,14,14,14,47,61] (hard := []) (by decide +kernel) .nil)

theorem f189 : BadRow (Grammar43.fourRow ⟨0,4,0,2,4,5⟩ [0,0,0,0] [1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f190 : BadRow (Grammar43.fourRow ⟨0,4,0,2,4,5⟩ [0,0,0,0] [1,2,2,0]) :=
  row_of_forall (discharge bank [1,1,1,1,1,14,14,14,14,1,1,14,14,14,47] (hard := []) (by decide +kernel) .nil)

theorem f191 : BadRow (Grammar43.fourRow ⟨0,4,0,2,4,5⟩ [0,0,0,0] [2,0,1,2]) :=
  row_of_forall (discharge bank [1,1,14,14,47,14,14,14,14,47,1,1,14,14,14,14,14,47,47,77,14,14,14,47,61] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
