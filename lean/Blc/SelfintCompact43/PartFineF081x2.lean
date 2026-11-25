import Blc.SelfintCompact43.Base
import Blc.SelfintSliceHints43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

private abbrev uf978 (i : Nat) := Split43.four 10 i ⟨0,2,0,7,4,3⟩ [0,0] [0,0,2,1]

private theorem uf978p0 : BadRow (uf978 0) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf978p1 : BadRow (uf978 1) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf978p2 : BadRow (uf978 2) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf978p3 : BadRow (uf978 3) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf978p4 : BadRow (uf978 4) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf978p5 : BadRow (uf978 5) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf978p6 : BadRow (uf978 6) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf978p7 : BadRow (uf978 7) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf978p8 : BadRow (uf978 8) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf978p9 : BadRow (uf978 9) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

theorem f978 : BadRow (Grammar43.fourRow ⟨0,2,0,7,4,3⟩ [0,0] [0,0,2,1]) :=
  Split43.four_cover 10 (by decide) ⟨0,2,0,7,4,3⟩ [0,0] [0,0,2,1] (.cons (uf978p0) (.cons (uf978p1) (.cons (uf978p2) (.cons (uf978p3) (.cons (uf978p4) (.cons (uf978p5) (.cons (uf978p6) (.cons (uf978p7) (.cons (uf978p8) (.cons (uf978p9) .nil))))))))))

private abbrev uf979 (i : Nat) := Split43.four 10 i ⟨0,2,0,7,4,3⟩ [0,0] [0,0,3,0]

private theorem uf979p0 : BadRow (uf979 0) := Split43.tryHints bank [] (hard := []) (by decide +kernel) .nil

private theorem uf979p1 : BadRow (uf979 1) := Split43.tryHints bank [] (hard := []) (by decide +kernel) .nil

private theorem uf979p2 : BadRow (uf979 2) := Split43.tryHints bank [] (hard := []) (by decide +kernel) .nil

private theorem uf979p3 : BadRow (uf979 3) := Split43.tryHints bank [] (hard := []) (by decide +kernel) .nil

private theorem uf979p4 : BadRow (uf979 4) := Split43.tryHints bank [] (hard := []) (by decide +kernel) .nil

private theorem uf979p5 : BadRow (uf979 5) := Split43.tryHints bank [] (hard := []) (by decide +kernel) .nil

private theorem uf979p6 : BadRow (uf979 6) := Split43.tryHints bank [] (hard := []) (by decide +kernel) .nil

private theorem uf979p7 : BadRow (uf979 7) := Split43.tryHints bank [] (hard := []) (by decide +kernel) .nil

private theorem uf979p8 : BadRow (uf979 8) := Split43.tryHints bank [] (hard := []) (by decide +kernel) .nil

private theorem uf979p9 : BadRow (uf979 9) := Split43.tryHints bank [] (hard := []) (by decide +kernel) .nil

theorem f979 : BadRow (Grammar43.fourRow ⟨0,2,0,7,4,3⟩ [0,0] [0,0,3,0]) :=
  Split43.four_cover 10 (by decide) ⟨0,2,0,7,4,3⟩ [0,0] [0,0,3,0] (.cons (uf979p0) (.cons (uf979p1) (.cons (uf979p2) (.cons (uf979p3) (.cons (uf979p4) (.cons (uf979p5) (.cons (uf979p6) (.cons (uf979p7) (.cons (uf979p8) (.cons (uf979p9) .nil))))))))))

private abbrev uf980 (i : Nat) := Split43.four 10 i ⟨0,2,0,7,4,3⟩ [0,0] [0,1,0,2]

private theorem uf980p0 : BadRow (uf980 0) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf980p1 : BadRow (uf980 1) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf980p2 : BadRow (uf980 2) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf980p3 : BadRow (uf980 3) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf980p4 : BadRow (uf980 4) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf980p5 : BadRow (uf980 5) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf980p6 : BadRow (uf980 6) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf980p7 : BadRow (uf980 7) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf980p8 : BadRow (uf980 8) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf980p9 : BadRow (uf980 9) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

theorem f980 : BadRow (Grammar43.fourRow ⟨0,2,0,7,4,3⟩ [0,0] [0,1,0,2]) :=
  Split43.four_cover 10 (by decide) ⟨0,2,0,7,4,3⟩ [0,0] [0,1,0,2] (.cons (uf980p0) (.cons (uf980p1) (.cons (uf980p2) (.cons (uf980p3) (.cons (uf980p4) (.cons (uf980p5) (.cons (uf980p6) (.cons (uf980p7) (.cons (uf980p8) (.cons (uf980p9) .nil))))))))))


end Blc.SelfintSingleObject.Compact43
