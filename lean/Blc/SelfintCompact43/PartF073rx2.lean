import Blc.SelfintCompact43.Base
import Blc.SelfintSliceHints43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

private abbrev uf883 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,3⟩ [0,0] [0,2,1,0,0]

private theorem uf883p0 : BadRow (uf883 0) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf883p1 : BadRow (uf883 1) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf883p2 : BadRow (uf883 2) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf883p3 : BadRow (uf883 3) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf883p4 : BadRow (uf883 4) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf883p5 : BadRow (uf883 5) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf883p6 : BadRow (uf883 6) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf883p7 : BadRow (uf883 7) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf883p8 : BadRow (uf883 8) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf883p9 : BadRow (uf883 9) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf883p10 : BadRow (uf883 10) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf883p11 : BadRow (uf883 11) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

theorem f883 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,3⟩ [0,0] [0,2,1,0,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,3⟩ [0,0] [0,2,1,0,0] (.cons (uf883p0) (.cons (uf883p1) (.cons (uf883p2) (.cons (uf883p3) (.cons (uf883p4) (.cons (uf883p5) (.cons (uf883p6) (.cons (uf883p7) (.cons (uf883p8) (.cons (uf883p9) (.cons (uf883p10) (.cons (uf883p11) .nil))))))))))))

private abbrev uf884 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,3⟩ [0,0] [0,3,0,0,0]

private theorem uf884p0 : BadRow (uf884 0) := Split43.tryHints bank [] (hard := []) (by decide +kernel) .nil

private theorem uf884p1 : BadRow (uf884 1) := Split43.tryHints bank [] (hard := []) (by decide +kernel) .nil

private theorem uf884p2 : BadRow (uf884 2) := Split43.tryHints bank [] (hard := []) (by decide +kernel) .nil

private theorem uf884p3 : BadRow (uf884 3) := Split43.tryHints bank [] (hard := []) (by decide +kernel) .nil

private theorem uf884p4 : BadRow (uf884 4) := Split43.tryHints bank [] (hard := []) (by decide +kernel) .nil

private theorem uf884p5 : BadRow (uf884 5) := Split43.tryHints bank [] (hard := []) (by decide +kernel) .nil

private theorem uf884p6 : BadRow (uf884 6) := Split43.tryHints bank [] (hard := []) (by decide +kernel) .nil

private theorem uf884p7 : BadRow (uf884 7) := Split43.tryHints bank [] (hard := []) (by decide +kernel) .nil

private theorem uf884p8 : BadRow (uf884 8) := Split43.tryHints bank [] (hard := []) (by decide +kernel) .nil

private theorem uf884p9 : BadRow (uf884 9) := Split43.tryHints bank [] (hard := []) (by decide +kernel) .nil

private theorem uf884p10 : BadRow (uf884 10) := Split43.tryHints bank [] (hard := []) (by decide +kernel) .nil

private theorem uf884p11 : BadRow (uf884 11) := Split43.tryHints bank [] (hard := []) (by decide +kernel) .nil

theorem f884 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,3⟩ [0,0] [0,3,0,0,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,3⟩ [0,0] [0,3,0,0,0] (.cons (uf884p0) (.cons (uf884p1) (.cons (uf884p2) (.cons (uf884p3) (.cons (uf884p4) (.cons (uf884p5) (.cons (uf884p6) (.cons (uf884p7) (.cons (uf884p8) (.cons (uf884p9) (.cons (uf884p10) (.cons (uf884p11) .nil))))))))))))


end Blc.SelfintSingleObject.Compact43
