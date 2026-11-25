import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Sat39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def atom138208794 : Term := (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))))
private def v701157402138 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))))))
private theorem no_v701157402138 : ¬ MinimalInterpreter v701157402138 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom138208794false : BadRow (sources false 3 5 atom138208794) := by
  have h : sources false 3 5 atom138208794 = [v701157402138] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157402138) .nil)

theorem atom138208794true : BadRow (sources true 3 5 atom138208794) := by
  have h : sources true 3 5 atom138208794 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom138208866 : Term := (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))))))
private def v701157402210 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))))))))
private theorem no_v701157402210 : ¬ MinimalInterpreter v701157402210 :=
  chain_cut false 2 (by decide)
theorem atom138208866false : BadRow (sources false 3 5 atom138208866) := by
  have h : sources false 3 5 atom138208866 = [v701157402210] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157402210) .nil)

theorem atom138208866true : BadRow (sources true 3 5 atom138208866) := by
  have h : sources true 3 5 atom138208866 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom138208674 : Term := (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))))
private def v701157402018 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))))))
private theorem no_v701157402018 : ¬ MinimalInterpreter v701157402018 :=
  chain_cut false 2 (by decide)
theorem atom138208674false : BadRow (sources false 3 5 atom138208674) := by
  have h : sources false 3 5 atom138208674 = [v701157402018] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157402018) .nil)

theorem atom138208674true : BadRow (sources true 3 5 atom138208674) := by
  have h : sources true 3 5 atom138208674 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom138208650 : Term := (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))))
private def v701157401994 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))))))
private theorem no_v701157401994 : ¬ MinimalInterpreter v701157401994 :=
  chain_cut false 2 (by decide)
theorem atom138208650false : BadRow (sources false 3 5 atom138208650) := by
  have h : sources false 3 5 atom138208650 = [v701157401994] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157401994) .nil)

theorem atom138208650true : BadRow (sources true 3 5 atom138208650) := by
  have h : sources true 3 5 atom138208650 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom138197530 : Term := (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.var 0)))))))
private def v701157390874 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.var 0)))))))))
private theorem no_v701157390874 : ¬ MinimalInterpreter v701157390874 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom138197530false : BadRow (sources false 3 5 atom138197530) := by
  have h : sources false 3 5 atom138197530 = [v701157390874] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157390874) .nil)

theorem atom138197530true : BadRow (sources true 3 5 atom138197530) := by
  have h : sources true 3 5 atom138197530 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom138197602 : Term := (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.lam (.var 0)))))))
private def v701157390946 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.lam (.var 0)))))))))
private theorem no_v701157390946 : ¬ MinimalInterpreter v701157390946 :=
  chain_cut false 2 (by decide)
theorem atom138197602false : BadRow (sources false 3 5 atom138197602) := by
  have h : sources false 3 5 atom138197602 = [v701157390946] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157390946) .nil)

theorem atom138197602true : BadRow (sources true 3 5 atom138197602) := by
  have h : sources true 3 5 atom138197602 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom138197146 : Term := (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 0))))))
private def v701157390490 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 0))))))))
private theorem no_v701157390490 : ¬ MinimalInterpreter v701157390490 :=
  chain_cut false 2 (by decide)
theorem atom138197146false : BadRow (sources false 3 5 atom138197146) := by
  have h : sources false 3 5 atom138197146 = [v701157390490] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157390490) .nil)

theorem atom138197146true : BadRow (sources true 3 5 atom138197146) := by
  have h : sources true 3 5 atom138197146 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom138197410 : Term := (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 0))))))
private def v701157390754 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 0))))))))
private theorem no_v701157390754 : ¬ MinimalInterpreter v701157390754 :=
  chain_cut false 2 (by decide)
theorem atom138197410false : BadRow (sources false 3 5 atom138197410) := by
  have h : sources false 3 5 atom138197410 = [v701157390754] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157390754) .nil)

theorem atom138197410true : BadRow (sources true 3 5 atom138197410) := by
  have h : sources true 3 5 atom138197410 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom138194594 : Term := (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 0))))))
private def v701157387938 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 0))))))))
private theorem no_v701157387938 : ¬ MinimalInterpreter v701157387938 :=
  chain_cut false 2 (by decide)
theorem atom138194594false : BadRow (sources false 3 5 atom138194594) := by
  have h : sources false 3 5 atom138194594 = [v701157387938] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157387938) .nil)

