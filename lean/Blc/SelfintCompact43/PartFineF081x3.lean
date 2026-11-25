import Blc.SelfintCompact43.Base
import Blc.SelfintSliceHints43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

private abbrev uf981 (i : Nat) := Split43.four 10 i ⟨0,2,0,7,4,3⟩ [0,0] [0,1,1,1]

private theorem uf981p0 : BadRow (uf981 0) := Split43.tryHints bank [] (hard := []) (by decide +kernel) .nil

private theorem uf981p1 : BadRow (uf981 1) := Split43.tryHints bank [] (hard := []) (by decide +kernel) .nil

private theorem uf981p2 : BadRow (uf981 2) := Split43.tryHints bank [] (hard := []) (by decide +kernel) .nil

private theorem uf981p3 : BadRow (uf981 3) := Split43.tryHints bank [] (hard := []) (by decide +kernel) .nil

private theorem uf981p4 : BadRow (uf981 4) := Split43.tryHints bank [] (hard := []) (by decide +kernel) .nil

private theorem uf981p5 : BadRow (uf981 5) := Split43.tryHints bank [] (hard := []) (by decide +kernel) .nil

private theorem uf981p6 : BadRow (uf981 6) := Split43.tryHints bank [] (hard := []) (by decide +kernel) .nil

private theorem uf981p7 : BadRow (uf981 7) := Split43.tryHints bank [] (hard := []) (by decide +kernel) .nil

private theorem uf981p8 : BadRow (uf981 8) := Split43.tryHints bank [] (hard := []) (by decide +kernel) .nil

private theorem uf981p9 : BadRow (uf981 9) := Split43.tryHints bank [] (hard := []) (by decide +kernel) .nil

theorem f981 : BadRow (Grammar43.fourRow ⟨0,2,0,7,4,3⟩ [0,0] [0,1,1,1]) :=
  Split43.four_cover 10 (by decide) ⟨0,2,0,7,4,3⟩ [0,0] [0,1,1,1] (.cons (uf981p0) (.cons (uf981p1) (.cons (uf981p2) (.cons (uf981p3) (.cons (uf981p4) (.cons (uf981p5) (.cons (uf981p6) (.cons (uf981p7) (.cons (uf981p8) (.cons (uf981p9) .nil))))))))))

private abbrev uf982 (i : Nat) := Split43.four 10 i ⟨0,2,0,7,4,3⟩ [0,0] [0,1,2,0]

private theorem uf982p0 : BadRow (uf982 0) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf982p1 : BadRow (uf982 1) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf982p2 : BadRow (uf982 2) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf982p3 : BadRow (uf982 3) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf982p4 : BadRow (uf982 4) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf982p5 : BadRow (uf982 5) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf982p6 : BadRow (uf982 6) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf982p7 : BadRow (uf982 7) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf982p8 : BadRow (uf982 8) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf982p9 : BadRow (uf982 9) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

theorem f982 : BadRow (Grammar43.fourRow ⟨0,2,0,7,4,3⟩ [0,0] [0,1,2,0]) :=
  Split43.four_cover 10 (by decide) ⟨0,2,0,7,4,3⟩ [0,0] [0,1,2,0] (.cons (uf982p0) (.cons (uf982p1) (.cons (uf982p2) (.cons (uf982p3) (.cons (uf982p4) (.cons (uf982p5) (.cons (uf982p6) (.cons (uf982p7) (.cons (uf982p8) (.cons (uf982p9) .nil))))))))))

private abbrev uf983 (i : Nat) := Split43.four 10 i ⟨0,2,0,7,4,3⟩ [0,0] [0,2,0,1]

private theorem uf983p0 : BadRow (uf983 0) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf983p1 : BadRow (uf983 1) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf983p2 : BadRow (uf983 2) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf983p3 : BadRow (uf983 3) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf983p4 : BadRow (uf983 4) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf983p5 : BadRow (uf983 5) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf983p6 : BadRow (uf983 6) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf983p7 : BadRow (uf983 7) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf983p8 : BadRow (uf983 8) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

private theorem uf983p9 : BadRow (uf983 9) := Split43.tryHints bank [2] (hard := []) (by decide +kernel) .nil

theorem f983 : BadRow (Grammar43.fourRow ⟨0,2,0,7,4,3⟩ [0,0] [0,2,0,1]) :=
  Split43.four_cover 10 (by decide) ⟨0,2,0,7,4,3⟩ [0,0] [0,2,0,1] (.cons (uf983p0) (.cons (uf983p1) (.cons (uf983p2) (.cons (uf983p3) (.cons (uf983p4) (.cons (uf983p5) (.cons (uf983p6) (.cons (uf983p7) (.cons (uf983p8) (.cons (uf983p9) .nil))))))))))


end Blc.SelfintSingleObject.Compact43
