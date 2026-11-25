import Blc.SelfintTwoPending
import Blc.SelfintRare38

namespace Blc.SelfintSingleObject.Rows38
open Term SelfintWireCost SourceRefutations OperandGrammar
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 12000000
private def v69155802350 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v69155802350 : ¬ MinimalInterpreter v69155802350 :=
  cost_cut false 1 (by decide)

private def v69155801966 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v69155801966 : ¬ MinimalInterpreter v69155801966 :=
  cost_cut false 1 (by decide)

private def v69155779822 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 2)))))))
private theorem no_v69155779822 : ¬ MinimalInterpreter v69155779822 :=
  cost_cut false 1 (by decide)

private def v69155779438 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 2))))))
private theorem no_v69155779438 : ¬ MinimalInterpreter v69155779438 :=
  cost_cut false 1 (by decide)

private def v69155773806 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 2))))))
private theorem no_v69155773806 : ¬ MinimalInterpreter v69155773806 :=
  cost_cut false 1 (by decide)

private def v69156146414 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v69156146414 : ¬ MinimalInterpreter v69156146414 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v69156146030 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v69156146030 : ¬ MinimalInterpreter v69156146030 :=
  cost_cut false 1 (by decide)

theorem row282 : BadRow (row ⟨2,2,0,2,4,4⟩ [0,0] [1,0,1,2]) := by
  have h : row ⟨2,2,0,2,4,4⟩ [0,0] [1,0,1,2] = [v69155802350,v69155801966,v69155779822,v69155779438,v69155773806,v69156146414,v69156146030] := by decide
  rw [h]
  exact (.cons (no_v69155802350) (.cons (no_v69155801966) (.cons (no_v69155779822) (.cons (no_v69155779438) (.cons (no_v69155773806) (.cons (no_v69156146414) (.cons (no_v69156146030) .nil)))))))

private def v69155802358 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v69155802358 : ¬ MinimalInterpreter v69155802358 :=
  cost_cut false 1 (by decide)

private def v69155801974 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v69155801974 : ¬ MinimalInterpreter v69155801974 :=
  cost_cut false 1 (by decide)

private def v69155779830 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 1)))))))
private theorem no_v69155779830 : ¬ MinimalInterpreter v69155779830 :=
  cost_cut false 1 (by decide)

private def v69155779446 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 1))))))
private theorem no_v69155779446 : ¬ MinimalInterpreter v69155779446 :=
  cost_cut false 1 (by decide)

private def v69155773814 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 1))))))
private theorem no_v69155773814 : ¬ MinimalInterpreter v69155773814 :=
  cost_cut false 1 (by decide)

private def v69156146422 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v69156146422 : ¬ MinimalInterpreter v69156146422 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v69156146038 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v69156146038 : ¬ MinimalInterpreter v69156146038 :=
  cost_cut false 1 (by decide)

theorem row283 : BadRow (row ⟨2,2,0,2,4,4⟩ [0,0] [1,0,2,1]) := by
  have h : row ⟨2,2,0,2,4,4⟩ [0,0] [1,0,2,1] = [v69155802358,v69155801974,v69155779830,v69155779446,v69155773814,v69156146422,v69156146038] := by decide
  rw [h]
  exact (.cons (no_v69155802358) (.cons (no_v69155801974) (.cons (no_v69155779830) (.cons (no_v69155779446) (.cons (no_v69155773814) (.cons (no_v69156146422) (.cons (no_v69156146038) .nil)))))))

private def v69155802734 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v69155802734 : ¬ MinimalInterpreter v69155802734 :=
  cost_cut false 1 (by decide)

private def v69155802030 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v69155802030 : ¬ MinimalInterpreter v69155802030 :=
  cost_cut false 1 (by decide)

private def v69155780206 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 2)))))))
private theorem no_v69155780206 : ¬ MinimalInterpreter v69155780206 :=
  cost_cut false 1 (by decide)

private def v69155779502 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 2))))))
private theorem no_v69155779502 : ¬ MinimalInterpreter v69155779502 :=
  cost_cut false 1 (by decide)

private def v69155773870 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 2))))))
private theorem no_v69155773870 : ¬ MinimalInterpreter v69155773870 :=
  cost_cut false 1 (by decide)

private def v69156146798 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v69156146798 : ¬ MinimalInterpreter v69156146798 :=
  cost_cut false 1 (by decide)

