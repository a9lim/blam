import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Sat39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem atoms129 : Every (fun b => ∀ lit, BadRow (sources lit 3 5 b)) (atoms 3 5 [1,0,1,1,0]) := by
  have h : atoms 3 5 [1,0,1,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil
private def atom137993754 : Term := (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.lam (.app (.var 0) (.var 0))))))))
private def v701157187098 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.lam (.app (.var 0) (.var 0))))))))))
private theorem no_v701157187098 : ¬ MinimalInterpreter v701157187098 :=
  so_cut true 3 (show SO (.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))))) from (.app (.var 1) (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.app (.var 1) (.app (.var 0) (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))) (.var 0) (by decide) (by decide))))))
theorem atom137993754false : BadRow (sources false 3 5 atom137993754) := by
  have h : sources false 3 5 atom137993754 = [v701157187098] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157187098) .nil)

theorem atom137993754true : BadRow (sources true 3 5 atom137993754) := by
  have h : sources true 3 5 atom137993754 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137993826 : Term := (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.app (.var 0) (.lam (.var 0))))))))
private def v701157187170 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.app (.var 0) (.lam (.var 0))))))))))
private theorem no_v701157187170 : ¬ MinimalInterpreter v701157187170 :=
  chain_cut false 2 (by decide)
theorem atom137993826false : BadRow (sources false 3 5 atom137993826) := by
  have h : sources false 3 5 atom137993826 = [v701157187170] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157187170) .nil)

theorem atom137993826true : BadRow (sources true 3 5 atom137993826) := by
  have h : sources true 3 5 atom137993826 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137992098 : Term := (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.lam (.var 0)))))))
private def v701157185442 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.lam (.var 0)))))))))
private theorem no_v701157185442 : ¬ MinimalInterpreter v701157185442 :=
  chain_cut false 2 (by decide)
theorem atom137992098false : BadRow (sources false 3 5 atom137992098) := by
  have h : sources false 3 5 atom137992098 = [v701157185442] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157185442) .nil)

theorem atom137992098true : BadRow (sources true 3 5 atom137992098) := by
  have h : sources true 3 5 atom137992098 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137992074 : Term := (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 2) (.lam (.var 0))) (.var 0))))))
private def v701157185418 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 2) (.lam (.var 0))) (.var 0))))))))
private theorem no_v701157185418 : ¬ MinimalInterpreter v701157185418 :=
  chain_cut false 2 (by decide)
theorem atom137992074false : BadRow (sources false 3 5 atom137992074) := by
  have h : sources false 3 5 atom137992074 = [v701157185418] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157185418) .nil)

theorem atom137992074true : BadRow (sources true 3 5 atom137992074) := by
  have h : sources true 3 5 atom137992074 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137981466 : Term := (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 0) (.var 0)))))))
private def v701157174810 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 0) (.var 0)))))))))
private theorem no_v701157174810 : ¬ MinimalInterpreter v701157174810 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom137981466false : BadRow (sources false 3 5 atom137981466) := by
  have h : sources false 3 5 atom137981466 = [v701157174810] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157174810) .nil)

theorem atom137981466true : BadRow (sources true 3 5 atom137981466) := by
  have h : sources true 3 5 atom137981466 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137981538 : Term := (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.lam (.var 0)))))))
private def v701157174882 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.lam (.var 0)))))))))
private theorem no_v701157174882 : ¬ MinimalInterpreter v701157174882 :=
  chain_cut false 2 (by decide)
theorem atom137981538false : BadRow (sources false 3 5 atom137981538) := by
  have h : sources false 3 5 atom137981538 = [v701157174882] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157174882) .nil)

theorem atom137981538true : BadRow (sources true 3 5 atom137981538) := by
  have h : sources true 3 5 atom137981538 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137979810 : Term := (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.lam (.var 0))))))
private def v701157173154 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.lam (.var 0))))))))
private theorem no_v701157173154 : ¬ MinimalInterpreter v701157173154 :=
  chain_cut false 2 (by decide)
