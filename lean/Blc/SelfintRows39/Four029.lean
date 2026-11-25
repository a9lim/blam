import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v701153623290 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 3) (.var 0))))))))))
private theorem no_v701153623290 : ¬ MinimalInterpreter v701153623290 :=
  cost_cut false 2 (by decide)
private def v701153619834 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 3)) (.var 0)))))))))
private theorem no_v701153619834 : ¬ MinimalInterpreter v701153619834 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 3)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 3)) (.var 0)))))) (so_dead (by decide) (.lam (r := (.app (.var 1) (.var 2))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 2) (.var 3)) (.var 0))) (.app (.var 1) (.var 2)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))
private def v701153598714 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 3) (.var 0)))))))))
private theorem no_v701153598714 : ¬ MinimalInterpreter v701153598714 :=
  cost_cut false 2 (by decide)
private def v701153595258 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 3))) (.var 0))))))))
private theorem no_v701153595258 : ¬ MinimalInterpreter v701153595258 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 3))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 3))) (.var 0))))) (so_dead (by decide) (.lam (r := (.app (.var 1) (.var 2))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 2) (.var 3))) (.var 0)) (.app (.var 1) (.var 2)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))
private def v701153589114 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 3)) (.var 0))))))))
private theorem no_v701153589114 : ¬ MinimalInterpreter v701153589114 :=
  cost_cut false 2 (by decide)
private def v701154139386 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.app (.var 3) (.var 0))))))))
private theorem no_v701154139386 : ¬ MinimalInterpreter v701154139386 :=
  chain_cut false 2 (by decide)
private def v701154135930 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.var 3)))) (.var 0)))))))
private theorem no_v701154135930 : ¬ MinimalInterpreter v701154135930 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.var 3)))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.var 3)))) (.var 0)))) (.lam (r := (.lam (.app (.var 1) (.var 2)))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (so_dead (by decide) (.app (.var 2) (.var 3)))) (.var 0)) (so_dead (by decide) (.app (.var 1) (.var 2))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v701154117498 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.var 3)) (.var 0)))))))
private theorem no_v701154117498 : ¬ MinimalInterpreter v701154117498 :=
  chain_cut false 2 (by decide)
private def v701156572410 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 3) (.var 0))))))))))
private theorem no_v701156572410 : ¬ MinimalInterpreter v701156572410 :=
  cost_cut false 2 (by decide)
private def v701156568954 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 3)) (.var 0)))))))))
private theorem no_v701156568954 : ¬ MinimalInterpreter v701156568954 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 3)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 3)) (.var 0)))))) (.app (.var 0) (so_dead (by decide) (.lam (r := (.app (.var 1) (.var 2))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 3)) (.var 0)) (.app (.var 1) (.var 2)) (by decide) (by decide)))) (.var 0) (by decide) (by decide))))))
private def v701156749434 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.lam (.var 3)))) (.var 0)))))))
private theorem no_v701156749434 : ¬ MinimalInterpreter v701156749434 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.lam (.var 3)))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.lam (.var 3)))) (.var 0))))) (.lam (r := (.app (.var 1) (.lam (.lam (.var 2))))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 2) (so_dead (by decide) (so_dead (by decide) (.var 3)))) (.var 0))) (.app (.var 1) (so_dead (by decide) (so_dead (by decide) (.var 2)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156356218 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.lam (.var 3))))) (.var 0))))))
private theorem no_v701156356218 : ¬ MinimalInterpreter v701156356218 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.lam (.var 3))))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.lam (.var 3))))) (.var 0)))) (.lam (r := (.app (.var 1) (.lam (.lam (.var 2))))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 2) (so_dead (by decide) (so_dead (by decide) (.var 3))))) (.var 0)) (.app (.var 1) (so_dead (by decide) (so_dead (by decide) (.var 2)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156257914 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.lam (.var 3)))) (.var 0))))))
private theorem no_v701156257914 : ¬ MinimalInterpreter v701156257914 :=
  chain_cut false 2 (by decide)
private def v701156236410 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.lam (.var 3))) (.var 0))))))
private theorem no_v701156236410 : ¬ MinimalInterpreter v701156236410 :=
  chain_cut false 2 (by decide)
private def v701166009594 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 2) (.app (.var 3) (.var 0))))))))))
private theorem no_v701166009594 : ¬ MinimalInterpreter v701166009594 :=
  cost_cut false 2 (by decide)
