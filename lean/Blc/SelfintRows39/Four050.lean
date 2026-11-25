import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v690685424438 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 1)))))))))
private theorem no_v690685424438 : ¬ MinimalInterpreter v690685424438 :=
  cost_cut false 1 (by decide)
private def v690685424342 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))))))
private theorem no_v690685424342 : ¬ MinimalInterpreter v690685424342 :=
  cost_cut false 1 (by decide)
private def v690685422902 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))))))
private theorem no_v690685422902 : ¬ MinimalInterpreter v690685422902 :=
  cost_cut false 1 (by decide)
private def v690685422806 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))))))
private theorem no_v690685422806 : ¬ MinimalInterpreter v690685422806 :=
  cost_cut false 1 (by decide)
private def v690685422422 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))))))
private theorem no_v690685422422 : ¬ MinimalInterpreter v690685422422 :=
  cost_cut false 1 (by decide)
private def v690685203254 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1))))))))
private theorem no_v690685203254 : ¬ MinimalInterpreter v690685203254 :=
  cost_cut false 1 (by decide)
private def v690685203158 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1)))))))
private theorem no_v690685203158 : ¬ MinimalInterpreter v690685203158 :=
  cost_cut false 1 (by decide)
private def v690685201718 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)))))))
private theorem no_v690685201718 : ¬ MinimalInterpreter v690685201718 :=
  cost_cut false 1 (by decide)
private def v690685146422 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)))))))
private theorem no_v690685146422 : ¬ MinimalInterpreter v690685146422 :=
  cost_cut false 1 (by decide)
private def v690685201622 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 1))))))
private theorem no_v690685201622 : ¬ MinimalInterpreter v690685201622 :=
  cost_cut false 1 (by decide)
private def v690685201238 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 1))))))
private theorem no_v690685201238 : ¬ MinimalInterpreter v690685201238 :=
  cost_cut false 1 (by decide)
private def v690685146326 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 0))) (.var 1))))))
private theorem no_v690685146326 : ¬ MinimalInterpreter v690685146326 :=
  cost_cut false 1 (by decide)
private def v690685145942 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 0)) (.var 1))))))
private theorem no_v690685145942 : ¬ MinimalInterpreter v690685145942 :=
  cost_cut false 1 (by decide)
private def v690685132118 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 0)) (.var 1))))))
private theorem no_v690685132118 : ¬ MinimalInterpreter v690685132118 :=
  cost_cut false 1 (by decide)
theorem row300 : BadRow (row ⟨1,2,0,2,5,3⟩ [0,0] [2,0,0,0,1]) := by
  have h : row ⟨1,2,0,2,5,3⟩ [0,0] [2,0,0,0,1] = [v690685424438,v690685424342,v690685422902,v690685422806,v690685422422,v690685203254,v690685203158,v690685201718,v690685146422,v690685201622,v690685201238,v690685146326,v690685145942,v690685132118] := by decide +kernel
  rw [h]
  exact (.cons (no_v690685424438) (.cons (no_v690685424342) (.cons (no_v690685422902) (.cons (no_v690685422806) (.cons (no_v690685422422) (.cons (no_v690685203254) (.cons (no_v690685203158) (.cons (no_v690685201718) (.cons (no_v690685146422) (.cons (no_v690685201622) (.cons (no_v690685201238) (.cons (no_v690685146326) (.cons (no_v690685145942) (.cons (no_v690685132118) .nil))))))))))))))

private def v690685424442 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 0)))))))))
private theorem no_v690685424442 : ¬ MinimalInterpreter v690685424442 :=
  cost_cut false 1 (by decide)
private def v690685424346 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 0))))))))
private theorem no_v690685424346 : ¬ MinimalInterpreter v690685424346 :=
  cost_cut false 1 (by decide)
private def v690685422906 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))))))
private theorem no_v690685422906 : ¬ MinimalInterpreter v690685422906 :=
  cost_cut false 1 (by decide)
private def v690685422810 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)))))))
private theorem no_v690685422810 : ¬ MinimalInterpreter v690685422810 :=
  cost_cut false 1 (by decide)
