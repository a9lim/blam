import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v688184675950 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v688184675950 : ¬ MinimalInterpreter v688184675950 :=
  cost_cut false 1 (by decide)
private def v688184675246 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v688184675246 : ¬ MinimalInterpreter v688184675246 :=
  cost_cut false 1 (by decide)
private def v688184669806 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2)))))))
private theorem no_v688184669806 : ¬ MinimalInterpreter v688184669806 :=
  cost_cut false 1 (by decide)
private def v688184669102 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2))))))
private theorem no_v688184669102 : ¬ MinimalInterpreter v688184669102 :=
  cost_cut false 1 (by decide)
private def v688184667566 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))))
private theorem no_v688184667566 : ¬ MinimalInterpreter v688184667566 :=
  cost_cut false 1 (by decide)
private def v688184823406 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v688184823406 : ¬ MinimalInterpreter v688184823406 :=
  cost_cut false 1 (by decide)
private def v688184822702 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v688184822702 : ¬ MinimalInterpreter v688184822702 :=
  cost_cut false 1 (by decide)
private def v688185413230 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v688185413230 : ¬ MinimalInterpreter v688185413230 :=
  cost_cut false 1 (by decide)
private def v688185412526 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v688185412526 : ¬ MinimalInterpreter v688185412526 :=
  cost_cut false 1 (by decide)
theorem row534 : BadRow (row ⟨2,2,2,2,4,3⟩ [1,1] [0,1,0,2]) := by
  have h : row ⟨2,2,2,2,4,3⟩ [1,1] [0,1,0,2] = [v688184675950,v688184675246,v688184669806,v688184669102,v688184667566,v688184823406,v688184822702,v688185413230,v688185412526] := by decide +kernel
  rw [h]
  exact (.cons (no_v688184675950) (.cons (no_v688184675246) (.cons (no_v688184669806) (.cons (no_v688184669102) (.cons (no_v688184667566) (.cons (no_v688184823406) (.cons (no_v688184822702) (.cons (no_v688185413230) (.cons (no_v688185412526) .nil)))))))))

theorem row535 : BadRow (row ⟨2,2,2,2,4,3⟩ [1,1] [0,1,1,1]) := by
  have h : row ⟨2,2,2,2,4,3⟩ [1,1] [0,1,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v688184675962 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v688184675962 : ¬ MinimalInterpreter v688184675962 :=
  cost_cut false 1 (by decide)
private def v688184675258 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v688184675258 : ¬ MinimalInterpreter v688184675258 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v688184669818 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0)))))))
private theorem no_v688184669818 : ¬ MinimalInterpreter v688184669818 :=
  cost_cut false 1 (by decide)
private def v688184669114 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))))
private theorem no_v688184669114 : ¬ MinimalInterpreter v688184669114 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v688184667578 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0))))))
private theorem no_v688184667578 : ¬ MinimalInterpreter v688184667578 :=
  cost_cut false 1 (by decide)
private def v688184823418 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v688184823418 : ¬ MinimalInterpreter v688184823418 :=
  cost_cut false 1 (by decide)
private def v688184822714 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v688184822714 : ¬ MinimalInterpreter v688184822714 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v688185413242 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v688185413242 : ¬ MinimalInterpreter v688185413242 :=
  cost_cut false 1 (by decide)
private def v688185412538 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v688185412538 : ¬ MinimalInterpreter v688185412538 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1))))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
theorem row536 : BadRow (row ⟨2,2,2,2,4,3⟩ [1,1] [0,1,2,0]) := by
  have h : row ⟨2,2,2,2,4,3⟩ [1,1] [0,1,2,0] = [v688184675962,v688184675258,v688184669818,v688184669114,v688184667578,v688184823418,v688184822714,v688185413242,v688185412538] := by decide +kernel
  rw [h]
  exact (.cons (no_v688184675962) (.cons (no_v688184675258) (.cons (no_v688184669818) (.cons (no_v688184669114) (.cons (no_v688184667578) (.cons (no_v688184823418) (.cons (no_v688184822714) (.cons (no_v688185413242) (.cons (no_v688185412538) .nil)))))))))

private def v688184676150 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v688184676150 : ¬ MinimalInterpreter v688184676150 :=
  cost_cut false 1 (by decide)
private def v688184675286 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v688184675286 : ¬ MinimalInterpreter v688184675286 :=
  cost_cut false 1 (by decide)
private def v688184670006 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1)))))))
private theorem no_v688184670006 : ¬ MinimalInterpreter v688184670006 :=
  cost_cut false 1 (by decide)
private def v688184669142 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1))))))
private theorem no_v688184669142 : ¬ MinimalInterpreter v688184669142 :=
  cost_cut false 1 (by decide)