private def v701166006138 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.var 3)) (.var 0)))))))))
private theorem no_v701166006138 : ¬ MinimalInterpreter v701166006138 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.var 3)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.var 2) (.var 3)) (.var 0))))) (so_dead (by decide) (.lam (r := (.app (.var 1) (.var 2))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 3)) (.var 0)) (.app (.var 1) (.var 2)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))))
private def v701166186618 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.lam (.lam (.var 3)))) (.var 0)))))))
private theorem no_v701166186618 : ¬ MinimalInterpreter v701166186618 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.lam (.lam (.var 3)))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.lam (.lam (.var 3)))) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.lam (.lam (.var 2))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (so_dead (by decide) (so_dead (by decide) (.var 3)))) (.var 0)) (.app (.var 1) (so_dead (by decide) (so_dead (by decide) (.var 2)))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v701203935354 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.lam (.lam (.var 3)))) (.var 0)))))))
private theorem no_v701203935354 : ¬ MinimalInterpreter v701203935354 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.lam (.lam (.var 3)))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.lam (.lam (.var 3)))) (.var 0)))) (.lam (r := (.app (.var 1) (.lam (.lam (.var 2))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (so_dead (by decide) (so_dead (by decide) (.var 3)))) (.var 0)) (.app (.var 1) (so_dead (by decide) (so_dead (by decide) (.var 2)))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
theorem row174 : BadRow (row ⟨0,2,0,4,4,5⟩ [0,0] [0,2,3,0]) := by
  have h : row ⟨0,2,0,4,4,5⟩ [0,0] [0,2,3,0] = [v701153623290,v701153619834,v701153598714,v701153595258,v701153589114,v701154139386,v701154135930,v701154117498,v701156572410,v701156568954,v701156749434,v701156356218,v701156257914,v701156236410,v701166009594,v701166006138,v701166186618,v701203935354] := by decide +kernel
  rw [h]
  exact (.cons (no_v701153623290) (.cons (no_v701153619834) (.cons (no_v701153598714) (.cons (no_v701153595258) (.cons (no_v701153589114) (.cons (no_v701154139386) (.cons (no_v701154135930) (.cons (no_v701154117498) (.cons (no_v701156572410) (.cons (no_v701156568954) (.cons (no_v701156749434) (.cons (no_v701156356218) (.cons (no_v701156257914) (.cons (no_v701156236410) (.cons (no_v701166009594) (.cons (no_v701166006138) (.cons (no_v701166186618) (.cons (no_v701203935354) .nil))))))))))))))))))

private def v701153623662 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.app (.var 0) (.var 2))))))))))
private theorem no_v701153623662 : ¬ MinimalInterpreter v701153623662 :=
  cost_cut false 2 (by decide)
private def v701153619886 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 0)) (.var 2)))))))))
private theorem no_v701153619886 : ¬ MinimalInterpreter v701153619886 :=
  cost_cut false 2 (by decide)
private def v701153599086 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.app (.var 0) (.var 2)))))))))
private theorem no_v701153599086 : ¬ MinimalInterpreter v701153599086 :=
  cost_cut false 2 (by decide)
private def v701153595310 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.var 0))) (.var 2))))))))
private theorem no_v701153595310 : ¬ MinimalInterpreter v701153595310 :=
  cost_cut false 2 (by decide)
private def v701153589166 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 0)) (.var 2))))))))
private theorem no_v701153589166 : ¬ MinimalInterpreter v701153589166 :=
  cost_cut false 2 (by decide)
private def v701154261390 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.app (.var 0) (.lam (.var 2))))))))))
private theorem no_v701154261390 : ¬ MinimalInterpreter v701154261390 :=
  chain_cut false 2 (by decide)
private def v701154246286 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 0)) (.lam (.var 2)))))))))
private theorem no_v701154246286 : ¬ MinimalInterpreter v701154246286 :=
  chain_cut false 2 (by decide)
private def v701154163086 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.app (.var 0) (.lam (.var 2)))))))))
private theorem no_v701154163086 : ¬ MinimalInterpreter v701154163086 :=
  chain_cut false 2 (by decide)
private def v701154147982 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.var 0))) (.lam (.var 2))))))))
private theorem no_v701154147982 : ¬ MinimalInterpreter v701154147982 :=
  chain_cut false 2 (by decide)
