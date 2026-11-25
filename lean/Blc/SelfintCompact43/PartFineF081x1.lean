import Blc.SelfintCompact43.Base
import Blc.SelfintSliceHints43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

private abbrev uf975 (i : Nat) := Split43.four 10 i ⟨0,2,0,6,4,5⟩ [0,0] [5,0,0,0]

private theorem uf975p0 : BadRow (uf975 0) := Split43.tryHints bank [] (hard := []) (by decide +kernel) .nil

private theorem uf975p1 : BadRow (uf975 1) := Split43.tryHints bank [] (hard := []) (by decide +kernel) .nil

private theorem uf975p2 : BadRow (uf975 2) := Split43.tryHints bank [] (hard := []) (by decide +kernel) .nil

private theorem uf975p3 : BadRow (uf975 3) := Split43.tryHints bank [] (hard := []) (by decide +kernel) .nil

private theorem uf975p4 : BadRow (uf975 4) := Split43.tryHints bank [] (hard := []) (by decide +kernel) .nil

private theorem uf975p5 : BadRow (uf975 5) := Split43.tryHints bank [] (hard := []) (by decide +kernel) .nil

private theorem uf975p6 : BadRow (uf975 6) := Split43.tryHints bank [] (hard := []) (by decide +kernel) .nil

private theorem uf975p7 : BadRow (uf975 7) := Split43.tryHints bank [] (hard := []) (by decide +kernel) .nil

private theorem uf975p8 : BadRow (uf975 8) := Split43.tryHints bank [] (hard := []) (by decide +kernel) .nil

private theorem uf975p9 : BadRow (uf975 9) := Split43.tryHints bank [] (hard := []) (by decide +kernel) .nil

theorem f975 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,5⟩ [0,0] [5,0,0,0]) :=
  Split43.four_cover 10 (by decide) ⟨0,2,0,6,4,5⟩ [0,0] [5,0,0,0] (.cons (uf975p0) (.cons (uf975p1) (.cons (uf975p2) (.cons (uf975p3) (.cons (uf975p4) (.cons (uf975p5) (.cons (uf975p6) (.cons (uf975p7) (.cons (uf975p8) (.cons (uf975p9) .nil))))))))))

private abbrev uf976 (i : Nat) := Split43.four 10 i ⟨0,2,0,7,4,3⟩ [0,0] [0,0,0,3]

private theorem uf976p0 : BadRow (uf976 0) := Split43.tryHints bank [] (hard := []) (by decide +kernel) .nil

private theorem uf976p1 : BadRow (uf976 1) := Split43.tryHints bank [] (hard := []) (by decide +kernel) .nil

private theorem uf976p2 : BadRow (uf976 2) := Split43.tryHints bank [] (hard := []) (by decide +kernel) .nil

private theorem uf976p3 : BadRow (uf976 3) := Split43.tryHints bank [] (hard := []) (by decide +kernel) .nil

private theorem uf976p4 : BadRow (uf976 4) := Split43.tryHints bank [] (hard := []) (by decide +kernel) .nil

private theorem uf976p5 : BadRow (uf976 5) := Split43.tryHints bank [] (hard := []) (by decide +kernel) .nil

private theorem uf976p6 : BadRow (uf976 6) := Split43.tryHints bank [] (hard := []) (by decide +kernel) .nil

private theorem uf976p7 : BadRow (uf976 7) := Split43.tryHints bank [] (hard := []) (by decide +kernel) .nil

private theorem uf976p8 : BadRow (uf976 8) := Split43.tryHints bank [] (hard := []) (by decide +kernel) .nil

private theorem uf976p9 : BadRow (uf976 9) := Split43.tryHints bank [] (hard := []) (by decide +kernel) .nil

theorem f976 : BadRow (Grammar43.fourRow ⟨0,2,0,7,4,3⟩ [0,0] [0,0,0,3]) :=
  Split43.four_cover 10 (by decide) ⟨0,2,0,7,4,3⟩ [0,0] [0,0,0,3] (.cons (uf976p0) (.cons (uf976p1) (.cons (uf976p2) (.cons (uf976p3) (.cons (uf976p4) (.cons (uf976p5) (.cons (uf976p6) (.cons (uf976p7) (.cons (uf976p8) (.cons (uf976p9) .nil))))))))))

private abbrev uf977 (i : Nat) := Split43.four 10 i ⟨0,2,0,7,4,3⟩ [0,0] [0,0,1,2]

private theorem uf977p0 : BadRow (uf977 0) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf977p1 : BadRow (uf977 1) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf977p2 : BadRow (uf977 2) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf977p3 : BadRow (uf977 3) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf977p4 : BadRow (uf977 4) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf977p5 : BadRow (uf977 5) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf977p6 : BadRow (uf977 6) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf977p7 : BadRow (uf977 7) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf977p8 : BadRow (uf977 8) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf977p9 : BadRow (uf977 9) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

theorem f977 : BadRow (Grammar43.fourRow ⟨0,2,0,7,4,3⟩ [0,0] [0,0,1,2]) :=
  Split43.four_cover 10 (by decide) ⟨0,2,0,7,4,3⟩ [0,0] [0,0,1,2] (.cons (uf977p0) (.cons (uf977p1) (.cons (uf977p2) (.cons (uf977p3) (.cons (uf977p4) (.cons (uf977p5) (.cons (uf977p6) (.cons (uf977p7) (.cons (uf977p8) (.cons (uf977p9) .nil))))))))))


end Blc.SelfintSingleObject.Compact43
