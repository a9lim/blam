import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

private abbrev bf608 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,5⟩ [0,0] [0,1,0,2,2]

private theorem f608s0 : BadRow (bf608 0) :=
  row_of_forall (discharge bank [4,4,4,4,24,102] (hard := []) (by decide +kernel) .nil)

private theorem f608s1 : BadRow (bf608 1) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f608s2 : BadRow (bf608 2) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f608s3 : BadRow (bf608 3) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,14,84] (hard := []) (by decide +kernel) .nil)

private theorem f608s4 : BadRow (bf608 4) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f608s5 : BadRow (bf608 5) :=
  row_of_forall (discharge bank [2,2,2,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f608s6 : BadRow (bf608 6) :=
  row_of_forall (discharge bank [2,2,2,2,2,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f608s7 : BadRow (bf608 7) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,37,14,14,14,37,14,14,14] (hard := []) (by decide +kernel) .nil)

theorem f608 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [0,1,0,2,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,5⟩ [0,0] [0,1,0,2,2] (.cons (f608s0) (.cons (f608s1) (.cons (f608s2) (.cons (f608s3) (.cons (f608s4) (.cons (f608s5) (.cons (f608s6) (.cons (f608s7) .nil))))))))

private abbrev bf609 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,5⟩ [0,0] [0,1,0,3,1]

private theorem f609s0 : BadRow (bf609 0) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f609s1 : BadRow (bf609 1) :=
  row_of_forall (discharge bank [2,2,2,2,2,4,4,4,4,4,2,2,4] (hard := []) (by decide +kernel) .nil)

private theorem f609s2 : BadRow (bf609 2) :=
  row_of_forall (discharge bank [2,2,2,2,2,4,2,2,4,2,4,4,4,4,4,11,13,14,147] (hard := []) (by decide +kernel) .nil)

private theorem f609s3 : BadRow (bf609 3) :=
  row_of_forall (discharge bank [2,2,2,4,4,2,2,4,4,4,2,2,14,143] (hard := []) (by decide +kernel) .nil)

private theorem f609s4 : BadRow (bf609 4) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,4,4,2,2,4,4,4,2,2,2,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f609s5 : BadRow (bf609 5) :=
  row_of_forall (discharge bank [2,4,4,2,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f609s6 : BadRow (bf609 6) :=
  row_of_forall (discharge bank [2,2,2,2,2,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f609s7 : BadRow (bf609 7) :=
  row_of_forall (discharge bank [2,4,2,4,4,4,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,7,7,7,7,7,14,37,14] (hard := []) (by decide +kernel) .nil)

theorem f609 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [0,1,0,3,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,5⟩ [0,0] [0,1,0,3,1] (.cons (f609s0) (.cons (f609s1) (.cons (f609s2) (.cons (f609s3) (.cons (f609s4) (.cons (f609s5) (.cons (f609s6) (.cons (f609s7) .nil))))))))

theorem f610 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [0,1,0,4,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7,7,7,7,7,7,7,7,14,14,14,14,11,11,140,58,136] (hard := []) (by decide +kernel) .nil)

private abbrev bf611 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,5⟩ [0,0] [0,1,1,0,3]

private theorem f611s0 : BadRow (bf611 0) :=
  row_of_forall (discharge bank [4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f611s1 : BadRow (bf611 1) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f611s2 : BadRow (bf611 2) :=
  row_of_forall (discharge bank [2,2,4,4,4,4,4,2,2,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f611s3 : BadRow (bf611 3) :=
  row_of_forall (discharge bank [2,2,2,2,2,4,2,2,4,24,47,47,102] (hard := []) (by decide +kernel) .nil)

private theorem f611s4 : BadRow (bf611 4) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,4,2,2,4,2,2,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f611s5 : BadRow (bf611 5) :=
  row_of_forall (discharge bank [2,2] (hard := []) (by decide +kernel) .nil)

private theorem f611s6 : BadRow (bf611 6) :=
  row_of_forall (discharge bank [2,2,2,2,2,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem f611s7 : BadRow (bf611 7) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,7,7,14,14] (hard := []) (by decide +kernel) .nil)

theorem f611 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [0,1,1,0,3]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,5⟩ [0,0] [0,1,1,0,3] (.cons (f611s0) (.cons (f611s1) (.cons (f611s2) (.cons (f611s3) (.cons (f611s4) (.cons (f611s5) (.cons (f611s6) (.cons (f611s7) .nil))))))))


end Blc.SelfintSingleObject.Compact43
