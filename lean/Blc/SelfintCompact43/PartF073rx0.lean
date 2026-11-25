import Blc.SelfintCompact43.Base
import Blc.SelfintSliceHints43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f876 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,3⟩ [0,0] [0,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private abbrev uf877 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,3⟩ [0,0] [0,1,0,2,0]

private theorem uf877p0 : BadRow (uf877 0) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf877p1 : BadRow (uf877 1) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf877p2 : BadRow (uf877 2) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf877p3 : BadRow (uf877 3) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf877p4 : BadRow (uf877 4) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf877p5 : BadRow (uf877 5) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf877p6 : BadRow (uf877 6) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf877p7 : BadRow (uf877 7) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf877p8 : BadRow (uf877 8) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf877p9 : BadRow (uf877 9) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf877p10 : BadRow (uf877 10) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf877p11 : BadRow (uf877 11) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

theorem f877 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,3⟩ [0,0] [0,1,0,2,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,3⟩ [0,0] [0,1,0,2,0] (.cons (uf877p0) (.cons (uf877p1) (.cons (uf877p2) (.cons (uf877p3) (.cons (uf877p4) (.cons (uf877p5) (.cons (uf877p6) (.cons (uf877p7) (.cons (uf877p8) (.cons (uf877p9) (.cons (uf877p10) (.cons (uf877p11) .nil))))))))))))

theorem f878 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,3⟩ [0,0] [0,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f879 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,3⟩ [0,0] [0,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private abbrev uf880 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,3⟩ [0,0] [0,1,2,0,0]

private theorem uf880p0 : BadRow (uf880 0) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf880p1 : BadRow (uf880 1) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf880p2 : BadRow (uf880 2) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf880p3 : BadRow (uf880 3) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf880p4 : BadRow (uf880 4) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf880p5 : BadRow (uf880 5) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf880p6 : BadRow (uf880 6) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf880p7 : BadRow (uf880 7) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf880p8 : BadRow (uf880 8) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf880p9 : BadRow (uf880 9) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf880p10 : BadRow (uf880 10) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf880p11 : BadRow (uf880 11) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

theorem f880 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,3⟩ [0,0] [0,1,2,0,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,3⟩ [0,0] [0,1,2,0,0] (.cons (uf880p0) (.cons (uf880p1) (.cons (uf880p2) (.cons (uf880p3) (.cons (uf880p4) (.cons (uf880p5) (.cons (uf880p6) (.cons (uf880p7) (.cons (uf880p8) (.cons (uf880p9) (.cons (uf880p10) (.cons (uf880p11) .nil))))))))))))


end Blc.SelfintSingleObject.Compact43