private def v701154123406 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 0)) (.lam (.var 2))))))))
private theorem no_v701154123406 : ¬ MinimalInterpreter v701154123406 :=
  chain_cut false 2 (by decide)
private def v701156572782 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 3) (.app (.var 0) (.var 2))))))))))
private theorem no_v701156572782 : ¬ MinimalInterpreter v701156572782 :=
  cost_cut false 2 (by decide)
private def v701156569006 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 3) (.var 0)) (.var 2)))))))))
private theorem no_v701156569006 : ¬ MinimalInterpreter v701156569006 :=
  cost_cut false 2 (by decide)
private def v701156620686 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 3) (.app (.var 0) (.lam (.var 2))))))))))
private theorem no_v701156620686 : ¬ MinimalInterpreter v701156620686 :=
  chain_cut false 2 (by decide)
private def v701156605582 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.var 0)) (.lam (.var 2)))))))))
private theorem no_v701156605582 : ¬ MinimalInterpreter v701156605582 :=
  chain_cut false 2 (by decide)
private def v701156325774 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.app (.var 0) (.lam (.var 2))))))))
private theorem no_v701156325774 : ¬ MinimalInterpreter v701156325774 :=
  chain_cut false 2 (by decide)
private def v701156302446 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.app (.var 0) (.var 2)))))))
private theorem no_v701156302446 : ¬ MinimalInterpreter v701156302446 :=
  chain_cut false 2 (by decide)
private def v701156236942 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 3))) (.var 0)) (.lam (.var 2)))))))
private theorem no_v701156236942 : ¬ MinimalInterpreter v701156236942 :=
  chain_cut false 2 (by decide)
private def v701156231086 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 0)) (.var 2))))))
private theorem no_v701156231086 : ¬ MinimalInterpreter v701156231086 :=
  chain_cut false 2 (by decide)
private def v701166009966 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.var 2))))))))))
private theorem no_v701166009966 : ¬ MinimalInterpreter v701166009966 :=
  cost_cut false 2 (by decide)
private def v701166006190 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.var 2)))))))))
private theorem no_v701166006190 : ¬ MinimalInterpreter v701166006190 :=
  cost_cut false 2 (by decide)
private def v701203806606 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.lam (.var 2))))))))))
private theorem no_v701203806606 : ¬ MinimalInterpreter v701203806606 :=
  chain_cut false 4 (by decide)
private def v701203791502 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.lam (.var 2)))))))))
private theorem no_v701203791502 : ¬ MinimalInterpreter v701203791502 :=
  chain_cut false 4 (by decide)
theorem row175 : BadRow (row ⟨0,2,0,4,4,5⟩ [0,0] [0,3,0,2]) := by
  have h : row ⟨0,2,0,4,4,5⟩ [0,0] [0,3,0,2] = [v701153623662,v701153619886,v701153599086,v701153595310,v701153589166,v701154261390,v701154246286,v701154163086,v701154147982,v701154123406,v701156572782,v701156569006,v701156620686,v701156605582,v701156325774,v701156302446,v701156236942,v701156231086,v701166009966,v701166006190,v701203806606,v701203791502] := by decide +kernel
  rw [h]
  exact (.cons (no_v701153623662) (.cons (no_v701153619886) (.cons (no_v701153599086) (.cons (no_v701153595310) (.cons (no_v701153589166) (.cons (no_v701154261390) (.cons (no_v701154246286) (.cons (no_v701154163086) (.cons (no_v701154147982) (.cons (no_v701154123406) (.cons (no_v701156572782) (.cons (no_v701156569006) (.cons (no_v701156620686) (.cons (no_v701156605582) (.cons (no_v701156325774) (.cons (no_v701156302446) (.cons (no_v701156236942) (.cons (no_v701156231086) (.cons (no_v701166009966) (.cons (no_v701166006190) (.cons (no_v701203806606) (.cons (no_v701203791502) .nil))))))))))))))))))))))

private def v701153623670 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.app (.var 1) (.var 1))))))))))
private theorem no_v701153623670 : ¬ MinimalInterpreter v701153623670 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.app (.var 1) (.var 1)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))))) (.lam (r := (.app (.var 2) (.app (.var 0) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 3) (.app (.var 1) (.var 1)))) (.app (.var 2) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))
private def v701153619894 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 1)) (.var 1)))))))))
private theorem no_v701153619894 : ¬ MinimalInterpreter v701153619894 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 1)) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))))) (.lam (r := (.app (.app (.var 2) (.var 0)) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 3) (.var 1)) (.var 1))) (.app (.app (.var 2) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))
private def v701153599094 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.app (.var 1) (.var 1)))))))))
private theorem no_v701153599094 : ¬ MinimalInterpreter v701153599094 :=
  cost_cut false 2 (by decide)