private def v690685422426 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))))))
private theorem no_v690685422426 : ¬ MinimalInterpreter v690685422426 :=
  cost_cut false 1 (by decide)
private def v690685203258 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0))))))))
private theorem no_v690685203258 : ¬ MinimalInterpreter v690685203258 :=
  cost_cut false 1 (by decide)
private def v690685203162 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)))))))
private theorem no_v690685203162 : ¬ MinimalInterpreter v690685203162 :=
  cost_cut false 1 (by decide)
private def v690685201722 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)))))))
private theorem no_v690685201722 : ¬ MinimalInterpreter v690685201722 :=
  cost_cut false 1 (by decide)
private def v690685146426 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)))))))
private theorem no_v690685146426 : ¬ MinimalInterpreter v690685146426 :=
  cost_cut false 1 (by decide)
private def v690685201626 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1)))) (.var 0))))))
private theorem no_v690685201626 : ¬ MinimalInterpreter v690685201626 :=
  cost_cut false 1 (by decide)
private def v690685201242 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 0))))))
private theorem no_v690685201242 : ¬ MinimalInterpreter v690685201242 :=
  cost_cut false 1 (by decide)
private def v690685146330 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1))) (.var 0))))))
private theorem no_v690685146330 : ¬ MinimalInterpreter v690685146330 :=
  cost_cut false 1 (by decide)
private def v690685145946 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1)) (.var 0))))))
private theorem no_v690685145946 : ¬ MinimalInterpreter v690685145946 :=
  cost_cut false 1 (by decide)
private def v690685132122 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1)) (.var 0))))))
private theorem no_v690685132122 : ¬ MinimalInterpreter v690685132122 :=
  cost_cut false 1 (by decide)
theorem row301 : BadRow (row ⟨1,2,0,2,5,3⟩ [0,0] [2,0,0,1,0]) := by
  have h : row ⟨1,2,0,2,5,3⟩ [0,0] [2,0,0,1,0] = [v690685424442,v690685424346,v690685422906,v690685422810,v690685422426,v690685203258,v690685203162,v690685201722,v690685146426,v690685201626,v690685201242,v690685146330,v690685145946,v690685132122] := by decide +kernel
  rw [h]
  exact (.cons (no_v690685424442) (.cons (no_v690685424346) (.cons (no_v690685422906) (.cons (no_v690685422810) (.cons (no_v690685422426) (.cons (no_v690685203258) (.cons (no_v690685203162) (.cons (no_v690685201722) (.cons (no_v690685146426) (.cons (no_v690685201626) (.cons (no_v690685201242) (.cons (no_v690685146330) (.cons (no_v690685145946) (.cons (no_v690685132122) .nil))))))))))))))

private def v690685424538 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0)))))))))
private theorem no_v690685424538 : ¬ MinimalInterpreter v690685424538 :=
  cost_cut false 1 (by decide)
private def v690685424362 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))))))))
private theorem no_v690685424362 : ¬ MinimalInterpreter v690685424362 :=
  cost_cut false 1 (by decide)
private def v690685423002 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))))))))
private theorem no_v690685423002 : ¬ MinimalInterpreter v690685423002 :=
  cost_cut false 1 (by decide)
private def v690685422826 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)))))))
private theorem no_v690685422826 : ¬ MinimalInterpreter v690685422826 :=
  cost_cut false 1 (by decide)
private def v690685422442 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0)))))))
private theorem no_v690685422442 : ¬ MinimalInterpreter v690685422442 :=
  cost_cut false 1 (by decide)
private def v690685203354 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 0))))))))
private theorem no_v690685203354 : ¬ MinimalInterpreter v690685203354 :=
  cost_cut false 1 (by decide)
private def v690685203178 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 0)))))))
private theorem no_v690685203178 : ¬ MinimalInterpreter v690685203178 :=
  cost_cut false 1 (by decide)
private def v690685201818 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.app (.var 0) (.var 0)))))))
private theorem no_v690685201818 : ¬ MinimalInterpreter v690685201818 :=
  cost_cut false 1 (by decide)