theorem atom138194594true : BadRow (sources true 3 5 atom138194594) := by
  have h : sources true 3 5 atom138194594 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom138197098 : Term := (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.var 0)))))
private def v701157390442 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.var 0)))))))
private theorem no_v701157390442 : ¬ MinimalInterpreter v701157390442 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom138197098false : BadRow (sources false 3 5 atom138197098) := by
  have h : sources false 3 5 atom138197098 = [v701157390442] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157390442) .nil)

theorem atom138197098true : BadRow (sources true 3 5 atom138197098) := by
  have h : sources true 3 5 atom138197098 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom138197386 : Term := (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.var 0)))))
private def v701157390730 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.var 0)))))))
private theorem no_v701157390730 : ¬ MinimalInterpreter v701157390730 :=
  chain_cut false 2 (by decide)
theorem atom138197386false : BadRow (sources false 3 5 atom138197386) := by
  have h : sources false 3 5 atom138197386 = [v701157390730] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157390730) .nil)

theorem atom138197386true : BadRow (sources true 3 5 atom138197386) := by
  have h : sources true 3 5 atom138197386 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom138194570 : Term := (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.var 0)))))
private def v701157387914 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.var 0)))))))
private theorem no_v701157387914 : ¬ MinimalInterpreter v701157387914 :=
  chain_cut false 2 (by decide)
theorem atom138194570false : BadRow (sources false 3 5 atom138194570) := by
  have h : sources false 3 5 atom138194570 = [v701157387914] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157387914) .nil)

theorem atom138194570true : BadRow (sources true 3 5 atom138194570) := by
  have h : sources true 3 5 atom138194570 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom138194474 : Term := (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 0)))))
private def v701157387818 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 0)))))))
private theorem no_v701157387818 : ¬ MinimalInterpreter v701157387818 :=
  chain_cut false 2 (by decide)
theorem atom138194474false : BadRow (sources false 3 5 atom138194474) := by
  have h : sources false 3 5 atom138194474 = [v701157387818] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157387818) .nil)

theorem atom138194474true : BadRow (sources true 3 5 atom138194474) := by
  have h : sources true 3 5 atom138194474 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137324058 : Term := (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))))
private def v701156517402 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))))))
private theorem no_v701156517402 : ¬ MinimalInterpreter v701156517402 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137324058false : BadRow (sources false 3 5 atom137324058) := by
  have h : sources false 3 5 atom137324058 = [v701156517402] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156517402) .nil)

theorem atom137324058true : BadRow (sources true 3 5 atom137324058) := by
  have h : sources true 3 5 atom137324058 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137324130 : Term := (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))))
private def v701156517474 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))))))
private theorem no_v701156517474 : ¬ MinimalInterpreter v701156517474 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0))))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137324130false : BadRow (sources false 3 5 atom137324130) := by
  have h : sources false 3 5 atom137324130 = [v701156517474] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156517474) .nil)

theorem atom137324130true : BadRow (sources true 3 5 atom137324130) := by
  have h : sources true 3 5 atom137324130 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137323938 : Term := (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))
private def v701156517282 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))))
private theorem no_v701156517282 : ¬ MinimalInterpreter v701156517282 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.app (.app (.var 2) (.var 1)) (.app (.app (.var 0) (.var 0)) (so_closed_lam (by decide) (.var 0)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137323938false : BadRow (sources false 3 5 atom137323938) := by
  have h : sources false 3 5 atom137323938 = [v701156517282] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156517282) .nil)

theorem atom137323938true : BadRow (sources true 3 5 atom137323938) := by
  have h : sources true 3 5 atom137323938 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137323914 : Term := (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))
private def v701156517258 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))))
private theorem no_v701156517258 : ¬ MinimalInterpreter v701156517258 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.app (.app (.var 2) (.var 1)) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137323914false : BadRow (sources false 3 5 atom137323914) := by
  have h : sources false 3 5 atom137323914 = [v701156517258] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156517258) .nil)

theorem atom137323914true : BadRow (sources true 3 5 atom137323914) := by
  have h : sources true 3 5 atom137323914 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137312794 : Term := (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.lam (.app (.var 0) (.var 0))))))
private def v701156506138 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.lam (.app (.var 0) (.var 0))))))))
private theorem no_v701156506138 : ¬ MinimalInterpreter v701156506138 :=
  so_cut false 4 (show SO (.lam (.app (.app (.app (.var 2) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0))))) from (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.app (.var 2) (.var 1)) (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 0)) (by decide) (by decide)))