private def v701153595318 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.var 1))) (.var 1))))))))
private theorem no_v701153595318 : ¬ MinimalInterpreter v701153595318 :=
  cost_cut false 2 (by decide)
private def v701153589174 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 1)) (.var 1))))))))
private theorem no_v701153589174 : ¬ MinimalInterpreter v701153589174 :=
  cost_cut false 2 (by decide)
private def v701154261446 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.app (.var 1) (.lam (.var 1))))))))))
private theorem no_v701154261446 : ¬ MinimalInterpreter v701154261446 :=
  chain_cut false 2 (by decide)
private def v701154246342 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 1)) (.lam (.var 1)))))))))
private theorem no_v701154246342 : ¬ MinimalInterpreter v701154246342 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 1)) (.lam (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 1)))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.lam (.var 1))))) (.app (.var 0) (.app (.app (.var 3) (.var 1)) (so_dead (by decide) (.var 1)))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))
private def v701154246198 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.lam (.var 1))) (.var 1))))))))
private theorem no_v701154246198 : ¬ MinimalInterpreter v701154246198 :=
  chain_cut false 2 (by decide)
private def v701154163142 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.app (.var 1) (.lam (.var 1)))))))))
private theorem no_v701154163142 : ¬ MinimalInterpreter v701154163142 :=
  chain_cut false 2 (by decide)
private def v701154139766 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.app (.var 1) (.var 1))))))))
private theorem no_v701154139766 : ¬ MinimalInterpreter v701154139766 :=
  cost_cut false 2 (by decide)
private def v701154148038 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.var 1))) (.lam (.var 1))))))))
private theorem no_v701154148038 : ¬ MinimalInterpreter v701154148038 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.var 1))) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.var 1))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.lam (.var 1)))) (.app (.app (.var 0) (.app (.var 3) (.var 1))) (so_dead (by decide) (.var 1))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))
private def v701154123462 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 1)) (.lam (.var 1))))))))
private theorem no_v701154123462 : ¬ MinimalInterpreter v701154123462 :=
  chain_cut false 2 (by decide)
private def v701154135990 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 3) (.var 1)))) (.var 1)))))))
private theorem no_v701154135990 : ¬ MinimalInterpreter v701154135990 :=
  cost_cut false 2 (by decide)
private def v701154147894 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.lam (.var 1)))) (.var 1)))))))
private theorem no_v701154147894 : ¬ MinimalInterpreter v701154147894 :=
  chain_cut false 2 (by decide)
private def v701154123318 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.lam (.var 1))) (.var 1)))))))
private theorem no_v701154123318 : ¬ MinimalInterpreter v701154123318 :=
  chain_cut false 2 (by decide)
private def v701154117558 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 3))) (.var 1)) (.var 1)))))))
private theorem no_v701154117558 : ¬ MinimalInterpreter v701154117558 :=
  cost_cut false 2 (by decide)
private def v701156620742 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 3) (.app (.var 1) (.lam (.var 1))))))))))
private theorem no_v701156620742 : ¬ MinimalInterpreter v701156620742 :=
  chain_cut false 2 (by decide)
private def v701156605638 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.var 1)) (.lam (.var 1)))))))))
private theorem no_v701156605638 : ¬ MinimalInterpreter v701156605638 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.var 1)) (.lam (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.lam (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.var 3) (.var 1)) (so_dead (by decide) (.var 1))) (.app (.var 2) (.var 0)) (by decide) (by decide))) (.var 1) (by decide) (by decide))))))
private def v701156605494 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.lam (.var 1))) (.var 1))))))))
private theorem no_v701156605494 : ¬ MinimalInterpreter v701156605494 :=
  chain_cut false 2 (by decide)
private def v701156325830 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.app (.var 1) (.lam (.var 1))))))))
private theorem no_v701156325830 : ¬ MinimalInterpreter v701156325830 :=
  chain_cut false 2 (by decide)
