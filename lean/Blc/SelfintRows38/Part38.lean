import Blc.SelfintTwoPending
import Blc.SelfintRare38

namespace Blc.SelfintSingleObject.Rows38
open Term SelfintWireCost SourceRefutations OperandGrammar
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 12000000
private def v70464431734 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 1)))))))))
private theorem no_v70464431734 : ¬ MinimalInterpreter v70464431734 :=
  cost_cut false 1 (by decide)

private def v70464431542 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 1))))))))
private theorem no_v70464431542 : ¬ MinimalInterpreter v70464431542 :=
  cost_cut false 1 (by decide)

private def v70464404086 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 1))))))))
private theorem no_v70464404086 : ¬ MinimalInterpreter v70464404086 :=
  cost_cut false 1 (by decide)

private def v70464403894 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 1)))))))
private theorem no_v70464403894 : ¬ MinimalInterpreter v70464403894 :=
  cost_cut false 1 (by decide)

private def v70464396982 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 1)))))))
private theorem no_v70464396982 : ¬ MinimalInterpreter v70464396982 :=
  cost_cut false 1 (by decide)

private def v70464805318 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.lam (.var 1)))))))))
private theorem no_v70464805318 : ¬ MinimalInterpreter v70464805318 :=
  cost_cut false 1 (by decide)

private def v70464804550 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.lam (.var 1))))))))
private theorem no_v70464804550 : ¬ MinimalInterpreter v70464804550 :=
  cost_cut false 1 (by decide)

private def v70464804406 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.lam (.var 1))) (.var 1)))))))
private theorem no_v70464804406 : ¬ MinimalInterpreter v70464804406 :=
  cost_cut false 1 (by decide)

private def v70464694726 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.lam (.var 1))))))))
private theorem no_v70464694726 : ¬ MinimalInterpreter v70464694726 :=
  cost_cut false 1 (by decide)

private def v70464693958 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.lam (.var 1)))))))
private theorem no_v70464693958 : ¬ MinimalInterpreter v70464693958 :=
  cost_cut false 1 (by decide)

private def v70464666310 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.lam (.var 1)))))))
private theorem no_v70464666310 : ¬ MinimalInterpreter v70464666310 :=
  cost_cut false 1 (by decide)

private def v70464693814 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.lam (.var 1)))) (.var 1))))))
private theorem no_v70464693814 : ¬ MinimalInterpreter v70464693814 :=
  cost_cut false 1 (by decide)

private def v70464666166 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 1))) (.var 1))))))
private theorem no_v70464666166 : ¬ MinimalInterpreter v70464666166 :=
  cost_cut false 1 (by decide)

theorem row228 : BadRow (row ⟨1,2,0,3,4,4⟩ [0,0] [2,0,1,1]) := by
  have h : row ⟨1,2,0,3,4,4⟩ [0,0] [2,0,1,1] = [v70464431734,v70464431542,v70464404086,v70464403894,v70464396982,v70464805318,v70464804550,v70464804406,v70464694726,v70464693958,v70464666310,v70464693814,v70464666166] := by decide
  rw [h]
  exact (.cons (no_v70464431734) (.cons (no_v70464431542) (.cons (no_v70464404086) (.cons (no_v70464403894) (.cons (no_v70464396982) (.cons (no_v70464805318) (.cons (no_v70464804550) (.cons (no_v70464804406) (.cons (no_v70464694726) (.cons (no_v70464693958) (.cons (no_v70464666310) (.cons (no_v70464693814) (.cons (no_v70464666166) .nil)))))))))))))

private def v70464804410 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))))))
private theorem no_v70464804410 : ¬ MinimalInterpreter v70464804410 :=
  cost_cut false 1 (by decide)

private def v70464693818 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.lam (.var 2)))) (.var 0))))))
private theorem no_v70464693818 : ¬ MinimalInterpreter v70464693818 :=
  cost_cut false 1 (by decide)

private def v70464666170 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 2))) (.var 0))))))
private theorem no_v70464666170 : ¬ MinimalInterpreter v70464666170 :=
  cost_cut false 1 (by decide)