theorem atom137979810false : BadRow (sources false 3 5 atom137979810) := by
  have h : sources false 3 5 atom137979810 = [v701157173154] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157173154) .nil)

theorem atom137979810true : BadRow (sources true 3 5 atom137979810) := by
  have h : sources true 3 5 atom137979810 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137976738 : Term := (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.var 0))))))
private def v701157170082 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.var 0))))))))
private theorem no_v701157170082 : ¬ MinimalInterpreter v701157170082 :=
  chain_cut false 2 (by decide)
theorem atom137976738false : BadRow (sources false 3 5 atom137976738) := by
  have h : sources false 3 5 atom137976738 = [v701157170082] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157170082) .nil)

theorem atom137976738true : BadRow (sources true 3 5 atom137976738) := by
  have h : sources true 3 5 atom137976738 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137979786 : Term := (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.var 0)))))
private def v701157173130 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.var 0)))))))
private theorem no_v701157173130 : ¬ MinimalInterpreter v701157173130 :=
  chain_cut false 2 (by decide)
theorem atom137979786false : BadRow (sources false 3 5 atom137979786) := by
  have h : sources false 3 5 atom137979786 = [v701157173130] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157173130) .nil)

theorem atom137979786true : BadRow (sources true 3 5 atom137979786) := by
  have h : sources true 3 5 atom137979786 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137976714 : Term := (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 0))) (.var 0)))))
private def v701157170058 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 0))) (.var 0)))))))
private theorem no_v701157170058 : ¬ MinimalInterpreter v701157170058 :=
  chain_cut false 2 (by decide)
theorem atom137976714false : BadRow (sources false 3 5 atom137976714) := by
  have h : sources false 3 5 atom137976714 = [v701157170058] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157170058) .nil)

theorem atom137976714true : BadRow (sources true 3 5 atom137976714) := by
  have h : sources true 3 5 atom137976714 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137272858 : Term := (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.lam (.app (.var 0) (.var 0)))))))
private def v701156466202 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.lam (.app (.var 0) (.var 0)))))))))
private theorem no_v701156466202 : ¬ MinimalInterpreter v701156466202 :=
  so_cut true 3 (show SO (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) from (.app (.app (.var 1) (.var 0)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 1) (.var 0)) (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (.var 0) (by decide) (by decide)))))
theorem atom137272858false : BadRow (sources false 3 5 atom137272858) := by
  have h : sources false 3 5 atom137272858 = [v701156466202] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156466202) .nil)

theorem atom137272858true : BadRow (sources true 3 5 atom137272858) := by
  have h : sources true 3 5 atom137272858 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137272930 : Term := (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.app (.var 0) (.lam (.var 0)))))))
private def v701156466274 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.app (.var 0) (.lam (.var 0)))))))))
private theorem no_v701156466274 : ¬ MinimalInterpreter v701156466274 :=
  chain_cut false 2 (by decide)
theorem atom137272930false : BadRow (sources false 3 5 atom137272930) := by
  have h : sources false 3 5 atom137272930 = [v701156466274] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156466274) .nil)

theorem atom137272930true : BadRow (sources true 3 5 atom137272930) := by
  have h : sources true 3 5 atom137272930 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137271202 : Term := (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 2) (.var 0)) (.lam (.var 0))))))
private def v701156464546 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 2) (.var 0)) (.lam (.var 0))))))))
private theorem no_v701156464546 : ¬ MinimalInterpreter v701156464546 :=
  chain_cut false 2 (by decide)
theorem atom137271202false : BadRow (sources false 3 5 atom137271202) := by
  have h : sources false 3 5 atom137271202 = [v701156464546] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156464546) .nil)

theorem atom137271202true : BadRow (sources true 3 5 atom137271202) := by
  have h : sources true 3 5 atom137271202 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137271178 : Term := (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 2) (.lam (.var 0))) (.var 0)))))