private def v701156236998 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 3))) (.var 1)) (.lam (.var 1)))))))
private theorem no_v701156236998 : ¬ MinimalInterpreter v701156236998 :=
  chain_cut false 2 (by decide)
private def v701156236854 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 3))) (.lam (.var 1))) (.var 1))))))
private theorem no_v701156236854 : ¬ MinimalInterpreter v701156236854 :=
  chain_cut false 2 (by decide)
private def v701203806662 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 3) (.app (.var 1) (.lam (.var 1))))))))))
private theorem no_v701203806662 : ¬ MinimalInterpreter v701203806662 :=
  chain_cut false 4 (by decide)
private def v701203791558 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.var 1)) (.lam (.var 1)))))))))
private theorem no_v701203791558 : ¬ MinimalInterpreter v701203791558 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.var 1)) (.lam (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.lam (.var 1))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.var 3) (.var 1)) (so_dead (by decide) (.var 1))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))
private def v701203791414 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.lam (.var 1))) (.var 1))))))))
private theorem no_v701203791414 : ¬ MinimalInterpreter v701203791414 :=
  chain_cut false 4 (by decide)
theorem row176 : BadRow (row ⟨0,2,0,4,4,5⟩ [0,0] [0,3,1,1]) := by
  have h : row ⟨0,2,0,4,4,5⟩ [0,0] [0,3,1,1] = [v701153623670,v701153619894,v701153599094,v701153595318,v701153589174,v701154261446,v701154246342,v701154246198,v701154163142,v701154139766,v701154148038,v701154123462,v701154135990,v701154147894,v701154123318,v701154117558,v701156620742,v701156605638,v701156605494,v701156325830,v701156236998,v701156236854,v701203806662,v701203791558,v701203791414] := by decide +kernel
  rw [h]
  exact (.cons (no_v701153623670) (.cons (no_v701153619894) (.cons (no_v701153599094) (.cons (no_v701153595318) (.cons (no_v701153589174) (.cons (no_v701154261446) (.cons (no_v701154246342) (.cons (no_v701154246198) (.cons (no_v701154163142) (.cons (no_v701154139766) (.cons (no_v701154148038) (.cons (no_v701154123462) (.cons (no_v701154135990) (.cons (no_v701154147894) (.cons (no_v701154123318) (.cons (no_v701154117558) (.cons (no_v701156620742) (.cons (no_v701156605638) (.cons (no_v701156605494) (.cons (no_v701156325830) (.cons (no_v701156236998) (.cons (no_v701156236854) (.cons (no_v701203806662) (.cons (no_v701203791558) (.cons (no_v701203791414) .nil)))))))))))))))))))))))))

private def v701153623674 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.app (.var 2) (.var 0))))))))))
private theorem no_v701153623674 : ¬ MinimalInterpreter v701153623674 :=
  cost_cut false 2 (by decide)
private def v701153619898 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 2)) (.var 0)))))))))
private theorem no_v701153619898 : ¬ MinimalInterpreter v701153619898 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 2)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 2)) (.var 0)))))) (so_dead (by decide) (.lam (r := (.app (.var 2) (.var 1))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 3) (.var 2)) (.var 0))) (.app (.var 2) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))
private def v701153599098 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.app (.var 2) (.var 0)))))))))
private theorem no_v701153599098 : ¬ MinimalInterpreter v701153599098 :=
  cost_cut false 2 (by decide)
private def v701153595322 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.var 2))) (.var 0))))))))
private theorem no_v701153595322 : ¬ MinimalInterpreter v701153595322 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.var 2))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.var 2))) (.var 0))))) (so_dead (by decide) (.lam (r := (.app (.var 2) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 3) (.var 2))) (.var 0)) (.app (.var 2) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))
private def v701153589178 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 2)) (.var 0))))))))
private theorem no_v701153589178 : ¬ MinimalInterpreter v701153589178 :=
  cost_cut false 2 (by decide)
