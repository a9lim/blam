import Blc.SelfintTwoPending
import Blc.SelfintRare38

namespace Blc.SelfintSingleObject.Rows38
open Term SelfintWireCost SourceRefutations OperandGrammar
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 12000000
private def v75698916598 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 1))))))))))
private theorem no_v75698916598 : ¬ MinimalInterpreter v75698916598 :=
  cost_cut false 2 (by decide)

private def v75698916214 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 1)))))))))
private theorem no_v75698916214 : ¬ MinimalInterpreter v75698916214 :=
  cost_cut false 2 (by decide)

private def v75698894070 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 1)))))))))
private theorem no_v75698894070 : ¬ MinimalInterpreter v75698894070 :=
  cost_cut false 2 (by decide)

private def v75698893686 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 1))))))))
private theorem no_v75698893686 : ¬ MinimalInterpreter v75698893686 :=
  cost_cut false 2 (by decide)

private def v75698888054 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 1))))))))
private theorem no_v75698888054 : ¬ MinimalInterpreter v75698888054 :=
  cost_cut false 2 (by decide)

private def v75699260662 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))))
private theorem no_v75699260662 : ¬ MinimalInterpreter v75699260662 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))))

private def v75699260278 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))))
private theorem no_v75699260278 : ¬ MinimalInterpreter v75699260278 :=
  cost_cut false 2 (by decide)

private def v75699270598 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.lam (.var 1))))))))))
private theorem no_v75699270598 : ¬ MinimalInterpreter v75699270598 :=
  cost_cut false 2 (by decide)

private def v75699269062 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.lam (.var 1)))))))))
private theorem no_v75699269062 : ¬ MinimalInterpreter v75699269062 :=
  cost_cut false 2 (by decide)

private def v75699180486 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.lam (.var 1)))))))))
private theorem no_v75699180486 : ¬ MinimalInterpreter v75699180486 :=
  cost_cut false 2 (by decide)

private def v75699178950 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.lam (.var 1))))))))
private theorem no_v75699178950 : ¬ MinimalInterpreter v75699178950 :=
  cost_cut false 2 (by decide)

private def v75699156422 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.lam (.var 1))))))))
private theorem no_v75699156422 : ¬ MinimalInterpreter v75699156422 :=
  cost_cut false 2 (by decide)

theorem row126 : BadRow (row ⟨0,2,0,4,4,4⟩ [0,0] [1,0,2,1]) := by
  have h : row ⟨0,2,0,4,4,4⟩ [0,0] [1,0,2,1] = [v75698916598,v75698916214,v75698894070,v75698893686,v75698888054,v75699260662,v75699260278,v75699270598,v75699269062,v75699180486,v75699178950,v75699156422] := by decide
  rw [h]
  exact (.cons (no_v75698916598) (.cons (no_v75698916214) (.cons (no_v75698894070) (.cons (no_v75698893686) (.cons (no_v75698888054) (.cons (no_v75699260662) (.cons (no_v75699260278) (.cons (no_v75699270598) (.cons (no_v75699269062) (.cons (no_v75699180486) (.cons (no_v75699178950) (.cons (no_v75699156422) .nil))))))))))))

private def v75698916602 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 3) (.var 0))))))))))
private theorem no_v75698916602 : ¬ MinimalInterpreter v75698916602 :=
  cost_cut false 2 (by decide)

private def v75698916218 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 3)) (.var 0)))))))))
private theorem no_v75698916218 : ¬ MinimalInterpreter v75698916218 :=
  cost_cut false 2 (by decide)

private def v75698894074 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 3) (.var 0)))))))))
private theorem no_v75698894074 : ¬ MinimalInterpreter v75698894074 :=
  cost_cut false 2 (by decide)

private def v75698893690 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 3))) (.var 0))))))))
private theorem no_v75698893690 : ¬ MinimalInterpreter v75698893690 :=
  cost_cut false 2 (by decide)

private def v75698888058 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 3)) (.var 0))))))))
private theorem no_v75698888058 : ¬ MinimalInterpreter v75698888058 :=
  cost_cut false 2 (by decide)

private def v75699268730 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))))))
private theorem no_v75699268730 : ¬ MinimalInterpreter v75699268730 :=
  cost_cut false 2 (by decide)