private def v701156464522 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 2) (.lam (.var 0))) (.var 0)))))))
private theorem no_v701156464522 : ¬ MinimalInterpreter v701156464522 :=
  chain_cut false 2 (by decide)
theorem atom137271178false : BadRow (sources false 3 5 atom137271178) := by
  have h : sources false 3 5 atom137271178 = [v701156464522] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156464522) .nil)

theorem atom137271178true : BadRow (sources true 3 5 atom137271178) := by
  have h : sources true 3 5 atom137271178 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137242522 : Term := (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 2) (.app (.var 0) (.var 0))))))
private def v701156435866 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 2) (.app (.var 0) (.var 0))))))))
private theorem no_v701156435866 : ¬ MinimalInterpreter v701156435866 :=
  chain_cut false 2 (by decide)
theorem atom137242522false : BadRow (sources false 3 5 atom137242522) := by
  have h : sources false 3 5 atom137242522 = [v701156435866] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156435866) .nil)

theorem atom137242522true : BadRow (sources true 3 5 atom137242522) := by
  have h : sources true 3 5 atom137242522 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137242090 : Term := (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.app (.var 2) (.var 0)) (.var 0)))))
private def v701156435434 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.app (.var 2) (.var 0)) (.var 0)))))))
private theorem no_v701156435434 : ¬ MinimalInterpreter v701156435434 :=
  chain_cut false 2 (by decide)
theorem atom137242090false : BadRow (sources false 3 5 atom137242090) := by
  have h : sources false 3 5 atom137242090 = [v701156435434] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156435434) .nil)

theorem atom137242090true : BadRow (sources true 3 5 atom137242090) := by
  have h : sources true 3 5 atom137242090 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137260570 : Term := (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.lam (.app (.var 0) (.var 0))))))
private def v701156453914 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.lam (.app (.var 0) (.var 0))))))))
private theorem no_v701156453914 : ¬ MinimalInterpreter v701156453914 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom137260570false : BadRow (sources false 3 5 atom137260570) := by
  have h : sources false 3 5 atom137260570 = [v701156453914] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156453914) .nil)

theorem atom137260570true : BadRow (sources true 3 5 atom137260570) := by
  have h : sources true 3 5 atom137260570 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137260642 : Term := (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.app (.var 0) (.lam (.var 0))))))
private def v701156453986 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.app (.var 0) (.lam (.var 0))))))))
private theorem no_v701156453986 : ¬ MinimalInterpreter v701156453986 :=
  chain_cut false 2 (by decide)
theorem atom137260642false : BadRow (sources false 3 5 atom137260642) := by
  have h : sources false 3 5 atom137260642 = [v701156453986] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156453986) .nil)

theorem atom137260642true : BadRow (sources true 3 5 atom137260642) := by
  have h : sources true 3 5 atom137260642 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137080346 : Term := (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.lam (.app (.var 0) (.var 0))))))
private def v701156273690 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.lam (.app (.var 0) (.var 0))))))))
private theorem no_v701156273690 : ¬ MinimalInterpreter v701156273690 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom137080346false : BadRow (sources false 3 5 atom137080346) := by
  have h : sources false 3 5 atom137080346 = [v701156273690] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156273690) .nil)

theorem atom137080346true : BadRow (sources true 3 5 atom137080346) := by
  have h : sources true 3 5 atom137080346 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137080418 : Term := (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.app (.var 0) (.lam (.var 0))))))
private def v701156273762 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.app (.var 0) (.lam (.var 0))))))))
private theorem no_v701156273762 : ¬ MinimalInterpreter v701156273762 :=
  chain_cut false 2 (by decide)
theorem atom137080418false : BadRow (sources false 3 5 atom137080418) := by
  have h : sources false 3 5 atom137080418 = [v701156273762] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156273762) .nil)

theorem atom137080418true : BadRow (sources true 3 5 atom137080418) := by
  have h : sources true 3 5 atom137080418 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137071514 : Term := (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 2)) (.app (.var 0) (.var 0)))))
