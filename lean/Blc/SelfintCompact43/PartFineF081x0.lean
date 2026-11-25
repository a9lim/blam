import Blc.SelfintCompact43.Base
import Blc.SelfintSliceHints43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

private abbrev uf972 (i : Nat) := Split43.four 10 i ⟨0,2,0,6,4,5⟩ [0,0] [4,0,0,1]

private theorem uf972p0 : BadRow (uf972 0) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf972p1 : BadRow (uf972 1) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf972p2 : BadRow (uf972 2) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf972p3 : BadRow (uf972 3) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf972p4 : BadRow (uf972 4) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf972p5 : BadRow (uf972 5) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf972p6 : BadRow (uf972 6) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf972p7 : BadRow (uf972 7) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf972p8 : BadRow (uf972 8) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf972p9 : BadRow (uf972 9) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

theorem f972 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,5⟩ [0,0] [4,0,0,1]) :=
  Split43.four_cover 10 (by decide) ⟨0,2,0,6,4,5⟩ [0,0] [4,0,0,1] (.cons (uf972p0) (.cons (uf972p1) (.cons (uf972p2) (.cons (uf972p3) (.cons (uf972p4) (.cons (uf972p5) (.cons (uf972p6) (.cons (uf972p7) (.cons (uf972p8) (.cons (uf972p9) .nil))))))))))

private abbrev uf973 (i : Nat) := Split43.four 10 i ⟨0,2,0,6,4,5⟩ [0,0] [4,0,1,0]

private theorem uf973p0 : BadRow (uf973 0) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf973p1 : BadRow (uf973 1) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf973p2 : BadRow (uf973 2) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf973p3 : BadRow (uf973 3) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf973p4 : BadRow (uf973 4) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf973p5 : BadRow (uf973 5) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf973p6 : BadRow (uf973 6) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf973p7 : BadRow (uf973 7) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf973p8 : BadRow (uf973 8) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf973p9 : BadRow (uf973 9) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

theorem f973 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,5⟩ [0,0] [4,0,1,0]) :=
  Split43.four_cover 10 (by decide) ⟨0,2,0,6,4,5⟩ [0,0] [4,0,1,0] (.cons (uf973p0) (.cons (uf973p1) (.cons (uf973p2) (.cons (uf973p3) (.cons (uf973p4) (.cons (uf973p5) (.cons (uf973p6) (.cons (uf973p7) (.cons (uf973p8) (.cons (uf973p9) .nil))))))))))

private abbrev uf974 (i : Nat) := Split43.four 10 i ⟨0,2,0,6,4,5⟩ [0,0] [4,1,0,0]

private theorem uf974p0 : BadRow (uf974 0) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf974p1 : BadRow (uf974 1) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf974p2 : BadRow (uf974 2) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf974p3 : BadRow (uf974 3) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf974p4 : BadRow (uf974 4) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf974p5 : BadRow (uf974 5) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf974p6 : BadRow (uf974 6) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf974p7 : BadRow (uf974 7) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf974p8 : BadRow (uf974 8) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf974p9 : BadRow (uf974 9) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

theorem f974 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,5⟩ [0,0] [4,1,0,0]) :=
  Split43.four_cover 10 (by decide) ⟨0,2,0,6,4,5⟩ [0,0] [4,1,0,0] (.cons (uf974p0) (.cons (uf974p1) (.cons (uf974p2) (.cons (uf974p3) (.cons (uf974p4) (.cons (uf974p5) (.cons (uf974p6) (.cons (uf974p7) (.cons (uf974p8) (.cons (uf974p9) .nil))))))))))


end Blc.SelfintSingleObject.Compact43