theorem atom137312794false : BadRow (sources false 3 5 atom137312794) := by
  have h : sources false 3 5 atom137312794 = [v701156506138] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156506138) .nil)

theorem atom137312794true : BadRow (sources true 3 5 atom137312794) := by
  have h : sources true 3 5 atom137312794 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137312866 : Term := (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.app (.var 0) (.lam (.var 0))))))
private def v701156506210 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.app (.var 0) (.lam (.var 0))))))))
private theorem no_v701156506210 : ¬ MinimalInterpreter v701156506210 :=
  chain_cut false 2 (by decide)
theorem atom137312866false : BadRow (sources false 3 5 atom137312866) := by
  have h : sources false 3 5 atom137312866 = [v701156506210] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156506210) .nil)

theorem atom137312866true : BadRow (sources true 3 5 atom137312866) := by
  have h : sources true 3 5 atom137312866 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137091610 : Term := (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.app (.var 0) (.var 0))))))
private def v701156284954 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.app (.var 0) (.var 0))))))))
private theorem no_v701156284954 : ¬ MinimalInterpreter v701156284954 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.app (.var 0) (.var 0)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137091610false : BadRow (sources false 3 5 atom137091610) := by
  have h : sources false 3 5 atom137091610 = [v701156284954] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156284954) .nil)

theorem atom137091610true : BadRow (sources true 3 5 atom137091610) := by
  have h : sources true 3 5 atom137091610 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137091682 : Term := (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 0) (.lam (.var 0))))))
private def v701156285026 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 0) (.lam (.var 0))))))))
private theorem no_v701156285026 : ¬ MinimalInterpreter v701156285026 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 0) (.lam (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 0) (so_closed_lam (by decide) (.var 0)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137091682false : BadRow (sources false 3 5 atom137091682) := by
  have h : sources false 3 5 atom137091682 = [v701156285026] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156285026) .nil)

theorem atom137091682true : BadRow (sources true 3 5 atom137091682) := by
  have h : sources true 3 5 atom137091682 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137312410 : Term := (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.var 0)))) (.app (.var 0) (.var 0)))))
private def v701156505754 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.var 0)))) (.app (.var 0) (.var 0)))))))
private theorem no_v701156505754 : ¬ MinimalInterpreter v701156505754 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.var 0)))) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.var 0)))) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 1) (.app (.var 0) (.lam (.var 0))))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (.app (.var 1) (so_closed_lam (by decide) (.var 0)))) (.app (.var 0) (.var 0))) (.app (.var 1) (.app (.var 0) (so_closed_lam (by decide) (.var 0)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137312410false : BadRow (sources false 3 5 atom137312410) := by
  have h : sources false 3 5 atom137312410 = [v701156505754] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156505754) .nil)

theorem atom137312410true : BadRow (sources true 3 5 atom137312410) := by
  have h : sources true 3 5 atom137312410 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137091226 : Term := (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 0))) (.app (.var 0) (.var 0)))))
private def v701156284570 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 0))) (.app (.var 0) (.var 0)))))))
private theorem no_v701156284570 : ¬ MinimalInterpreter v701156284570 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 0))) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.app (.var 2) (.var 1)) (so_closed_lam (by decide) (.var 0))) (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.var 0)) (so_closed_lam (by decide) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137091226false : BadRow (sources false 3 5 atom137091226) := by
  have h : sources false 3 5 atom137091226 = [v701156284570] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156284570) .nil)

theorem atom137091226true : BadRow (sources true 3 5 atom137091226) := by
  have h : sources true 3 5 atom137091226 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137312674 : Term := (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.var 0)))))
private def v701156506018 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.var 0)))))))
private theorem no_v701156506018 : ¬ MinimalInterpreter v701156506018 :=
  chain_cut false 2 (by decide)
theorem atom137312674false : BadRow (sources false 3 5 atom137312674) := by
  have h : sources false 3 5 atom137312674 = [v701156506018] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156506018) .nil)

theorem atom137312674true : BadRow (sources true 3 5 atom137312674) := by
  have h : sources true 3 5 atom137312674 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137309858 : Term := (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.var 0)))))
private def v701156503202 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.var 0)))))))
private theorem no_v701156503202 : ¬ MinimalInterpreter v701156503202 :=
  chain_cut false 2 (by decide)