private def v701156264858 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 2)) (.app (.var 0) (.var 0)))))))
private theorem no_v701156264858 : ¬ MinimalInterpreter v701156264858 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 2)) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.app (.var 0) (.lam (.var 0))) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.app (.var 1) (so_closed_lam (by decide) (.var 0))) (.var 2)) (.app (.var 0) (.var 0))) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137071514false : BadRow (sources false 3 5 atom137071514) := by
  have h : sources false 3 5 atom137071514 = [v701156264858] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156264858) .nil)

theorem atom137071514true : BadRow (sources true 3 5 atom137071514) := by
  have h : sources true 3 5 atom137071514 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137258914 : Term := (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0)))) (.lam (.var 0)))))
private def v701156452258 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0)))) (.lam (.var 0)))))))
private theorem no_v701156452258 : ¬ MinimalInterpreter v701156452258 :=
  chain_cut false 2 (by decide)
theorem atom137258914false : BadRow (sources false 3 5 atom137258914) := by
  have h : sources false 3 5 atom137258914 = [v701156452258] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156452258) .nil)

theorem atom137258914true : BadRow (sources true 3 5 atom137258914) := by
  have h : sources true 3 5 atom137258914 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137255842 : Term := (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0))) (.lam (.var 0)))))
private def v701156449186 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0))) (.lam (.var 0)))))))
private theorem no_v701156449186 : ¬ MinimalInterpreter v701156449186 :=
  chain_cut false 2 (by decide)
theorem atom137255842false : BadRow (sources false 3 5 atom137255842) := by
  have h : sources false 3 5 atom137255842 = [v701156449186] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156449186) .nil)

theorem atom137255842true : BadRow (sources true 3 5 atom137255842) := by
  have h : sources true 3 5 atom137255842 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137078690 : Term := (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0))) (.lam (.var 0)))))
private def v701156272034 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0))) (.lam (.var 0)))))))
private theorem no_v701156272034 : ¬ MinimalInterpreter v701156272034 :=
  chain_cut false 2 (by decide)
theorem atom137078690false : BadRow (sources false 3 5 atom137078690) := by
  have h : sources false 3 5 atom137078690 = [v701156272034] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156272034) .nil)

theorem atom137078690true : BadRow (sources true 3 5 atom137078690) := by
  have h : sources true 3 5 atom137078690 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137075618 : Term := (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0)) (.lam (.var 0)))))
private def v701156268962 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0)) (.lam (.var 0)))))))
private theorem no_v701156268962 : ¬ MinimalInterpreter v701156268962 :=
  chain_cut false 2 (by decide)
theorem atom137075618false : BadRow (sources false 3 5 atom137075618) := by
  have h : sources false 3 5 atom137075618 = [v701156268962] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156268962) .nil)

theorem atom137075618true : BadRow (sources true 3 5 atom137075618) := by
  have h : sources true 3 5 atom137075618 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137030562 : Term := (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0)) (.lam (.var 0)))))
private def v701156223906 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0)) (.lam (.var 0)))))))
private theorem no_v701156223906 : ¬ MinimalInterpreter v701156223906 :=
  chain_cut false 2 (by decide)
theorem atom137030562false : BadRow (sources false 3 5 atom137030562) := by
  have h : sources false 3 5 atom137030562 = [v701156223906] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156223906) .nil)

theorem atom137030562true : BadRow (sources true 3 5 atom137030562) := by
  have h : sources true 3 5 atom137030562 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137258890 : Term := (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 2) (.lam (.var 0))))) (.var 0))))
private def v701156452234 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 2) (.lam (.var 0))))) (.var 0))))))
private theorem no_v701156452234 : ¬ MinimalInterpreter v701156452234 :=
  chain_cut false 2 (by decide)
theorem atom137258890false : BadRow (sources false 3 5 atom137258890) := by
  have h : sources false 3 5 atom137258890 = [v701156452234] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156452234) .nil)

