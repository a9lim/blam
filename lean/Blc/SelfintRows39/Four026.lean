import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem row156 : BadRow (row ⟨0,3,0,3,4,3⟩ [0,0,0] [1,1,1,0]) := by
  have h : row ⟨0,3,0,3,4,3⟩ [0,0,0] [1,1,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v700952143770 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0)))))))))
private theorem no_v700952143770 : ¬ MinimalInterpreter v700952143770 :=
  cost_cut false 2 (by decide)
private def v700952143338 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0))))))))
private theorem no_v700952143338 : ¬ MinimalInterpreter v700952143338 :=
  cost_cut false 2 (by decide)
private def v700952132506 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))))
private theorem no_v700952132506 : ¬ MinimalInterpreter v700952132506 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v700952132074 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0)))))))
private theorem no_v700952132074 : ¬ MinimalInterpreter v700952132074 :=
  cost_cut false 2 (by decide)
private def v700952129258 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))))
private theorem no_v700952129258 : ¬ MinimalInterpreter v700952129258 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v699341531034 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0)))))))))
private theorem no_v699341531034 : ¬ MinimalInterpreter v699341531034 :=
  chain_cut false 3 (by decide)
private def v699341530602 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0))))))))
private theorem no_v699341530602 : ¬ MinimalInterpreter v699341530602 :=
  chain_cut false 3 (by decide)
private def v699341519770 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))))
private theorem no_v699341519770 : ¬ MinimalInterpreter v699341519770 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v699341519338 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0)))))))
private theorem no_v699341519338 : ¬ MinimalInterpreter v699341519338 :=
  chain_cut false 3 (by decide)
private def v699341516522 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))))
private theorem no_v699341516522 : ¬ MinimalInterpreter v699341516522 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
theorem row157 : BadRow (row ⟨0,3,0,3,4,3⟩ [0,0,0] [1,2,0,0]) := by
  have h : row ⟨0,3,0,3,4,3⟩ [0,0,0] [1,2,0,0] = [v700952143770,v700952143338,v700952132506,v700952132074,v700952129258,v699341531034,v699341530602,v699341519770,v699341519338,v699341516522] := by decide +kernel
  rw [h]
  exact (.cons (no_v700952143770) (.cons (no_v700952143338) (.cons (no_v700952132506) (.cons (no_v700952132074) (.cons (no_v700952129258) (.cons (no_v699341531034) (.cons (no_v699341530602) (.cons (no_v699341519770) (.cons (no_v699341519338) (.cons (no_v699341516522) .nil))))))))))

private def v700952146742 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1)))))))))
private theorem no_v700952146742 : ¬ MinimalInterpreter v700952146742 :=
  cost_cut false 2 (by decide)
private def v700952146646 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1))))))))
private theorem no_v700952146646 : ¬ MinimalInterpreter v700952146646 :=
  cost_cut false 2 (by decide)
private def v700952132918 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1))))))))
private theorem no_v700952132918 : ¬ MinimalInterpreter v700952132918 :=
  cost_cut false 2 (by decide)
private def v700952132822 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1)))))))
private theorem no_v700952132822 : ¬ MinimalInterpreter v700952132822 :=
  cost_cut false 2 (by decide)
private def v700952129366 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1)))))))
private theorem no_v700952129366 : ¬ MinimalInterpreter v700952129366 :=
  cost_cut false 2 (by decide)
private def v699341534006 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1)))))))))
private theorem no_v699341534006 : ¬ MinimalInterpreter v699341534006 :=
  chain_cut false 3 (by decide)
private def v699341533910 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1))))))))
private theorem no_v699341533910 : ¬ MinimalInterpreter v699341533910 :=
  chain_cut false 3 (by decide)
private def v699341520182 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1))))))))
private theorem no_v699341520182 : ¬ MinimalInterpreter v699341520182 :=
  chain_cut false 3 (by decide)
private def v699341520086 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1)))))))
private theorem no_v699341520086 : ¬ MinimalInterpreter v699341520086 :=
  chain_cut false 3 (by decide)
private def v699341516630 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1)))))))
private theorem no_v699341516630 : ¬ MinimalInterpreter v699341516630 :=
  chain_cut false 3 (by decide)
theorem row158 : BadRow (row ⟨0,3,0,3,4,3⟩ [0,0,0] [2,0,0,1]) := by
  have h : row ⟨0,3,0,3,4,3⟩ [0,0,0] [2,0,0,1] = [v700952146742,v700952146646,v700952132918,v700952132822,v700952129366,v699341534006,v699341533910,v699341520182,v699341520086,v699341516630] := by decide +kernel
  rw [h]
  exact (.cons (no_v700952146742) (.cons (no_v700952146646) (.cons (no_v700952132918) (.cons (no_v700952132822) (.cons (no_v700952129366) (.cons (no_v699341534006) (.cons (no_v699341533910) (.cons (no_v699341520182) (.cons (no_v699341520086) (.cons (no_v699341516630) .nil))))))))))