theorem atom137309858false : BadRow (sources false 3 5 atom137309858) := by
  have h : sources false 3 5 atom137309858 = [v701156503202] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156503202) .nil)

theorem atom137309858true : BadRow (sources true 3 5 atom137309858) := by
  have h : sources true 3 5 atom137309858 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137091490 : Term := (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.lam (.var 0)))))
private def v701156284834 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.lam (.var 0)))))))
private theorem no_v701156284834 : ¬ MinimalInterpreter v701156284834 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.lam (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.app (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137091490false : BadRow (sources false 3 5 atom137091490) := by
  have h : sources false 3 5 atom137091490 = [v701156284834] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156284834) .nil)

theorem atom137091490true : BadRow (sources true 3 5 atom137091490) := by
  have h : sources true 3 5 atom137091490 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137088674 : Term := (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0)) (.lam (.var 0)))))
private def v701156282018 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0)) (.lam (.var 0)))))))
private theorem no_v701156282018 : ¬ MinimalInterpreter v701156282018 :=
  chain_cut false 2 (by decide)
theorem atom137088674false : BadRow (sources false 3 5 atom137088674) := by
  have h : sources false 3 5 atom137088674 = [v701156282018] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156282018) .nil)

theorem atom137088674true : BadRow (sources true 3 5 atom137088674) := by
  have h : sources true 3 5 atom137088674 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137033378 : Term := (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.lam (.var 0)))))
private def v701156226722 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.lam (.var 0)))))))
private theorem no_v701156226722 : ¬ MinimalInterpreter v701156226722 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.lam (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.lam (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 0)))) (.app (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (so_closed_lam (by decide) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137033378false : BadRow (sources false 3 5 atom137033378) := by
  have h : sources false 3 5 atom137033378 = [v701156226722] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156226722) .nil)

theorem atom137033378true : BadRow (sources true 3 5 atom137033378) := by
  have h : sources true 3 5 atom137033378 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137312362 : Term := (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))) (.var 0))))
private def v701156505706 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))) (.var 0))))))
private theorem no_v701156505706 : ¬ MinimalInterpreter v701156505706 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.var 1) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (.var 0)) (.app (.var 1) (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137312362false : BadRow (sources false 3 5 atom137312362) := by
  have h : sources false 3 5 atom137312362 = [v701156505706] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156505706) .nil)

theorem atom137312362true : BadRow (sources true 3 5 atom137312362) := by
  have h : sources true 3 5 atom137312362 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137312650 : Term := (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.app (.var 0) (.lam (.var 0))))) (.var 0))))
private def v701156505994 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.app (.var 0) (.lam (.var 0))))) (.var 0))))))
private theorem no_v701156505994 : ¬ MinimalInterpreter v701156505994 :=
  chain_cut false 2 (by decide)
theorem atom137312650false : BadRow (sources false 3 5 atom137312650) := by
  have h : sources false 3 5 atom137312650 = [v701156505994] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156505994) .nil)

theorem atom137312650true : BadRow (sources true 3 5 atom137312650) := by
  have h : sources true 3 5 atom137312650 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137309834 : Term := (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))) (.var 0))))
private def v701156503178 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))) (.var 0))))))
private theorem no_v701156503178 : ¬ MinimalInterpreter v701156503178 :=
  chain_cut false 2 (by decide)
theorem atom137309834false : BadRow (sources false 3 5 atom137309834) := by
  have h : sources false 3 5 atom137309834 = [v701156503178] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156503178) .nil)

theorem atom137309834true : BadRow (sources true 3 5 atom137309834) := by
  have h : sources true 3 5 atom137309834 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137309738 : Term := (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 1) (.lam (.var 0))) (.var 0))) (.var 0))))
private def v701156503082 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 1) (.lam (.var 0))) (.var 0))) (.var 0))))))
private theorem no_v701156503082 : ¬ MinimalInterpreter v701156503082 :=
  chain_cut false 2 (by decide)
theorem atom137309738false : BadRow (sources false 3 5 atom137309738) := by
  have h : sources false 3 5 atom137309738 = [v701156503082] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156503082) .nil)

theorem atom137309738true : BadRow (sources true 3 5 atom137309738) := by
  have h : sources true 3 5 atom137309738 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137091178 : Term := (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 0) (.var 0)))) (.var 0))))