theorem atom137258890true : BadRow (sources true 3 5 atom137258890) := by
  have h : sources true 3 5 atom137258890 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137255818 : Term := (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.lam (.var 0)))) (.var 0))))
private def v701156449162 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.lam (.var 0)))) (.var 0))))))
private theorem no_v701156449162 : ¬ MinimalInterpreter v701156449162 :=
  chain_cut false 2 (by decide)
theorem atom137255818false : BadRow (sources false 3 5 atom137255818) := by
  have h : sources false 3 5 atom137255818 = [v701156449162] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156449162) .nil)

theorem atom137255818true : BadRow (sources true 3 5 atom137255818) := by
  have h : sources true 3 5 atom137255818 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137078666 : Term := (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.lam (.var 0)))) (.var 0))))
private def v701156272010 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.lam (.var 0)))) (.var 0))))))
private theorem no_v701156272010 : ¬ MinimalInterpreter v701156272010 :=
  chain_cut false 2 (by decide)
theorem atom137078666false : BadRow (sources false 3 5 atom137078666) := by
  have h : sources false 3 5 atom137078666 = [v701156272010] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156272010) .nil)

theorem atom137078666true : BadRow (sources true 3 5 atom137078666) := by
  have h : sources true 3 5 atom137078666 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137071082 : Term := (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 2) (.var 0))) (.var 0))))
private def v701156264426 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 2) (.var 0))) (.var 0))))))
private theorem no_v701156264426 : ¬ MinimalInterpreter v701156264426 :=
  chain_cut false 2 (by decide)
theorem atom137071082false : BadRow (sources false 3 5 atom137071082) := by
  have h : sources false 3 5 atom137071082 = [v701156264426] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156264426) .nil)

theorem atom137071082true : BadRow (sources true 3 5 atom137071082) := by
  have h : sources true 3 5 atom137071082 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137075594 : Term := (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.lam (.var 0))) (.var 0))))
private def v701156268938 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.lam (.var 0))) (.var 0))))))
private theorem no_v701156268938 : ¬ MinimalInterpreter v701156268938 :=
  chain_cut false 2 (by decide)
theorem atom137075594false : BadRow (sources false 3 5 atom137075594) := by
  have h : sources false 3 5 atom137075594 = [v701156268938] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156268938) .nil)

theorem atom137075594true : BadRow (sources true 3 5 atom137075594) := by
  have h : sources true 3 5 atom137075594 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137030538 : Term := (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.lam (.var 0))) (.var 0))))
private def v701156223882 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.lam (.var 0))) (.var 0))))))
private theorem no_v701156223882 : ¬ MinimalInterpreter v701156223882 :=
  chain_cut false 2 (by decide)
theorem atom137030538false : BadRow (sources false 3 5 atom137030538) := by
  have h : sources false 3 5 atom137030538 = [v701156223882] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156223882) .nil)

theorem atom137030538true : BadRow (sources true 3 5 atom137030538) := by
  have h : sources true 3 5 atom137030538 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137028330 : Term := (.lam (.lam (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 2)) (.var 0)) (.var 0))))
private def v701156221674 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 2)) (.var 0)) (.var 0))))))
private theorem no_v701156221674 : ¬ MinimalInterpreter v701156221674 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 2)) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.lam (.var 0))) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.app (.var 1) (so_closed_lam (by decide) (.var 0))) (.var 2)) (.var 0)) (.var 0)) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137028330false : BadRow (sources false 3 5 atom137028330) := by
  have h : sources false 3 5 atom137028330 = [v701156221674] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156221674) .nil)