private def v690685146522 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.app (.var 0) (.var 0)))))))
private theorem no_v690685146522 : ¬ MinimalInterpreter v690685146522 :=
  cost_cut false 1 (by decide)
private def v690685201642 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0)))) (.var 0))))))
private theorem no_v690685201642 : ¬ MinimalInterpreter v690685201642 :=
  cost_cut false 1 (by decide)
private def v690685201258 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0))) (.var 0))))))
private theorem no_v690685201258 : ¬ MinimalInterpreter v690685201258 :=
  cost_cut false 1 (by decide)
private def v690685146346 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0))) (.var 0))))))
private theorem no_v690685146346 : ¬ MinimalInterpreter v690685146346 :=
  cost_cut false 1 (by decide)
private def v690685145962 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0)) (.var 0))))))
private theorem no_v690685145962 : ¬ MinimalInterpreter v690685145962 :=
  cost_cut false 1 (by decide)
private def v690685132138 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0)) (.var 0))))))
private theorem no_v690685132138 : ¬ MinimalInterpreter v690685132138 :=
  cost_cut false 1 (by decide)
theorem row302 : BadRow (row ⟨1,2,0,2,5,3⟩ [0,0] [2,0,1,0,0]) := by
  have h : row ⟨1,2,0,2,5,3⟩ [0,0] [2,0,1,0,0] = [v690685424538,v690685424362,v690685423002,v690685422826,v690685422442,v690685203354,v690685203178,v690685201818,v690685146522,v690685201642,v690685201258,v690685146346,v690685145962,v690685132138] := by decide +kernel
  rw [h]
  exact (.cons (no_v690685424538) (.cons (no_v690685424362) (.cons (no_v690685423002) (.cons (no_v690685422826) (.cons (no_v690685422442) (.cons (no_v690685203354) (.cons (no_v690685203178) (.cons (no_v690685201818) (.cons (no_v690685146522) (.cons (no_v690685201642) (.cons (no_v690685201258) (.cons (no_v690685146346) (.cons (no_v690685145962) (.cons (no_v690685132138) .nil))))))))))))))

private def v690685426074 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))))))))
private theorem no_v690685426074 : ¬ MinimalInterpreter v690685426074 :=
  cost_cut false 1 (by decide)
private def v690685426026 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))))))))
private theorem no_v690685426026 : ¬ MinimalInterpreter v690685426026 :=
  cost_cut false 1 (by decide)
private def v690685423258 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))))))
private theorem no_v690685423258 : ¬ MinimalInterpreter v690685423258 :=
  cost_cut false 1 (by decide)
private def v690685423210 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))))))
private theorem no_v690685423210 : ¬ MinimalInterpreter v690685423210 :=
  cost_cut false 1 (by decide)
private def v690685422506 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)))))))
private theorem no_v690685422506 : ¬ MinimalInterpreter v690685422506 :=
  cost_cut false 1 (by decide)
private def v690685204890 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.app (.var 0) (.var 0))))))))
private theorem no_v690685204890 : ¬ MinimalInterpreter v690685204890 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v690685204842 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 0)))))))
private theorem no_v690685204842 : ¬ MinimalInterpreter v690685204842 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 2) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v690685202074 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.app (.var 0) (.var 0)))))))
private theorem no_v690685202074 : ¬ MinimalInterpreter v690685202074 :=
  cost_cut false 1 (by decide)
private def v690685146778 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 0) (.var 0)))))))
private theorem no_v690685146778 : ¬ MinimalInterpreter v690685146778 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v690685202026 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 0))))))
private theorem no_v690685202026 : ¬ MinimalInterpreter v690685202026 :=
  cost_cut false 1 (by decide)
private def v690685201322 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0))) (.var 0))))))
private theorem no_v690685201322 : ¬ MinimalInterpreter v690685201322 :=
  cost_cut false 1 (by decide)