private def v701156284522 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 0) (.var 0)))) (.var 0))))))
private theorem no_v701156284522 : ¬ MinimalInterpreter v701156284522 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 0) (.var 0)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.var 0))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (.var 0)) (.app (.app (.var 1) (.var 0)) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137091178false : BadRow (sources false 3 5 atom137091178) := by
  have h : sources false 3 5 atom137091178 = [v701156284522] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156284522) .nil)

theorem atom137091178true : BadRow (sources true 3 5 atom137091178) := by
  have h : sources true 3 5 atom137091178 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137091466 : Term := (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.var 0)))) (.var 0))))
private def v701156284810 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.var 0)))) (.var 0))))))
private theorem no_v701156284810 : ¬ MinimalInterpreter v701156284810 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.var 0)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.var 0)))) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.app (.var 0) (so_closed_lam (by decide) (.var 0)))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137091466false : BadRow (sources false 3 5 atom137091466) := by
  have h : sources false 3 5 atom137091466 = [v701156284810] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156284810) .nil)

theorem atom137091466true : BadRow (sources true 3 5 atom137091466) := by
  have h : sources true 3 5 atom137091466 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137088650 : Term := (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.lam (.var 0))) (.var 0))))
private def v701156281994 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.lam (.var 0))) (.var 0))))))
private theorem no_v701156281994 : ¬ MinimalInterpreter v701156281994 :=
  chain_cut false 2 (by decide)
theorem atom137088650false : BadRow (sources false 3 5 atom137088650) := by
  have h : sources false 3 5 atom137088650 = [v701156281994] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156281994) .nil)

theorem atom137088650true : BadRow (sources true 3 5 atom137088650) := by
  have h : sources true 3 5 atom137088650 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137033354 : Term := (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.var 0))) (.var 0))))
private def v701156226698 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.var 0))) (.var 0))))))
private theorem no_v701156226698 : ¬ MinimalInterpreter v701156226698 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.var 0))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.var 0))) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.var 0))) (.app (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (so_closed_lam (by decide) (.var 0))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137033354false : BadRow (sources false 3 5 atom137033354) := by
  have h : sources false 3 5 atom137033354 = [v701156226698] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156226698) .nil)

theorem atom137033354true : BadRow (sources true 3 5 atom137033354) := by
  have h : sources true 3 5 atom137033354 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137088554 : Term := (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 1) (.lam (.var 0)))) (.var 0)) (.var 0))))
private def v701156281898 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 1) (.lam (.var 0)))) (.var 0)) (.var 0))))))
private theorem no_v701156281898 : ¬ MinimalInterpreter v701156281898 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 1) (.lam (.var 0)))) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.app (.var 1) (.lam (.var 0)))) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.var 0) (.lam (.var 0))))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (.app (.var 1) (so_closed_lam (by decide) (.var 0)))) (.var 0)) (.var 0)) (.app (.var 1) (.app (.var 0) (so_closed_lam (by decide) (.var 0)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137088554false : BadRow (sources false 3 5 atom137088554) := by
  have h : sources false 3 5 atom137088554 = [v701156281898] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156281898) .nil)

theorem atom137088554true : BadRow (sources true 3 5 atom137088554) := by
  have h : sources true 3 5 atom137088554 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137033258 : Term := (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 0))) (.var 0)) (.var 0))))
private def v701156226602 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 0))) (.var 0)) (.var 0))))))
private theorem no_v701156226602 : ¬ MinimalInterpreter v701156226602 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 0))) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 0))) (.var 0)) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.app (.var 2) (.var 1)) (so_closed_lam (by decide) (.var 0))) (.var 0)) (.var 0)) (.app (.app (.var 1) (.var 0)) (so_closed_lam (by decide) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137033258false : BadRow (sources false 3 5 atom137033258) := by
  have h : sources false 3 5 atom137033258 = [v701156226602] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156226602) .nil)