private def v701154246202 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.lam (.var 2))) (.var 0))))))))
private theorem no_v701154246202 : ¬ MinimalInterpreter v701154246202 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.lam (.var 2))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 2))) (.var 0))))) (.lam (r := (.app (.var 2) (.lam (.var 1)))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 3) (so_dead (by decide) (.var 2))) (.var 0))) (.app (.var 2) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))
private def v701154135994 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 3) (.var 2)))) (.var 0)))))))
private theorem no_v701154135994 : ¬ MinimalInterpreter v701154135994 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 3) (.var 2)))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.lam (.app (.var 3) (.var 2)))) (.var 0)))) (.lam (r := (.lam (.app (.var 2) (.var 1)))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (so_dead (by decide) (.app (.var 3) (.var 2)))) (.var 0)) (so_dead (by decide) (.app (.var 2) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v701154147898 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.lam (.var 2)))) (.var 0)))))))
private theorem no_v701154147898 : ¬ MinimalInterpreter v701154147898 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.lam (.var 2)))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 2)))) (.var 0)))) (.lam (r := (.app (.var 2) (.lam (.var 1)))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 3) (so_dead (by decide) (.var 2)))) (.var 0)) (.app (.var 2) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))
private def v701154123322 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.lam (.var 2))) (.var 0)))))))
private theorem no_v701154123322 : ¬ MinimalInterpreter v701154123322 :=
  chain_cut false 2 (by decide)
private def v701156572794 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 3) (.app (.var 2) (.var 0))))))))))
private theorem no_v701156572794 : ¬ MinimalInterpreter v701156572794 :=
  cost_cut false 2 (by decide)
private def v701156569018 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 3) (.var 2)) (.var 0)))))))))
private theorem no_v701156569018 : ¬ MinimalInterpreter v701156569018 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 3) (.var 2)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.lam (.app (.app (.var 3) (.var 2)) (.var 0)))))) (.app (.var 0) (so_dead (by decide) (.lam (r := (.app (.var 2) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 3) (.var 2)) (.var 0)) (.app (.var 2) (.var 1)) (by decide) (by decide)))) (.var 0) (by decide) (by decide))))))
private def v701156605498 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.lam (.var 2))) (.var 0))))))))
private theorem no_v701156605498 : ¬ MinimalInterpreter v701156605498 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.lam (.var 2))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.lam (.var 2))) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 2) (.lam (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 3) (so_dead (by decide) (.var 2))) (.var 0)) (.app (.var 2) (so_dead (by decide) (.var 1))) (by decide) (by decide))) (.var 1) (by decide) (by decide))))))
private def v701156302458 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.app (.var 2) (.var 0)))))))
private theorem no_v701156302458 : ¬ MinimalInterpreter v701156302458 :=
  chain_cut false 2 (by decide)
private def v701156236858 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 3))) (.lam (.var 2))) (.var 0))))))
private theorem no_v701156236858 : ¬ MinimalInterpreter v701156236858 :=
  chain_cut false 2 (by decide)
private def v701156231098 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 2)) (.var 0))))))
private theorem no_v701156231098 : ¬ MinimalInterpreter v701156231098 :=
  chain_cut false 2 (by decide)
private def v701166009978 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 3) (.app (.var 2) (.var 0))))))))))
private theorem no_v701166009978 : ¬ MinimalInterpreter v701166009978 :=
  cost_cut false 2 (by decide)
private def v701166006202 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.var 2)) (.var 0)))))))))
private theorem no_v701166006202 : ¬ MinimalInterpreter v701166006202 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.var 2)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.var 3) (.var 2)) (.var 0))))) (so_dead (by decide) (.lam (r := (.app (.var 2) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 3) (.var 2)) (.var 0)) (.app (.var 2) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))))
private def v701203791418 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.lam (.var 2))) (.var 0))))))))
private theorem no_v701203791418 : ¬ MinimalInterpreter v701203791418 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.lam (.var 2))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 2) (.lam (.var 2))) (.var 0)))) (.lam (r := (.app (.var 2) (.lam (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 3) (so_dead (by decide) (.var 2))) (.var 0)) (.app (.var 2) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))
theorem row177 : BadRow (row ⟨0,2,0,4,4,5⟩ [0,0] [0,3,2,0]) := by
  have h : row ⟨0,2,0,4,4,5⟩ [0,0] [0,3,2,0] = [v701153623674,v701153619898,v701153599098,v701153595322,v701153589178,v701154246202,v701154135994,v701154147898,v701154123322,v701156572794,v701156569018,v701156605498,v701156302458,v701156236858,v701156231098,v701166009978,v701166006202,v701203791418] := by decide +kernel
  rw [h]
  exact (.cons (no_v701153623674) (.cons (no_v701153619898) (.cons (no_v701153599098) (.cons (no_v701153595322) (.cons (no_v701153589178) (.cons (no_v701154246202) (.cons (no_v701154135994) (.cons (no_v701154147898) (.cons (no_v701154123322) (.cons (no_v701156572794) (.cons (no_v701156569018) (.cons (no_v701156605498) (.cons (no_v701156302458) (.cons (no_v701156236858) (.cons (no_v701156231098) (.cons (no_v701166009978) (.cons (no_v701166006202) (.cons (no_v701203791418) .nil))))))))))))))))))

private def v701153623862 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 4) (.app (.var 0) (.var 1))))))))))
private theorem no_v701153623862 : ¬ MinimalInterpreter v701153623862 :=
  chain_cut false 2 (by decide)