private def v690685146730 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.var 0))))))
private theorem no_v690685146730 : ¬ MinimalInterpreter v690685146730 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v690685146026 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0)) (.var 0))))))
private theorem no_v690685146026 : ¬ MinimalInterpreter v690685146026 :=
  cost_cut false 1 (by decide)
private def v690685132202 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.var 0))))))
private theorem no_v690685132202 : ¬ MinimalInterpreter v690685132202 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0))) (.app (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem row303 : BadRow (row ⟨1,2,0,2,5,3⟩ [0,0] [2,1,0,0,0]) := by
  have h : row ⟨1,2,0,2,5,3⟩ [0,0] [2,1,0,0,0] = [v690685426074,v690685426026,v690685423258,v690685423210,v690685422506,v690685204890,v690685204842,v690685202074,v690685146778,v690685202026,v690685201322,v690685146730,v690685146026,v690685132202] := by decide +kernel
  rw [h]
  exact (.cons (no_v690685426074) (.cons (no_v690685426026) (.cons (no_v690685423258) (.cons (no_v690685423210) (.cons (no_v690685422506) (.cons (no_v690685204890) (.cons (no_v690685204842) (.cons (no_v690685202074) (.cons (no_v690685146778) (.cons (no_v690685202026) (.cons (no_v690685201322) (.cons (no_v690685146730) (.cons (no_v690685146026) (.cons (no_v690685132202) .nil))))))))))))))

private def v690634149102 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v690634149102 : ¬ MinimalInterpreter v690634149102 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v690634148718 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v690634148718 : ¬ MinimalInterpreter v690634148718 :=
  cost_cut false 1 (by decide)
private def v690634142958 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))))
private theorem no_v690634142958 : ¬ MinimalInterpreter v690634142958 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v690634142574 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2))))))
private theorem no_v690634142574 : ¬ MinimalInterpreter v690634142574 :=
  cost_cut false 1 (by decide)
private def v690634141038 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))))
private theorem no_v690634141038 : ¬ MinimalInterpreter v690634141038 :=
  cost_cut false 1 (by decide)
private def v690634296558 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v690634296558 : ¬ MinimalInterpreter v690634296558 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v690634296174 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v690634296174 : ¬ MinimalInterpreter v690634296174 :=
  cost_cut false 1 (by decide)
private def v690634886382 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v690634886382 : ¬ MinimalInterpreter v690634886382 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v690634885998 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v690634885998 : ¬ MinimalInterpreter v690634885998 :=
  cost_cut false 1 (by decide)
private def v690231495918 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v690231495918 : ¬ MinimalInterpreter v690231495918 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v690231495534 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v690231495534 : ¬ MinimalInterpreter v690231495534 :=
  cost_cut false 1 (by decide)
private def v690231489774 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))))
private theorem no_v690231489774 : ¬ MinimalInterpreter v690231489774 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v690231489390 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2))))))
private theorem no_v690231489390 : ¬ MinimalInterpreter v690231489390 :=
  cost_cut false 1 (by decide)
private def v690231487854 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))))
private theorem no_v690231487854 : ¬ MinimalInterpreter v690231487854 :=
  cost_cut false 1 (by decide)
private def v690231643374 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v690231643374 : ¬ MinimalInterpreter v690231643374 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v690231642990 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v690231642990 : ¬ MinimalInterpreter v690231642990 :=
  cost_cut false 1 (by decide)
private def v690232233198 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v690232233198 : ¬ MinimalInterpreter v690232233198 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v690232232814 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v690232232814 : ¬ MinimalInterpreter v690232232814 :=
  cost_cut false 1 (by decide)
