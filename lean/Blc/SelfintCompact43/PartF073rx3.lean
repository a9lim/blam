import Blc.SelfintCompact43.Base
import Blc.SelfintSliceHints43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

private abbrev uf885 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,3⟩ [0,0] [1,0,0,0,2]

private theorem uf885p0 : BadRow (uf885 0) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf885p1 : BadRow (uf885 1) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf885p2 : BadRow (uf885 2) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf885p3 : BadRow (uf885 3) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf885p4 : BadRow (uf885 4) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf885p5 : BadRow (uf885 5) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf885p6 : BadRow (uf885 6) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf885p7 : BadRow (uf885 7) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf885p8 : BadRow (uf885 8) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf885p9 : BadRow (uf885 9) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf885p10 : BadRow (uf885 10) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf885p11 : BadRow (uf885 11) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

theorem f885 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,3⟩ [0,0] [1,0,0,0,2]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,3⟩ [0,0] [1,0,0,0,2] (.cons (uf885p0) (.cons (uf885p1) (.cons (uf885p2) (.cons (uf885p3) (.cons (uf885p4) (.cons (uf885p5) (.cons (uf885p6) (.cons (uf885p7) (.cons (uf885p8) (.cons (uf885p9) (.cons (uf885p10) (.cons (uf885p11) .nil))))))))))))

theorem f886 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,3⟩ [0,0] [1,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private abbrev uf887 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,3⟩ [0,0] [1,0,0,2,0]

private theorem uf887p0 : BadRow (uf887 0) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf887p1 : BadRow (uf887 1) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf887p2 : BadRow (uf887 2) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf887p3 : BadRow (uf887 3) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf887p4 : BadRow (uf887 4) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf887p5 : BadRow (uf887 5) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf887p6 : BadRow (uf887 6) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf887p7 : BadRow (uf887 7) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf887p8 : BadRow (uf887 8) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf887p9 : BadRow (uf887 9) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf887p10 : BadRow (uf887 10) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf887p11 : BadRow (uf887 11) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

theorem f887 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,3⟩ [0,0] [1,0,0,2,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,3⟩ [0,0] [1,0,0,2,0] (.cons (uf887p0) (.cons (uf887p1) (.cons (uf887p2) (.cons (uf887p3) (.cons (uf887p4) (.cons (uf887p5) (.cons (uf887p6) (.cons (uf887p7) (.cons (uf887p8) (.cons (uf887p9) (.cons (uf887p10) (.cons (uf887p11) .nil))))))))))))


end Blc.SelfintSingleObject.Compact43