private def v688184667606 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))))))
private theorem no_v688184667606 : ¬ MinimalInterpreter v688184667606 :=
  cost_cut false 1 (by decide)
private def v688184823606 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v688184823606 : ¬ MinimalInterpreter v688184823606 :=
  cost_cut false 1 (by decide)
private def v688184822742 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v688184822742 : ¬ MinimalInterpreter v688184822742 :=
  cost_cut false 1 (by decide)
private def v688185413430 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v688185413430 : ¬ MinimalInterpreter v688185413430 :=
  cost_cut false 1 (by decide)
private def v688185412566 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v688185412566 : ¬ MinimalInterpreter v688185412566 :=
  cost_cut false 1 (by decide)
theorem row537 : BadRow (row ⟨2,2,2,2,4,3⟩ [1,1] [0,2,0,1]) := by
  have h : row ⟨2,2,2,2,4,3⟩ [1,1] [0,2,0,1] = [v688184676150,v688184675286,v688184670006,v688184669142,v688184667606,v688184823606,v688184822742,v688185413430,v688185412566] := by decide +kernel
  rw [h]
  exact (.cons (no_v688184676150) (.cons (no_v688184675286) (.cons (no_v688184670006) (.cons (no_v688184669142) (.cons (no_v688184667606) (.cons (no_v688184823606) (.cons (no_v688184822742) (.cons (no_v688185413430) (.cons (no_v688185412566) .nil)))))))))

private def v688184676154 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v688184676154 : ¬ MinimalInterpreter v688184676154 :=
  cost_cut false 1 (by decide)
private def v688184675290 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v688184675290 : ¬ MinimalInterpreter v688184675290 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v688184670010 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0)))))))
private theorem no_v688184670010 : ¬ MinimalInterpreter v688184670010 :=
  cost_cut false 1 (by decide)
private def v688184669146 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))))
private theorem no_v688184669146 : ¬ MinimalInterpreter v688184669146 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v688184667610 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0))))))
private theorem no_v688184667610 : ¬ MinimalInterpreter v688184667610 :=
  cost_cut false 1 (by decide)
private def v688184823610 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v688184823610 : ¬ MinimalInterpreter v688184823610 :=
  cost_cut false 1 (by decide)
private def v688184822746 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v688184822746 : ¬ MinimalInterpreter v688184822746 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v688185413434 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v688185413434 : ¬ MinimalInterpreter v688185413434 :=
  cost_cut false 1 (by decide)
private def v688185412570 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v688185412570 : ¬ MinimalInterpreter v688185412570 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1))))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
theorem row538 : BadRow (row ⟨2,2,2,2,4,3⟩ [1,1] [0,2,1,0]) := by
  have h : row ⟨2,2,2,2,4,3⟩ [1,1] [0,2,1,0] = [v688184676154,v688184675290,v688184670010,v688184669146,v688184667610,v688184823610,v688184822746,v688185413434,v688185412570] := by decide +kernel
  rw [h]
  exact (.cons (no_v688184676154) (.cons (no_v688184675290) (.cons (no_v688184670010) (.cons (no_v688184669146) (.cons (no_v688184667610) (.cons (no_v688184823610) (.cons (no_v688184822746) (.cons (no_v688185413434) (.cons (no_v688185412570) .nil)))))))))

private def v688184682094 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2))))))))
private theorem no_v688184682094 : ¬ MinimalInterpreter v688184682094 :=
  cost_cut false 1 (by decide)
private def v688184681902 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2)))))))
private theorem no_v688184681902 : ¬ MinimalInterpreter v688184681902 :=
  cost_cut false 1 (by decide)
private def v688184670830 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2)))))))
private theorem no_v688184670830 : ¬ MinimalInterpreter v688184670830 :=
  cost_cut false 1 (by decide)
private def v688184670638 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2))))))
private theorem no_v688184670638 : ¬ MinimalInterpreter v688184670638 :=
  cost_cut false 1 (by decide)
private def v688184667822 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))))
private theorem no_v688184667822 : ¬ MinimalInterpreter v688184667822 :=
  cost_cut false 1 (by decide)
theorem row539 : BadRow (row ⟨2,2,2,2,4,3⟩ [1,1] [1,0,0,2]) := by
  have h : row ⟨2,2,2,2,4,3⟩ [1,1] [1,0,0,2] = [v688184682094,v688184681902,v688184670830,v688184670638,v688184667822] := by decide +kernel
  rw [h]
  exact (.cons (no_v688184682094) (.cons (no_v688184681902) (.cons (no_v688184670830) (.cons (no_v688184670638) (.cons (no_v688184667822) .nil)))))

end Blc.SelfintSingleObject.Rows39