theorem atom137033258true : BadRow (sources true 3 5 atom137033258) := by
  have h : sources true 3 5 atom137033258 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atoms138 : Every (fun b => ∀ lit, BadRow (sources lit 3 5 b)) (atoms 3 5 [2,1,0,0,0]) := by
  have h : atoms 3 5 [2,1,0,0,0] = [atom138208794,atom138208866,atom138208674,atom138208650,atom138197530,atom138197602,atom138197146,atom138197410,atom138194594,atom138197098,atom138197386,atom138194570,atom138194474,atom137324058,atom137324130,atom137323938,atom137323914,atom137312794,atom137312866,atom137091610,atom137091682,atom137312410,atom137091226,atom137312674,atom137309858,atom137091490,atom137088674,atom137033378,atom137312362,atom137312650,atom137309834,atom137309738,atom137091178,atom137091466,atom137088650,atom137033354,atom137088554,atom137033258] := by decide +kernel
  rw [h]
  exact (.cons (fun lit => by cases lit <;> first | exact atom138208794false | exact atom138208794true) (.cons (fun lit => by cases lit <;> first | exact atom138208866false | exact atom138208866true) (.cons (fun lit => by cases lit <;> first | exact atom138208674false | exact atom138208674true) (.cons (fun lit => by cases lit <;> first | exact atom138208650false | exact atom138208650true) (.cons (fun lit => by cases lit <;> first | exact atom138197530false | exact atom138197530true) (.cons (fun lit => by cases lit <;> first | exact atom138197602false | exact atom138197602true) (.cons (fun lit => by cases lit <;> first | exact atom138197146false | exact atom138197146true) (.cons (fun lit => by cases lit <;> first | exact atom138197410false | exact atom138197410true) (.cons (fun lit => by cases lit <;> first | exact atom138194594false | exact atom138194594true) (.cons (fun lit => by cases lit <;> first | exact atom138197098false | exact atom138197098true) (.cons (fun lit => by cases lit <;> first | exact atom138197386false | exact atom138197386true) (.cons (fun lit => by cases lit <;> first | exact atom138194570false | exact atom138194570true) (.cons (fun lit => by cases lit <;> first | exact atom138194474false | exact atom138194474true) (.cons (fun lit => by cases lit <;> first | exact atom137324058false | exact atom137324058true) (.cons (fun lit => by cases lit <;> first | exact atom137324130false | exact atom137324130true) (.cons (fun lit => by cases lit <;> first | exact atom137323938false | exact atom137323938true) (.cons (fun lit => by cases lit <;> first | exact atom137323914false | exact atom137323914true) (.cons (fun lit => by cases lit <;> first | exact atom137312794false | exact atom137312794true) (.cons (fun lit => by cases lit <;> first | exact atom137312866false | exact atom137312866true) (.cons (fun lit => by cases lit <;> first | exact atom137091610false | exact atom137091610true) (.cons (fun lit => by cases lit <;> first | exact atom137091682false | exact atom137091682true) (.cons (fun lit => by cases lit <;> first | exact atom137312410false | exact atom137312410true) (.cons (fun lit => by cases lit <;> first | exact atom137091226false | exact atom137091226true) (.cons (fun lit => by cases lit <;> first | exact atom137312674false | exact atom137312674true) (.cons (fun lit => by cases lit <;> first | exact atom137309858false | exact atom137309858true) (.cons (fun lit => by cases lit <;> first | exact atom137091490false | exact atom137091490true) (.cons (fun lit => by cases lit <;> first | exact atom137088674false | exact atom137088674true) (.cons (fun lit => by cases lit <;> first | exact atom137033378false | exact atom137033378true) (.cons (fun lit => by cases lit <;> first | exact atom137312362false | exact atom137312362true) (.cons (fun lit => by cases lit <;> first | exact atom137312650false | exact atom137312650true) (.cons (fun lit => by cases lit <;> first | exact atom137309834false | exact atom137309834true) (.cons (fun lit => by cases lit <;> first | exact atom137309738false | exact atom137309738true) (.cons (fun lit => by cases lit <;> first | exact atom137091178false | exact atom137091178true) (.cons (fun lit => by cases lit <;> first | exact atom137091466false | exact atom137091466true) (.cons (fun lit => by cases lit <;> first | exact atom137088650false | exact atom137088650true) (.cons (fun lit => by cases lit <;> first | exact atom137033354false | exact atom137033354true) (.cons (fun lit => by cases lit <;> first | exact atom137088554false | exact atom137088554true) (.cons (fun lit => by cases lit <;> first | exact atom137033258false | exact atom137033258true) .nil))))))))))))))))))))))))))))))))))))))
theorem atoms139 : Every (fun b => ∀ lit, BadRow (sources lit 3 5 b)) (atoms 3 5 [3,0,0,0,0]) := by
  have h : atoms 3 5 [3,0,0,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil
end Blc.SelfintSingleObject.Sat39