theorem atom137028330true : BadRow (sources true 3 5 atom137028330) := by
  have h : sources true 3 5 atom137028330 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atoms130 : Every (fun b => ∀ lit, BadRow (sources lit 3 5 b)) (atoms 3 5 [1,0,2,0,0]) := by
  have h : atoms 3 5 [1,0,2,0,0] = [atom137993754,atom137993826,atom137992098,atom137992074,atom137981466,atom137981538,atom137979810,atom137976738,atom137979786,atom137976714,atom137272858,atom137272930,atom137271202,atom137271178,atom137242522,atom137242090,atom137260570,atom137260642,atom137080346,atom137080418,atom137071514,atom137258914,atom137255842,atom137078690,atom137075618,atom137030562,atom137258890,atom137255818,atom137078666,atom137071082,atom137075594,atom137030538,atom137028330] := by decide +kernel
  rw [h]
  exact (.cons (fun lit => by cases lit <;> first | exact atom137993754false | exact atom137993754true) (.cons (fun lit => by cases lit <;> first | exact atom137993826false | exact atom137993826true) (.cons (fun lit => by cases lit <;> first | exact atom137992098false | exact atom137992098true) (.cons (fun lit => by cases lit <;> first | exact atom137992074false | exact atom137992074true) (.cons (fun lit => by cases lit <;> first | exact atom137981466false | exact atom137981466true) (.cons (fun lit => by cases lit <;> first | exact atom137981538false | exact atom137981538true) (.cons (fun lit => by cases lit <;> first | exact atom137979810false | exact atom137979810true) (.cons (fun lit => by cases lit <;> first | exact atom137976738false | exact atom137976738true) (.cons (fun lit => by cases lit <;> first | exact atom137979786false | exact atom137979786true) (.cons (fun lit => by cases lit <;> first | exact atom137976714false | exact atom137976714true) (.cons (fun lit => by cases lit <;> first | exact atom137272858false | exact atom137272858true) (.cons (fun lit => by cases lit <;> first | exact atom137272930false | exact atom137272930true) (.cons (fun lit => by cases lit <;> first | exact atom137271202false | exact atom137271202true) (.cons (fun lit => by cases lit <;> first | exact atom137271178false | exact atom137271178true) (.cons (fun lit => by cases lit <;> first | exact atom137242522false | exact atom137242522true) (.cons (fun lit => by cases lit <;> first | exact atom137242090false | exact atom137242090true) (.cons (fun lit => by cases lit <;> first | exact atom137260570false | exact atom137260570true) (.cons (fun lit => by cases lit <;> first | exact atom137260642false | exact atom137260642true) (.cons (fun lit => by cases lit <;> first | exact atom137080346false | exact atom137080346true) (.cons (fun lit => by cases lit <;> first | exact atom137080418false | exact atom137080418true) (.cons (fun lit => by cases lit <;> first | exact atom137071514false | exact atom137071514true) (.cons (fun lit => by cases lit <;> first | exact atom137258914false | exact atom137258914true) (.cons (fun lit => by cases lit <;> first | exact atom137255842false | exact atom137255842true) (.cons (fun lit => by cases lit <;> first | exact atom137078690false | exact atom137078690true) (.cons (fun lit => by cases lit <;> first | exact atom137075618false | exact atom137075618true) (.cons (fun lit => by cases lit <;> first | exact atom137030562false | exact atom137030562true) (.cons (fun lit => by cases lit <;> first | exact atom137258890false | exact atom137258890true) (.cons (fun lit => by cases lit <;> first | exact atom137255818false | exact atom137255818true) (.cons (fun lit => by cases lit <;> first | exact atom137078666false | exact atom137078666true) (.cons (fun lit => by cases lit <;> first | exact atom137071082false | exact atom137071082true) (.cons (fun lit => by cases lit <;> first | exact atom137075594false | exact atom137075594true) (.cons (fun lit => by cases lit <;> first | exact atom137030538false | exact atom137030538true) (.cons (fun lit => by cases lit <;> first | exact atom137028330false | exact atom137028330true) .nil)))))))))))))))))))))))))))))))))
theorem atoms131 : Every (fun b => ∀ lit, BadRow (sources lit 3 5 b)) (atoms 3 5 [1,1,0,0,1]) := by
  have h : atoms 3 5 [1,1,0,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil
end Blc.SelfintSingleObject.Sat39