private def v75699178618 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 3)))) (.var 0)))))))
private theorem no_v75699178618 : ¬ MinimalInterpreter v75699178618 :=
  cost_cut false 2 (by decide)

private def v75699156090 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 3))) (.var 0)))))))
private theorem no_v75699156090 : ¬ MinimalInterpreter v75699156090 :=
  cost_cut false 2 (by decide)

theorem row127 : BadRow (row ⟨0,2,0,4,4,4⟩ [0,0] [1,0,3,0]) := by
  have h : row ⟨0,2,0,4,4,4⟩ [0,0] [1,0,3,0] = [v75698916602,v75698916218,v75698894074,v75698893690,v75698888058,v75699268730,v75699178618,v75699156090] := by decide
  rw [h]
  exact (.cons (no_v75698916602) (.cons (no_v75698916218) (.cons (no_v75698894074) (.cons (no_v75698893690) (.cons (no_v75698888058) (.cons (no_v75699268730) (.cons (no_v75699178618) (.cons (no_v75699156090) .nil))))))))

private def v75698916974 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 2))))))))))
private theorem no_v75698916974 : ¬ MinimalInterpreter v75698916974 :=
  cost_cut false 2 (by decide)

private def v75698916270 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 2)))))))))
private theorem no_v75698916270 : ¬ MinimalInterpreter v75698916270 :=
  cost_cut false 2 (by decide)

private def v75698894446 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 2)))))))))
private theorem no_v75698894446 : ¬ MinimalInterpreter v75698894446 :=
  cost_cut false 2 (by decide)

private def v75698893742 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 2))))))))
private theorem no_v75698893742 : ¬ MinimalInterpreter v75698893742 :=
  cost_cut false 2 (by decide)

private def v75698888110 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 2))))))))
private theorem no_v75698888110 : ¬ MinimalInterpreter v75698888110 :=
  cost_cut false 2 (by decide)

private def v75699261038 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))))
private theorem no_v75699261038 : ¬ MinimalInterpreter v75699261038 :=
  cost_cut false 2 (by decide)

private def v75699260334 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))))
private theorem no_v75699260334 : ¬ MinimalInterpreter v75699260334 :=
  cost_cut false 2 (by decide)

private def v75699177070 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 0) (.var 2))))))))
private theorem no_v75699177070 : ¬ MinimalInterpreter v75699177070 :=
  cost_cut false 2 (by decide)

private def v75699155374 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 0)) (.var 2)))))))
private theorem no_v75699155374 : ¬ MinimalInterpreter v75699155374 :=
  cost_cut false 2 (by decide)

theorem row128 : BadRow (row ⟨0,2,0,4,4,4⟩ [0,0] [1,1,0,2]) := by
  have h : row ⟨0,2,0,4,4,4⟩ [0,0] [1,1,0,2] = [v75698916974,v75698916270,v75698894446,v75698893742,v75698888110,v75699261038,v75699260334,v75699177070,v75699155374] := by decide
  rw [h]
  exact (.cons (no_v75698916974) (.cons (no_v75698916270) (.cons (no_v75698894446) (.cons (no_v75698893742) (.cons (no_v75698888110) (.cons (no_v75699261038) (.cons (no_v75699260334) (.cons (no_v75699177070) (.cons (no_v75699155374) .nil)))))))))

theorem row129 : BadRow (row ⟨0,2,0,4,4,4⟩ [0,0] [1,1,1,1]) := by
  have h : row ⟨0,2,0,4,4,4⟩ [0,0] [1,1,1,1] = [] := by decide
  rw [h]
  exact .nil

private def v75698916986 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 2) (.var 0))))))))))
private theorem no_v75698916986 : ¬ MinimalInterpreter v75698916986 :=
  cost_cut false 2 (by decide)

private def v75698916282 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.var 0)))))))))
private theorem no_v75698916282 : ¬ MinimalInterpreter v75698916282 :=
  cost_cut false 2 (by decide)

private def v75698894458 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 0)))))))))
private theorem no_v75698894458 : ¬ MinimalInterpreter v75698894458 :=
  cost_cut false 2 (by decide)

private def v75698893754 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0))))))))
private theorem no_v75698893754 : ¬ MinimalInterpreter v75698893754 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v75698888122 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0))))))))
private theorem no_v75698888122 : ¬ MinimalInterpreter v75698888122 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v75699261050 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))))
private theorem no_v75699261050 : ¬ MinimalInterpreter v75699261050 :=
  cost_cut false 2 (by decide)