theorem row229 : BadRow (row ⟨1,2,0,3,4,4⟩ [0,0] [2,0,2,0]) := by
  have h : row ⟨1,2,0,3,4,4⟩ [0,0] [2,0,2,0] = [v70464804410,v70464693818,v70464666170] := by decide
  rw [h]
  exact (.cons (no_v70464804410) (.cons (no_v70464693818) (.cons (no_v70464666170) .nil)))

private def v70464431926 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 1)))))))))
private theorem no_v70464431926 : ¬ MinimalInterpreter v70464431926 :=
  cost_cut false 1 (by decide)

private def v70464431574 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 1))))))))
private theorem no_v70464431574 : ¬ MinimalInterpreter v70464431574 :=
  cost_cut false 1 (by decide)

private def v70464404278 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 1))))))))
private theorem no_v70464404278 : ¬ MinimalInterpreter v70464404278 :=
  cost_cut false 1 (by decide)

private def v70464403926 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 1)))))))
private theorem no_v70464403926 : ¬ MinimalInterpreter v70464403926 :=
  cost_cut false 1 (by decide)

private def v70464397014 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 1)))))))
private theorem no_v70464397014 : ¬ MinimalInterpreter v70464397014 :=
  cost_cut false 1 (by decide)

private def v70464806086 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.lam (.var 1)))))))))
private theorem no_v70464806086 : ¬ MinimalInterpreter v70464806086 :=
  cost_cut false 1 (by decide)

private def v70464804678 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.lam (.var 1))))))))
private theorem no_v70464804678 : ¬ MinimalInterpreter v70464804678 :=
  cost_cut false 1 (by decide)

private def v70464695494 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.var 1))))))))
private theorem no_v70464695494 : ¬ MinimalInterpreter v70464695494 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.lam (.var 1))))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (so_dead (by decide) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v70464693046 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 1))) (.app (.var 0) (.var 1)))))))
private theorem no_v70464693046 : ¬ MinimalInterpreter v70464693046 :=
  cost_cut false 1 (by decide)

private def v70464694086 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.lam (.var 1)))))))
private theorem no_v70464694086 : ¬ MinimalInterpreter v70464694086 :=
  cost_cut false 1 (by decide)

private def v70464666438 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.var 1)))))))
private theorem no_v70464666438 : ¬ MinimalInterpreter v70464666438 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.var 1))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.lam (.var 1)))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (so_dead (by decide) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v70464665814 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 1))) (.var 0)) (.var 1))))))
private theorem no_v70464665814 : ¬ MinimalInterpreter v70464665814 :=
  cost_cut false 1 (by decide)

theorem row230 : BadRow (row ⟨1,2,0,3,4,4⟩ [0,0] [2,1,0,1]) := by
  have h : row ⟨1,2,0,3,4,4⟩ [0,0] [2,1,0,1] = [v70464431926,v70464431574,v70464404278,v70464403926,v70464397014,v70464806086,v70464804678,v70464695494,v70464693046,v70464694086,v70464666438,v70464665814] := by decide
  rw [h]
  exact (.cons (no_v70464431926) (.cons (no_v70464431574) (.cons (no_v70464404278) (.cons (no_v70464403926) (.cons (no_v70464397014) (.cons (no_v70464806086) (.cons (no_v70464804678) (.cons (no_v70464695494) (.cons (no_v70464693046) (.cons (no_v70464694086) (.cons (no_v70464666438) (.cons (no_v70464665814) .nil))))))))))))

private def v70464431930 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 1) (.var 0)))))))))
private theorem no_v70464431930 : ¬ MinimalInterpreter v70464431930 :=
  cost_cut false 1 (by decide)

private def v70464431578 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 0))))))))
private theorem no_v70464431578 : ¬ MinimalInterpreter v70464431578 :=
  cost_cut false 1 (by decide)

private def v70464404282 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.var 0))))))))
private theorem no_v70464404282 : ¬ MinimalInterpreter v70464404282 :=
  cost_cut false 1 (by decide)