theorem row304 : BadRow (row ⟨1,3,0,2,4,3⟩ [0,0,0] [0,0,1,2]) := by
  have h : row ⟨1,3,0,2,4,3⟩ [0,0,0] [0,0,1,2] = [v690634149102,v690634148718,v690634142958,v690634142574,v690634141038,v690634296558,v690634296174,v690634886382,v690634885998,v690231495918,v690231495534,v690231489774,v690231489390,v690231487854,v690231643374,v690231642990,v690232233198,v690232232814] := by decide +kernel
  rw [h]
  exact (.cons (no_v690634149102) (.cons (no_v690634148718) (.cons (no_v690634142958) (.cons (no_v690634142574) (.cons (no_v690634141038) (.cons (no_v690634296558) (.cons (no_v690634296174) (.cons (no_v690634886382) (.cons (no_v690634885998) (.cons (no_v690231495918) (.cons (no_v690231495534) (.cons (no_v690231489774) (.cons (no_v690231489390) (.cons (no_v690231487854) (.cons (no_v690231643374) (.cons (no_v690231642990) (.cons (no_v690232233198) (.cons (no_v690232232814) .nil))))))))))))))))))

private def v690634149110 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v690634149110 : ¬ MinimalInterpreter v690634149110 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v690634148726 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v690634148726 : ¬ MinimalInterpreter v690634148726 :=
  cost_cut false 1 (by decide)
private def v690634142966 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))))))
private theorem no_v690634142966 : ¬ MinimalInterpreter v690634142966 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v690634142582 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1))))))
private theorem no_v690634142582 : ¬ MinimalInterpreter v690634142582 :=
  cost_cut false 1 (by decide)
private def v690634141046 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))))))
private theorem no_v690634141046 : ¬ MinimalInterpreter v690634141046 :=
  cost_cut false 1 (by decide)
private def v690634296566 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v690634296566 : ¬ MinimalInterpreter v690634296566 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v690634296182 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v690634296182 : ¬ MinimalInterpreter v690634296182 :=
  cost_cut false 1 (by decide)
private def v690634886390 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v690634886390 : ¬ MinimalInterpreter v690634886390 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v690634886006 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v690634886006 : ¬ MinimalInterpreter v690634886006 :=
  cost_cut false 1 (by decide)
private def v690231495926 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v690231495926 : ¬ MinimalInterpreter v690231495926 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v690231495542 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v690231495542 : ¬ MinimalInterpreter v690231495542 :=
  cost_cut false 1 (by decide)
private def v690231489782 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))))))
private theorem no_v690231489782 : ¬ MinimalInterpreter v690231489782 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v690231489398 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1))))))
private theorem no_v690231489398 : ¬ MinimalInterpreter v690231489398 :=
  cost_cut false 1 (by decide)
private def v690231487862 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))))))
private theorem no_v690231487862 : ¬ MinimalInterpreter v690231487862 :=
  cost_cut false 1 (by decide)
private def v690231643382 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v690231643382 : ¬ MinimalInterpreter v690231643382 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v690231642998 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v690231642998 : ¬ MinimalInterpreter v690231642998 :=
  cost_cut false 1 (by decide)
private def v690232233206 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v690232233206 : ¬ MinimalInterpreter v690232233206 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v690232232822 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v690232232822 : ¬ MinimalInterpreter v690232232822 :=
  cost_cut false 1 (by decide)
theorem row305 : BadRow (row ⟨1,3,0,2,4,3⟩ [0,0,0] [0,0,2,1]) := by
  have h : row ⟨1,3,0,2,4,3⟩ [0,0,0] [0,0,2,1] = [v690634149110,v690634148726,v690634142966,v690634142582,v690634141046,v690634296566,v690634296182,v690634886390,v690634886006,v690231495926,v690231495542,v690231489782,v690231489398,v690231487862,v690231643382,v690231642998,v690232233206,v690232232822] := by decide +kernel
  rw [h]
  exact (.cons (no_v690634149110) (.cons (no_v690634148726) (.cons (no_v690634142966) (.cons (no_v690634142582) (.cons (no_v690634141046) (.cons (no_v690634296566) (.cons (no_v690634296182) (.cons (no_v690634886390) (.cons (no_v690634886006) (.cons (no_v690231495926) (.cons (no_v690231495542) (.cons (no_v690231489782) (.cons (no_v690231489398) (.cons (no_v690231487862) (.cons (no_v690231643382) (.cons (no_v690231642998) (.cons (no_v690232233206) (.cons (no_v690232232822) .nil))))))))))))))))))

end Blc.SelfintSingleObject.Rows39