private def v75699260346 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))))
private theorem no_v75699260346 : ¬ MinimalInterpreter v75699260346 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))))

private def v75699177082 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 2) (.var 0))))))))
private theorem no_v75699177082 : ¬ MinimalInterpreter v75699177082 :=
  cost_cut false 2 (by decide)

private def v75699155386 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 2)) (.var 0)))))))
private theorem no_v75699155386 : ¬ MinimalInterpreter v75699155386 :=
  cost_cut false 2 (by decide)

theorem row130 : BadRow (row ⟨0,2,0,4,4,4⟩ [0,0] [1,1,2,0]) := by
  have h : row ⟨0,2,0,4,4,4⟩ [0,0] [1,1,2,0] = [v75698916986,v75698916282,v75698894458,v75698893754,v75698888122,v75699261050,v75699260346,v75699177082,v75699155386] := by decide
  rw [h]
  exact (.cons (no_v75698916986) (.cons (no_v75698916282) (.cons (no_v75698894458) (.cons (no_v75698893754) (.cons (no_v75698888122) (.cons (no_v75699261050) (.cons (no_v75699260346) (.cons (no_v75699177082) (.cons (no_v75699155386) .nil)))))))))

private def v75698917174 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 1))))))))))
private theorem no_v75698917174 : ¬ MinimalInterpreter v75698917174 :=
  cost_cut false 2 (by decide)

private def v75698916310 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 1)))))))))
private theorem no_v75698916310 : ¬ MinimalInterpreter v75698916310 :=
  cost_cut false 2 (by decide)

private def v75698894646 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 1)))))))))
private theorem no_v75698894646 : ¬ MinimalInterpreter v75698894646 :=
  cost_cut false 2 (by decide)

private def v75698893782 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 1))))))))
private theorem no_v75698893782 : ¬ MinimalInterpreter v75698893782 :=
  cost_cut false 2 (by decide)

private def v75698888150 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 1))))))))
private theorem no_v75698888150 : ¬ MinimalInterpreter v75698888150 :=
  cost_cut false 2 (by decide)

private def v75699261238 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))))
private theorem no_v75699261238 : ¬ MinimalInterpreter v75699261238 :=
  cost_cut false 2 (by decide)

private def v75699260374 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))))
private theorem no_v75699260374 : ¬ MinimalInterpreter v75699260374 :=
  cost_cut false 2 (by decide)

private def v75699272902 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.lam (.var 1))))))))))
private theorem no_v75699272902 : ¬ MinimalInterpreter v75699272902 :=
  cost_cut false 2 (by decide)

private def v75699269446 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.lam (.var 1)))))))))
private theorem no_v75699269446 : ¬ MinimalInterpreter v75699269446 :=
  cost_cut false 2 (by decide)

private def v75699182790 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.var 1)))))))))
private theorem no_v75699182790 : ¬ MinimalInterpreter v75699182790 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.var 1)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.lam (.var 1))))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (so_dead (by decide) (.var 1)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v75699179334 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.lam (.var 1))))))))
private theorem no_v75699179334 : ¬ MinimalInterpreter v75699179334 :=
  cost_cut false 2 (by decide)

private def v75699156806 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.var 1))))))))
private theorem no_v75699156806 : ¬ MinimalInterpreter v75699156806 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.var 1))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.lam (.var 1)))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (so_dead (by decide) (.var 1))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

theorem row131 : BadRow (row ⟨0,2,0,4,4,4⟩ [0,0] [1,2,0,1]) := by
  have h : row ⟨0,2,0,4,4,4⟩ [0,0] [1,2,0,1] = [v75698917174,v75698916310,v75698894646,v75698893782,v75698888150,v75699261238,v75699260374,v75699272902,v75699269446,v75699182790,v75699179334,v75699156806] := by decide
  rw [h]
  exact (.cons (no_v75698917174) (.cons (no_v75698916310) (.cons (no_v75698894646) (.cons (no_v75698893782) (.cons (no_v75698888150) (.cons (no_v75699261238) (.cons (no_v75699260374) (.cons (no_v75699272902) (.cons (no_v75699269446) (.cons (no_v75699182790) (.cons (no_v75699179334) (.cons (no_v75699156806) .nil))))))))))))

end Blc.SelfintSingleObject.Rows38