private def v69156146094 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v69156146094 : ¬ MinimalInterpreter v69156146094 :=
  cost_cut false 1 (by decide)

theorem row284 : BadRow (row ⟨2,2,0,2,4,4⟩ [0,0] [1,1,0,2]) := by
  have h : row ⟨2,2,0,2,4,4⟩ [0,0] [1,1,0,2] = [v69155802734,v69155802030,v69155780206,v69155779502,v69155773870,v69156146798,v69156146094] := by decide
  rw [h]
  exact (.cons (no_v69155802734) (.cons (no_v69155802030) (.cons (no_v69155780206) (.cons (no_v69155779502) (.cons (no_v69155773870) (.cons (no_v69156146798) (.cons (no_v69156146094) .nil)))))))

theorem row285 : BadRow (row ⟨2,2,0,2,4,4⟩ [0,0] [1,1,1,1]) := by
  have h : row ⟨2,2,0,2,4,4⟩ [0,0] [1,1,1,1] = [] := by decide
  rw [h]
  exact .nil

private def v69155802746 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v69155802746 : ¬ MinimalInterpreter v69155802746 :=
  cost_cut false 1 (by decide)

private def v69155802042 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v69155802042 : ¬ MinimalInterpreter v69155802042 :=
  cost_cut false 1 (by decide)

private def v69155780218 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 0)))))))
private theorem no_v69155780218 : ¬ MinimalInterpreter v69155780218 :=
  cost_cut false 1 (by decide)

private def v69155779514 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0))))))
private theorem no_v69155779514 : ¬ MinimalInterpreter v69155779514 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v69155773882 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0))))))
private theorem no_v69155773882 : ¬ MinimalInterpreter v69155773882 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v69156146810 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v69156146810 : ¬ MinimalInterpreter v69156146810 :=
  cost_cut false 1 (by decide)

private def v69156146106 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v69156146106 : ¬ MinimalInterpreter v69156146106 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

theorem row286 : BadRow (row ⟨2,2,0,2,4,4⟩ [0,0] [1,1,2,0]) := by
  have h : row ⟨2,2,0,2,4,4⟩ [0,0] [1,1,2,0] = [v69155802746,v69155802042,v69155780218,v69155779514,v69155773882,v69156146810,v69156146106] := by decide
  rw [h]
  exact (.cons (no_v69155802746) (.cons (no_v69155802042) (.cons (no_v69155780218) (.cons (no_v69155779514) (.cons (no_v69155773882) (.cons (no_v69156146810) (.cons (no_v69156146106) .nil)))))))

private def v69155802934 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v69155802934 : ¬ MinimalInterpreter v69155802934 :=
  cost_cut false 1 (by decide)

private def v69155802070 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v69155802070 : ¬ MinimalInterpreter v69155802070 :=
  cost_cut false 1 (by decide)

private def v69155780406 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 1)))))))
private theorem no_v69155780406 : ¬ MinimalInterpreter v69155780406 :=
  cost_cut false 1 (by decide)

private def v69155779542 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 1))))))
private theorem no_v69155779542 : ¬ MinimalInterpreter v69155779542 :=
  cost_cut false 1 (by decide)

private def v69155773910 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 1))))))
private theorem no_v69155773910 : ¬ MinimalInterpreter v69155773910 :=
  cost_cut false 1 (by decide)

private def v69156146998 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v69156146998 : ¬ MinimalInterpreter v69156146998 :=
  cost_cut false 1 (by decide)

private def v69156146134 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v69156146134 : ¬ MinimalInterpreter v69156146134 :=
  cost_cut false 1 (by decide)

theorem row287 : BadRow (row ⟨2,2,0,2,4,4⟩ [0,0] [1,2,0,1]) := by
  have h : row ⟨2,2,0,2,4,4⟩ [0,0] [1,2,0,1] = [v69155802934,v69155802070,v69155780406,v69155779542,v69155773910,v69156146998,v69156146134] := by decide
  rw [h]
  exact (.cons (no_v69155802934) (.cons (no_v69155802070) (.cons (no_v69155780406) (.cons (no_v69155779542) (.cons (no_v69155773910) (.cons (no_v69156146998) (.cons (no_v69156146134) .nil)))))))

end Blc.SelfintSingleObject.Rows38