private def v701153619926 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 4) (.var 0)) (.var 1)))))))))
private theorem no_v701153619926 : ¬ MinimalInterpreter v701153619926 :=
  chain_cut false 2 (by decide)
private def v701153599286 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 4)) (.app (.var 0) (.var 1)))))))))
private theorem no_v701153599286 : ¬ MinimalInterpreter v701153599286 :=
  chain_cut false 2 (by decide)
private def v701153595350 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 4) (.var 0))) (.var 1))))))))
private theorem no_v701153595350 : ¬ MinimalInterpreter v701153595350 :=
  chain_cut false 2 (by decide)
private def v701153589206 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 4)) (.var 0)) (.var 1))))))))
private theorem no_v701153589206 : ¬ MinimalInterpreter v701153589206 :=
  chain_cut false 2 (by decide)
private def v701154213686 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 4) (.app (.var 0) (.var 1))))))))))
private theorem no_v701154213686 : ¬ MinimalInterpreter v701154213686 :=
  chain_cut false 2 (by decide)
private def v701154209750 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 4) (.var 0)) (.var 1)))))))))
private theorem no_v701154209750 : ¬ MinimalInterpreter v701154209750 :=
  chain_cut false 2 (by decide)
private def v701154139958 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 4))) (.app (.var 0) (.var 1))))))))
private theorem no_v701154139958 : ¬ MinimalInterpreter v701154139958 :=
  chain_cut false 2 (by decide)
private def v701154117590 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 4))) (.var 0)) (.var 1)))))))
private theorem no_v701154117590 : ¬ MinimalInterpreter v701154117590 :=
  chain_cut false 2 (by decide)
private def v701156302646 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 4)))) (.app (.var 0) (.var 1)))))))
private theorem no_v701156302646 : ¬ MinimalInterpreter v701156302646 :=
  chain_cut false 2 (by decide)
private def v701156231126 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 4)))) (.var 0)) (.var 1))))))
private theorem no_v701156231126 : ¬ MinimalInterpreter v701156231126 :=
  chain_cut false 2 (by decide)
private def v701203758902 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.lam (.app (.var 4) (.app (.var 0) (.var 1))))))))))
private theorem no_v701203758902 : ¬ MinimalInterpreter v701203758902 :=
  chain_cut false 4 (by decide)
private def v701203754966 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.lam (.app (.app (.var 4) (.var 0)) (.var 1)))))))))
private theorem no_v701203754966 : ¬ MinimalInterpreter v701203754966 :=
  chain_cut false 4 (by decide)
theorem row178 : BadRow (row ⟨0,2,0,4,4,5⟩ [0,0] [0,4,0,1]) := by
  have h : row ⟨0,2,0,4,4,5⟩ [0,0] [0,4,0,1] = [v701153623862,v701153619926,v701153599286,v701153595350,v701153589206,v701154213686,v701154209750,v701154139958,v701154117590,v701156302646,v701156231126,v701203758902,v701203754966] := by decide +kernel
  rw [h]
  exact (.cons (no_v701153623862) (.cons (no_v701153619926) (.cons (no_v701153599286) (.cons (no_v701153595350) (.cons (no_v701153589206) (.cons (no_v701154213686) (.cons (no_v701154209750) (.cons (no_v701154139958) (.cons (no_v701154117590) (.cons (no_v701156302646) (.cons (no_v701156231126) (.cons (no_v701203758902) (.cons (no_v701203754966) .nil)))))))))))))

private def v701153623866 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 4) (.app (.var 1) (.var 0))))))))))
private theorem no_v701153623866 : ¬ MinimalInterpreter v701153623866 :=
  chain_cut false 2 (by decide)
