import Blc.SelfintCompact43.Base
import Blc.SelfintSliceHints43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

private abbrev uf881 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,3⟩ [0,0] [0,2,0,0,1]

private theorem uf881p0 : BadRow (uf881 0) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf881p1 : BadRow (uf881 1) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf881p2 : BadRow (uf881 2) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf881p3 : BadRow (uf881 3) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf881p4 : BadRow (uf881 4) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf881p5 : BadRow (uf881 5) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf881p6 : BadRow (uf881 6) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf881p7 : BadRow (uf881 7) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf881p8 : BadRow (uf881 8) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf881p9 : BadRow (uf881 9) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf881p10 : BadRow (uf881 10) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf881p11 : BadRow (uf881 11) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

theorem f881 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,3⟩ [0,0] [0,2,0,0,1]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,3⟩ [0,0] [0,2,0,0,1] (.cons (uf881p0) (.cons (uf881p1) (.cons (uf881p2) (.cons (uf881p3) (.cons (uf881p4) (.cons (uf881p5) (.cons (uf881p6) (.cons (uf881p7) (.cons (uf881p8) (.cons (uf881p9) (.cons (uf881p10) (.cons (uf881p11) .nil))))))))))))

private abbrev uf882 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,3⟩ [0,0] [0,2,0,1,0]

private theorem uf882p0 : BadRow (uf882 0) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf882p1 : BadRow (uf882 1) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf882p2 : BadRow (uf882 2) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf882p3 : BadRow (uf882 3) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf882p4 : BadRow (uf882 4) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf882p5 : BadRow (uf882 5) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf882p6 : BadRow (uf882 6) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf882p7 : BadRow (uf882 7) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf882p8 : BadRow (uf882 8) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf882p9 : BadRow (uf882 9) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf882p10 : BadRow (uf882 10) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf882p11 : BadRow (uf882 11) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

theorem f882 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,3⟩ [0,0] [0,2,0,1,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,3⟩ [0,0] [0,2,0,1,0] (.cons (uf882p0) (.cons (uf882p1) (.cons (uf882p2) (.cons (uf882p3) (.cons (uf882p4) (.cons (uf882p5) (.cons (uf882p6) (.cons (uf882p7) (.cons (uf882p8) (.cons (uf882p9) (.cons (uf882p10) (.cons (uf882p11) .nil))))))))))))


end Blc.SelfintSingleObject.Compact43