private def v700952146746 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0)))))))))
private theorem no_v700952146746 : ¬ MinimalInterpreter v700952146746 :=
  cost_cut false 2 (by decide)
private def v700952146650 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0))))))))
private theorem no_v700952146650 : ¬ MinimalInterpreter v700952146650 :=
  cost_cut false 2 (by decide)
private def v700952132922 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0))))))))
private theorem no_v700952132922 : ¬ MinimalInterpreter v700952132922 :=
  cost_cut false 2 (by decide)
private def v700952132826 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0)))))))
private theorem no_v700952132826 : ¬ MinimalInterpreter v700952132826 :=
  cost_cut false 2 (by decide)
private def v700952129370 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0)))))))
private theorem no_v700952129370 : ¬ MinimalInterpreter v700952129370 :=
  cost_cut false 2 (by decide)
private def v699341534010 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0)))))))))
private theorem no_v699341534010 : ¬ MinimalInterpreter v699341534010 :=
  chain_cut false 3 (by decide)
private def v699341533914 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0))))))))
private theorem no_v699341533914 : ¬ MinimalInterpreter v699341533914 :=
  chain_cut false 3 (by decide)
private def v699341520186 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0))))))))
private theorem no_v699341520186 : ¬ MinimalInterpreter v699341520186 :=
  chain_cut false 3 (by decide)
private def v699341520090 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0)))))))
private theorem no_v699341520090 : ¬ MinimalInterpreter v699341520090 :=
  chain_cut false 3 (by decide)
private def v699341516634 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0)))))))
private theorem no_v699341516634 : ¬ MinimalInterpreter v699341516634 :=
  chain_cut false 3 (by decide)
theorem row159 : BadRow (row ⟨0,3,0,3,4,3⟩ [0,0,0] [2,0,1,0]) := by
  have h : row ⟨0,3,0,3,4,3⟩ [0,0,0] [2,0,1,0] = [v700952146746,v700952146650,v700952132922,v700952132826,v700952129370,v699341534010,v699341533914,v699341520186,v699341520090,v699341516634] := by decide +kernel
  rw [h]
  exact (.cons (no_v700952146746) (.cons (no_v700952146650) (.cons (no_v700952132922) (.cons (no_v700952132826) (.cons (no_v700952129370) (.cons (no_v699341534010) (.cons (no_v699341533914) (.cons (no_v699341520186) (.cons (no_v699341520090) (.cons (no_v699341516634) .nil))))))))))

private def v700952146842 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0)))))))))
private theorem no_v700952146842 : ¬ MinimalInterpreter v700952146842 :=
  cost_cut false 2 (by decide)
private def v700952146666 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0))))))))
private theorem no_v700952146666 : ¬ MinimalInterpreter v700952146666 :=
  cost_cut false 2 (by decide)
private def v700952133018 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))))))
private theorem no_v700952133018 : ¬ MinimalInterpreter v700952133018 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v700952132842 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0)))))))
private theorem no_v700952132842 : ¬ MinimalInterpreter v700952132842 :=
  cost_cut false 2 (by decide)
private def v700952129386 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))))))
private theorem no_v700952129386 : ¬ MinimalInterpreter v700952129386 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v699341534106 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0)))))))))
private theorem no_v699341534106 : ¬ MinimalInterpreter v699341534106 :=
  chain_cut false 3 (by decide)
private def v699341533930 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0))))))))
private theorem no_v699341533930 : ¬ MinimalInterpreter v699341533930 :=
  chain_cut false 3 (by decide)
private def v699341520282 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))))))
private theorem no_v699341520282 : ¬ MinimalInterpreter v699341520282 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v699341520106 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0)))))))
private theorem no_v699341520106 : ¬ MinimalInterpreter v699341520106 :=
  chain_cut false 3 (by decide)
private def v699341516650 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))))))
private theorem no_v699341516650 : ¬ MinimalInterpreter v699341516650 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
theorem row160 : BadRow (row ⟨0,3,0,3,4,3⟩ [0,0,0] [2,1,0,0]) := by
  have h : row ⟨0,3,0,3,4,3⟩ [0,0,0] [2,1,0,0] = [v700952146842,v700952146666,v700952133018,v700952132842,v700952129386,v699341534106,v699341533930,v699341520282,v699341520106,v699341516650] := by decide +kernel
  rw [h]
  exact (.cons (no_v700952146842) (.cons (no_v700952146666) (.cons (no_v700952133018) (.cons (no_v700952132842) (.cons (no_v700952129386) (.cons (no_v699341534106) (.cons (no_v699341533930) (.cons (no_v699341520282) (.cons (no_v699341520106) (.cons (no_v699341516650) .nil))))))))))

theorem row161 : BadRow (row ⟨0,3,0,3,4,3⟩ [0,0,0] [3,0,0,0]) := by
  have h : row ⟨0,3,0,3,4,3⟩ [0,0,0] [3,0,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows39