private def v701153619930 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 4) (.var 1)) (.var 0)))))))))
private theorem no_v701153619930 : ¬ MinimalInterpreter v701153619930 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 4) (.var 1)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (so_dead (by decide) (.lam (r := (.var 2)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (r := (.app (.var 3) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 4) (.var 1)) (.var 0))) (.app (.var 3) (.var 0)) (by decide) (by decide)) (.var 2) (by decide) (by decide)))))))
private def v701153599290 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 4)) (.app (.var 1) (.var 0)))))))))
private theorem no_v701153599290 : ¬ MinimalInterpreter v701153599290 :=
  chain_cut false 2 (by decide)
private def v701153595354 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 4) (.var 1))) (.var 0))))))))
private theorem no_v701153595354 : ¬ MinimalInterpreter v701153595354 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 4) (.var 1))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (so_dead (by decide) (.lam (r := (.var 2)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 3) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 4) (.var 1))) (.var 0)) (.app (.var 3) (.var 0)) (by decide) (by decide)) (.var 2) (by decide) (by decide)))))))
private def v701153589210 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 4)) (.var 1)) (.var 0))))))))
private theorem no_v701153589210 : ¬ MinimalInterpreter v701153589210 :=
  chain_cut false 2 (by decide)
private def v701154213690 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 4) (.app (.var 1) (.var 0))))))))))
private theorem no_v701154213690 : ¬ MinimalInterpreter v701154213690 :=
  chain_cut false 2 (by decide)
private def v701154209754 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 4) (.var 1)) (.var 0)))))))))
private theorem no_v701154209754 : ¬ MinimalInterpreter v701154209754 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 4) (.var 1)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (so_dead (by decide) (.lam (r := (.var 2)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 3) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 4) (.var 1)) (.var 0)) (.app (.var 3) (.var 0)) (by decide) (by decide))) (.var 2) (by decide) (by decide)))))))
private def v701154139962 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 4))) (.app (.var 1) (.var 0))))))))
private theorem no_v701154139962 : ¬ MinimalInterpreter v701154139962 :=
  chain_cut false 2 (by decide)
private def v701154117594 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 4))) (.var 1)) (.var 0)))))))
private theorem no_v701154117594 : ¬ MinimalInterpreter v701154117594 :=
  chain_cut false 2 (by decide)
private def v701156302650 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 4)))) (.app (.var 1) (.var 0)))))))
private theorem no_v701156302650 : ¬ MinimalInterpreter v701156302650 :=
  chain_cut false 2 (by decide)
private def v701156231130 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 4)))) (.var 1)) (.var 0))))))
private theorem no_v701156231130 : ¬ MinimalInterpreter v701156231130 :=
  chain_cut false 2 (by decide)
private def v701203758906 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.lam (.app (.var 4) (.app (.var 1) (.var 0))))))))))
private theorem no_v701203758906 : ¬ MinimalInterpreter v701203758906 :=
  chain_cut false 4 (by decide)
private def v701203754970 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.lam (.app (.app (.var 4) (.var 1)) (.var 0)))))))))
private theorem no_v701203754970 : ¬ MinimalInterpreter v701203754970 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.lam (.app (.app (.var 4) (.var 1)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (so_dead (by decide) (.lam (r := (.var 2)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 3) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 4) (.var 1)) (.var 0)) (.app (.var 3) (.var 0)) (by decide) (by decide)) (.var 2) (by decide) (by decide))))))))
theorem row179 : BadRow (row ⟨0,2,0,4,4,5⟩ [0,0] [0,4,1,0]) := by
  have h : row ⟨0,2,0,4,4,5⟩ [0,0] [0,4,1,0] = [v701153623866,v701153619930,v701153599290,v701153595354,v701153589210,v701154213690,v701154209754,v701154139962,v701154117594,v701156302650,v701156231130,v701203758906,v701203754970] := by decide +kernel
  rw [h]
  exact (.cons (no_v701153623866) (.cons (no_v701153619930) (.cons (no_v701153599290) (.cons (no_v701153595354) (.cons (no_v701153589210) (.cons (no_v701154213690) (.cons (no_v701154209754) (.cons (no_v701154139962) (.cons (no_v701154117594) (.cons (no_v701156302650) (.cons (no_v701156231130) (.cons (no_v701203758906) (.cons (no_v701203754970) .nil)))))))))))))

end Blc.SelfintSingleObject.Rows39