private def v70464403930 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))))))
private theorem no_v70464403930 : ¬ MinimalInterpreter v70464403930 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v70464397018 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)))))))
private theorem no_v70464397018 : ¬ MinimalInterpreter v70464397018 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v70464804634 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.lam (.var 1))) (.var 0)))))))
private theorem no_v70464804634 : ¬ MinimalInterpreter v70464804634 :=
  cost_cut false 1 (by decide)

private def v70464693050 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 1))) (.app (.var 1) (.var 0)))))))
private theorem no_v70464693050 : ¬ MinimalInterpreter v70464693050 :=
  cost_cut false 1 (by decide)

private def v70464694042 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.var 1)))) (.var 0))))))
private theorem no_v70464694042 : ¬ MinimalInterpreter v70464694042 :=
  cost_cut false 1 (by decide)

private def v70464666394 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 1))) (.var 0))))))
private theorem no_v70464666394 : ¬ MinimalInterpreter v70464666394 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.lam (.var 1))) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (so_dead (by decide) (.var 1))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v70464665818 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 1))) (.var 1)) (.var 0))))))
private theorem no_v70464665818 : ¬ MinimalInterpreter v70464665818 :=
  cost_cut false 1 (by decide)

theorem row231 : BadRow (row ⟨1,2,0,3,4,4⟩ [0,0] [2,1,1,0]) := by
  have h : row ⟨1,2,0,3,4,4⟩ [0,0] [2,1,1,0] = [v70464431930,v70464431578,v70464404282,v70464403930,v70464397018,v70464804634,v70464693050,v70464694042,v70464666394,v70464665818] := by decide
  rw [h]
  exact (.cons (no_v70464431930) (.cons (no_v70464431578) (.cons (no_v70464404282) (.cons (no_v70464403930) (.cons (no_v70464397018) (.cons (no_v70464804634) (.cons (no_v70464693050) (.cons (no_v70464694042) (.cons (no_v70464666394) (.cons (no_v70464665818) .nil))))))))))

private def v70464693146 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 2))) (.app (.var 0) (.var 0)))))))
private theorem no_v70464693146 : ¬ MinimalInterpreter v70464693146 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 2))) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.lam (.var 2))) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.app (.var 0) (.var 0))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v70464665834 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 0)) (.var 0))))))
private theorem no_v70464665834 : ¬ MinimalInterpreter v70464665834 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.var 0)) (.var 0)) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem row232 : BadRow (row ⟨1,2,0,3,4,4⟩ [0,0] [2,2,0,0]) := by
  have h : row ⟨1,2,0,3,4,4⟩ [0,0] [2,2,0,0] = [v70464693146,v70464665834] := by decide
  rw [h]
  exact (.cons (no_v70464693146) (.cons (no_v70464665834) .nil))

private def v70464434998 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.app (.var 0) (.var 1)))))))))
private theorem no_v70464434998 : ¬ MinimalInterpreter v70464434998 :=
  cost_cut false 1 (by decide)

private def v70464434902 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 0) (.var 0)) (.var 1))))))))
private theorem no_v70464434902 : ¬ MinimalInterpreter v70464434902 :=
  cost_cut false 1 (by decide)

private def v70464404790 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.app (.var 0) (.var 1))))))))
private theorem no_v70464404790 : ¬ MinimalInterpreter v70464404790 :=
  cost_cut false 1 (by decide)

private def v70464404694 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 0) (.var 0))) (.var 1)))))))
private theorem no_v70464404694 : ¬ MinimalInterpreter v70464404694 :=
  cost_cut false 1 (by decide)

private def v70464397142 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 0)) (.var 0)) (.var 1)))))))
private theorem no_v70464397142 : ¬ MinimalInterpreter v70464397142 :=
  cost_cut false 1 (by decide)

theorem row233 : BadRow (row ⟨1,2,0,3,4,4⟩ [0,0] [3,0,0,1]) := by
  have h : row ⟨1,2,0,3,4,4⟩ [0,0] [3,0,0,1] = [v70464434998,v70464434902,v70464404790,v70464404694,v70464397142] := by decide
  rw [h]
  exact (.cons (no_v70464434998) (.cons (no_v70464434902) (.cons (no_v70464404790) (.cons (no_v70464404694) (.cons (no_v70464397142) .nil)))))

end Blc.SelfintSingleObject.Rows38
