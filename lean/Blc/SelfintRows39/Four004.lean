import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v701157199470 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v701157199470 : ¬ MinimalInterpreter v701157199470 :=
  chain_cut false 2 (by decide)
private def v701157198766 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v701157198766 : ¬ MinimalInterpreter v701157198766 :=
  chain_cut false 2 (by decide)
private def v701157176942 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 2))))))))
private theorem no_v701157176942 : ¬ MinimalInterpreter v701157176942 :=
  chain_cut false 2 (by decide)
private def v701157176238 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 2)))))))
private theorem no_v701157176238 : ¬ MinimalInterpreter v701157176238 :=
  chain_cut false 2 (by decide)
private def v701157170606 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 2)))))))
private theorem no_v701157170606 : ¬ MinimalInterpreter v701157170606 :=
  chain_cut false 2 (by decide)
private def v701156478574 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v701156478574 : ¬ MinimalInterpreter v701156478574 :=
  chain_cut false 2 (by decide)
private def v701156477870 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v701156477870 : ¬ MinimalInterpreter v701156477870 :=
  chain_cut false 2 (by decide)
private def v701156456046 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.app (.var 0) (.var 2)))))))
private theorem no_v701156456046 : ¬ MinimalInterpreter v701156456046 :=
  chain_cut false 2 (by decide)
private def v701156275822 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.app (.var 0) (.var 2)))))))
private theorem no_v701156275822 : ¬ MinimalInterpreter v701156275822 :=
  chain_cut false 2 (by decide)
private def v701156455342 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 0)))) (.var 2))))))
private theorem no_v701156455342 : ¬ MinimalInterpreter v701156455342 :=
  chain_cut false 2 (by decide)
private def v701156449710 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 0))) (.var 2))))))
private theorem no_v701156449710 : ¬ MinimalInterpreter v701156449710 :=
  chain_cut false 2 (by decide)
private def v701156275118 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 0))) (.var 2))))))
private theorem no_v701156275118 : ¬ MinimalInterpreter v701156275118 :=
  chain_cut false 2 (by decide)
private def v701156269486 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 0)) (.var 2))))))
private theorem no_v701156269486 : ¬ MinimalInterpreter v701156269486 :=
  chain_cut false 2 (by decide)
private def v701156224430 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 0)) (.var 2))))))
private theorem no_v701156224430 : ¬ MinimalInterpreter v701156224430 :=
  chain_cut false 2 (by decide)
private def v701168209518 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v701168209518 : ¬ MinimalInterpreter v701168209518 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701168208814 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v701168208814 : ¬ MinimalInterpreter v701168208814 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701168186990 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 2))))))))
private theorem no_v701168186990 : ¬ MinimalInterpreter v701168186990 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701168186286 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 2)))))))
private theorem no_v701168186286 : ¬ MinimalInterpreter v701168186286 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701168180654 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 2)))))))
private theorem no_v701168180654 : ¬ MinimalInterpreter v701168180654 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701168553582 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v701168553582 : ¬ MinimalInterpreter v701168553582 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701168552878 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v701168552878 : ¬ MinimalInterpreter v701168552878 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701165669998 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v701165669998 : ¬ MinimalInterpreter v701165669998 :=
  w_cut false 0 (by decide)
private def v701165669294 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v701165669294 : ¬ MinimalInterpreter v701165669294 :=
  w_cut false 0 (by decide)
theorem row24 : BadRow (row ⟨0,2,0,2,5,5⟩ [0,0] [1,1,1,0,2]) := by
  have h : row ⟨0,2,0,2,5,5⟩ [0,0] [1,1,1,0,2] = [v701157199470,v701157198766,v701157176942,v701157176238,v701157170606,v701156478574,v701156477870,v701156456046,v701156275822,v701156455342,v701156449710,v701156275118,v701156269486,v701156224430,v701168209518,v701168208814,v701168186990,v701168186286,v701168180654,v701168553582,v701168552878,v701165669998,v701165669294] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157199470) (.cons (no_v701157198766) (.cons (no_v701157176942) (.cons (no_v701157176238) (.cons (no_v701157170606) (.cons (no_v701156478574) (.cons (no_v701156477870) (.cons (no_v701156456046) (.cons (no_v701156275822) (.cons (no_v701156455342) (.cons (no_v701156449710) (.cons (no_v701156275118) (.cons (no_v701156269486) (.cons (no_v701156224430) (.cons (no_v701168209518) (.cons (no_v701168208814) (.cons (no_v701168186990) (.cons (no_v701168186286) (.cons (no_v701168180654) (.cons (no_v701168553582) (.cons (no_v701168552878) (.cons (no_v701165669998) (.cons (no_v701165669294) .nil)))))))))))))))))))))))

theorem row25 : BadRow (row ⟨0,2,0,2,5,5⟩ [0,0] [1,1,1,1,1]) := by
  have h : row ⟨0,2,0,2,5,5⟩ [0,0] [1,1,1,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v701157199482 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v701157199482 : ¬ MinimalInterpreter v701157199482 :=
  chain_cut false 2 (by decide)
private def v701157198778 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v701157198778 : ¬ MinimalInterpreter v701157198778 :=
  chain_cut false 2 (by decide)
private def v701157176954 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 0))))))))
private theorem no_v701157176954 : ¬ MinimalInterpreter v701157176954 :=
  chain_cut false 2 (by decide)
private def v701157176250 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))))))
private theorem no_v701157176250 : ¬ MinimalInterpreter v701157176250 :=
  chain_cut false 2 (by decide)
private def v701157170618 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))))))
private theorem no_v701157170618 : ¬ MinimalInterpreter v701157170618 :=
  chain_cut false 2 (by decide)
private def v701156478586 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v701156478586 : ¬ MinimalInterpreter v701156478586 :=
  chain_cut false 2 (by decide)
private def v701156477882 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v701156477882 : ¬ MinimalInterpreter v701156477882 :=
  chain_cut false 2 (by decide)
private def v701156456058 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.app (.var 2) (.var 0)))))))
private theorem no_v701156456058 : ¬ MinimalInterpreter v701156456058 :=
  chain_cut false 2 (by decide)
private def v701156275834 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.app (.var 2) (.var 0)))))))
private theorem no_v701156275834 : ¬ MinimalInterpreter v701156275834 :=
  chain_cut false 2 (by decide)
private def v701156455354 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 2)))) (.var 0))))))
private theorem no_v701156455354 : ¬ MinimalInterpreter v701156455354 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 2)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 2)))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 1))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 2)))) (.var 0)) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 1)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156449722 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 2))) (.var 0))))))
private theorem no_v701156449722 : ¬ MinimalInterpreter v701156449722 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 2))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 2))) (.var 0)) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156275130 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 2))) (.var 0))))))
private theorem no_v701156275130 : ¬ MinimalInterpreter v701156275130 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 2))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 2))) (.var 0)) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156269498 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 2)) (.var 0))))))
private theorem no_v701156269498 : ¬ MinimalInterpreter v701156269498 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 2)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 2)) (.var 0)) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156224442 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 2)) (.var 0))))))
private theorem no_v701156224442 : ¬ MinimalInterpreter v701156224442 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 2)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 2)) (.var 0)) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701168209530 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v701168209530 : ¬ MinimalInterpreter v701168209530 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701168208826 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v701168208826 : ¬ MinimalInterpreter v701168208826 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701168187002 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 0))))))))
private theorem no_v701168187002 : ¬ MinimalInterpreter v701168187002 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701168186298 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))))))
private theorem no_v701168186298 : ¬ MinimalInterpreter v701168186298 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v701168180666 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))))))
private theorem no_v701168180666 : ¬ MinimalInterpreter v701168180666 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v701168553594 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v701168553594 : ¬ MinimalInterpreter v701168553594 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701168552890 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v701168552890 : ¬ MinimalInterpreter v701168552890 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))) (.app (.var 1) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))
private def v701165670010 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v701165670010 : ¬ MinimalInterpreter v701165670010 :=
  w_cut false 0 (by decide)
private def v701165669306 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v701165669306 : ¬ MinimalInterpreter v701165669306 :=
  w_cut false 0 (by decide)
theorem row26 : BadRow (row ⟨0,2,0,2,5,5⟩ [0,0] [1,1,1,2,0]) := by
  have h : row ⟨0,2,0,2,5,5⟩ [0,0] [1,1,1,2,0] = [v701157199482,v701157198778,v701157176954,v701157176250,v701157170618,v701156478586,v701156477882,v701156456058,v701156275834,v701156455354,v701156449722,v701156275130,v701156269498,v701156224442,v701168209530,v701168208826,v701168187002,v701168186298,v701168180666,v701168553594,v701168552890,v701165670010,v701165669306] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157199482) (.cons (no_v701157198778) (.cons (no_v701157176954) (.cons (no_v701157176250) (.cons (no_v701157170618) (.cons (no_v701156478586) (.cons (no_v701156477882) (.cons (no_v701156456058) (.cons (no_v701156275834) (.cons (no_v701156455354) (.cons (no_v701156449722) (.cons (no_v701156275130) (.cons (no_v701156269498) (.cons (no_v701156224442) (.cons (no_v701168209530) (.cons (no_v701168208826) (.cons (no_v701168187002) (.cons (no_v701168186298) (.cons (no_v701168180666) (.cons (no_v701168553594) (.cons (no_v701168552890) (.cons (no_v701165670010) (.cons (no_v701165669306) .nil)))))))))))))))))))))))

private def v701157199670 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v701157199670 : ¬ MinimalInterpreter v701157199670 :=
  chain_cut false 2 (by decide)
private def v701157198806 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v701157198806 : ¬ MinimalInterpreter v701157198806 :=
  chain_cut false 2 (by decide)
private def v701157177142 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 1))))))))
private theorem no_v701157177142 : ¬ MinimalInterpreter v701157177142 :=
  chain_cut false 2 (by decide)
private def v701157176278 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 1)))))))
private theorem no_v701157176278 : ¬ MinimalInterpreter v701157176278 :=
  chain_cut false 2 (by decide)
private def v701157170646 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 1)))))))
private theorem no_v701157170646 : ¬ MinimalInterpreter v701157170646 :=
  chain_cut false 2 (by decide)
private def v701156478774 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v701156478774 : ¬ MinimalInterpreter v701156478774 :=
  chain_cut false 2 (by decide)
private def v701156477910 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v701156477910 : ¬ MinimalInterpreter v701156477910 :=
  chain_cut false 2 (by decide)
private def v701156456246 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)))))))
private theorem no_v701156456246 : ¬ MinimalInterpreter v701156456246 :=
  chain_cut false 2 (by decide)
private def v701156276022 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.app (.var 0) (.var 1)))))))
private theorem no_v701156276022 : ¬ MinimalInterpreter v701156276022 :=
  chain_cut false 2 (by decide)
private def v701156455382 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.app (.var 2) (.var 0)))) (.var 1))))))
private theorem no_v701156455382 : ¬ MinimalInterpreter v701156455382 :=
  chain_cut false 2 (by decide)
private def v701156449750 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.var 0))) (.var 1))))))
private theorem no_v701156449750 : ¬ MinimalInterpreter v701156449750 :=
  chain_cut false 2 (by decide)
private def v701156275158 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 0))) (.var 1))))))
private theorem no_v701156275158 : ¬ MinimalInterpreter v701156275158 :=
  chain_cut false 2 (by decide)
private def v701156269526 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)) (.var 1))))))
private theorem no_v701156269526 : ¬ MinimalInterpreter v701156269526 :=
  chain_cut false 2 (by decide)
private def v701156224470 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)) (.var 1))))))
private theorem no_v701156224470 : ¬ MinimalInterpreter v701156224470 :=
  chain_cut false 2 (by decide)
private def v701168209718 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v701168209718 : ¬ MinimalInterpreter v701168209718 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701168208854 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v701168208854 : ¬ MinimalInterpreter v701168208854 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701168187190 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 1))))))))
private theorem no_v701168187190 : ¬ MinimalInterpreter v701168187190 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701168186326 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 1)))))))
private theorem no_v701168186326 : ¬ MinimalInterpreter v701168186326 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701168180694 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 1)))))))
private theorem no_v701168180694 : ¬ MinimalInterpreter v701168180694 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701168553782 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v701168553782 : ¬ MinimalInterpreter v701168553782 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 100 (by decide) (by decide) (by decide) (by decide)
private def v701168552918 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v701168552918 : ¬ MinimalInterpreter v701168552918 :=
  w_cut false 0 (by decide)
private def v701165670198 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v701165670198 : ¬ MinimalInterpreter v701165670198 :=
  w_cut false 0 (by decide)
private def v701165669334 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v701165669334 : ¬ MinimalInterpreter v701165669334 :=
  w_cut false 0 (by decide)
private def v701165499350 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))) (.var 1)))))
private theorem no_v701165499350 : ¬ MinimalInterpreter v701165499350 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701165493718 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.var 1)))))
private theorem no_v701165493718 : ¬ MinimalInterpreter v701165493718 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.var 1))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.var 1))) (.app (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 1)) (.var 0) (by decide) (by decide)))))
theorem row27 : BadRow (row ⟨0,2,0,2,5,5⟩ [0,0] [1,1,2,0,1]) := by
  have h : row ⟨0,2,0,2,5,5⟩ [0,0] [1,1,2,0,1] = [v701157199670,v701157198806,v701157177142,v701157176278,v701157170646,v701156478774,v701156477910,v701156456246,v701156276022,v701156455382,v701156449750,v701156275158,v701156269526,v701156224470,v701168209718,v701168208854,v701168187190,v701168186326,v701168180694,v701168553782,v701168552918,v701165670198,v701165669334,v701165499350,v701165493718] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157199670) (.cons (no_v701157198806) (.cons (no_v701157177142) (.cons (no_v701157176278) (.cons (no_v701157170646) (.cons (no_v701156478774) (.cons (no_v701156477910) (.cons (no_v701156456246) (.cons (no_v701156276022) (.cons (no_v701156455382) (.cons (no_v701156449750) (.cons (no_v701156275158) (.cons (no_v701156269526) (.cons (no_v701156224470) (.cons (no_v701168209718) (.cons (no_v701168208854) (.cons (no_v701168187190) (.cons (no_v701168186326) (.cons (no_v701168180694) (.cons (no_v701168553782) (.cons (no_v701168552918) (.cons (no_v701165670198) (.cons (no_v701165669334) (.cons (no_v701165499350) (.cons (no_v701165493718) .nil)))))))))))))))))))))))))

private def v701157199674 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v701157199674 : ¬ MinimalInterpreter v701157199674 :=
  chain_cut false 2 (by decide)
private def v701157198810 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v701157198810 : ¬ MinimalInterpreter v701157198810 :=
  chain_cut false 2 (by decide)
private def v701157177146 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.var 0))))))))
private theorem no_v701157177146 : ¬ MinimalInterpreter v701157177146 :=
  chain_cut false 2 (by decide)
private def v701157176282 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)))))))
private theorem no_v701157176282 : ¬ MinimalInterpreter v701157176282 :=
  chain_cut false 2 (by decide)
private def v701157170650 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))))))
private theorem no_v701157170650 : ¬ MinimalInterpreter v701157170650 :=
  chain_cut false 2 (by decide)
private def v701156478778 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v701156478778 : ¬ MinimalInterpreter v701156478778 :=
  chain_cut false 2 (by decide)
private def v701156477914 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v701156477914 : ¬ MinimalInterpreter v701156477914 :=
  chain_cut false 2 (by decide)
private def v701156456250 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.app (.var 1) (.var 0)))))))
private theorem no_v701156456250 : ¬ MinimalInterpreter v701156456250 :=
  chain_cut false 2 (by decide)
private def v701156276026 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.app (.var 1) (.var 0)))))))
private theorem no_v701156276026 : ¬ MinimalInterpreter v701156276026 :=
  chain_cut false 2 (by decide)
private def v701156455386 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.app (.var 2) (.var 1)))) (.var 0))))))
private theorem no_v701156455386 : ¬ MinimalInterpreter v701156455386 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.app (.var 2) (.var 1)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 1) (.app (.var 2) (.var 1)))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 0))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 1) (.app (.var 2) (.var 1)))) (.var 0)) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 0)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156449754 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.var 1))) (.var 0))))))
private theorem no_v701156449754 : ¬ MinimalInterpreter v701156449754 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.var 1))) (.var 0)) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156275162 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 1))) (.var 0))))))
private theorem no_v701156275162 : ¬ MinimalInterpreter v701156275162 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 1))) (.var 0)) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156269530 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 1)) (.var 0))))))
private theorem no_v701156269530 : ¬ MinimalInterpreter v701156269530 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 1)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 1)) (.var 0)) (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156224474 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 1)) (.var 0))))))
private theorem no_v701156224474 : ¬ MinimalInterpreter v701156224474 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 1)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 1)) (.var 0)) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701168209722 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v701168209722 : ¬ MinimalInterpreter v701168209722 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701168208858 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v701168208858 : ¬ MinimalInterpreter v701168208858 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701168187194 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.var 0))))))))
private theorem no_v701168187194 : ¬ MinimalInterpreter v701168187194 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701168186330 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)))))))
private theorem no_v701168186330 : ¬ MinimalInterpreter v701168186330 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v701168180698 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))))))
private theorem no_v701168180698 : ¬ MinimalInterpreter v701168180698 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v701168553786 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v701168553786 : ¬ MinimalInterpreter v701168553786 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 100 (by decide) (by decide) (by decide) (by decide)
private def v701168552922 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v701168552922 : ¬ MinimalInterpreter v701168552922 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))) (.app (.var 1) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))
private def v701165670202 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v701165670202 : ¬ MinimalInterpreter v701165670202 :=
  w_cut false 0 (by decide)
private def v701165669338 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v701165669338 : ¬ MinimalInterpreter v701165669338 :=
  w_cut false 0 (by decide)
theorem row28 : BadRow (row ⟨0,2,0,2,5,5⟩ [0,0] [1,1,2,1,0]) := by
  have h : row ⟨0,2,0,2,5,5⟩ [0,0] [1,1,2,1,0] = [v701157199674,v701157198810,v701157177146,v701157176282,v701157170650,v701156478778,v701156477914,v701156456250,v701156276026,v701156455386,v701156449754,v701156275162,v701156269530,v701156224474,v701168209722,v701168208858,v701168187194,v701168186330,v701168180698,v701168553786,v701168552922,v701165670202,v701165669338] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157199674) (.cons (no_v701157198810) (.cons (no_v701157177146) (.cons (no_v701157176282) (.cons (no_v701157170650) (.cons (no_v701156478778) (.cons (no_v701156477914) (.cons (no_v701156456250) (.cons (no_v701156276026) (.cons (no_v701156455386) (.cons (no_v701156449754) (.cons (no_v701156275162) (.cons (no_v701156269530) (.cons (no_v701156224474) (.cons (no_v701168209722) (.cons (no_v701168208858) (.cons (no_v701168187194) (.cons (no_v701168186330) (.cons (no_v701168180698) (.cons (no_v701168553786) (.cons (no_v701168552922) (.cons (no_v701165670202) (.cons (no_v701165669338) .nil)))))))))))))))))))))))

private def v701157205614 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 2)))))))))
private theorem no_v701157205614 : ¬ MinimalInterpreter v701157205614 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701157205422 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 2))))))))
private theorem no_v701157205422 : ¬ MinimalInterpreter v701157205422 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701157177966 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 2))))))))
private theorem no_v701157177966 : ¬ MinimalInterpreter v701157177966 :=
  chain_cut true 4 (by decide)
private def v701157177774 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 2)))))))
private theorem no_v701157177774 : ¬ MinimalInterpreter v701157177774 :=
  chain_cut true 4 (by decide)
private def v701157170862 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 2)))))))
private theorem no_v701157170862 : ¬ MinimalInterpreter v701157170862 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156484718 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.app (.var 0) (.var 2))))))))
private theorem no_v701156484718 : ¬ MinimalInterpreter v701156484718 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701156484526 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.app (.var 0) (.var 0)) (.var 2)))))))
private theorem no_v701156484526 : ¬ MinimalInterpreter v701156484526 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701156457070 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.app (.var 0) (.var 2)))))))
private theorem no_v701156457070 : ¬ MinimalInterpreter v701156457070 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701156276846 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 2)))))))
private theorem no_v701156276846 : ¬ MinimalInterpreter v701156276846 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156456878 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0)))) (.var 2))))))
private theorem no_v701156456878 : ¬ MinimalInterpreter v701156456878 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156449966 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0))) (.var 2))))))
private theorem no_v701156449966 : ¬ MinimalInterpreter v701156449966 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156276654 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.var 2))))))
private theorem no_v701156276654 : ¬ MinimalInterpreter v701156276654 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156269742 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0)) (.var 2))))))
private theorem no_v701156269742 : ¬ MinimalInterpreter v701156269742 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156224686 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.var 2))))))
private theorem no_v701156224686 : ¬ MinimalInterpreter v701156224686 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem row29 : BadRow (row ⟨0,2,0,2,5,5⟩ [0,0] [1,2,0,0,2]) := by
  have h : row ⟨0,2,0,2,5,5⟩ [0,0] [1,2,0,0,2] = [v701157205614,v701157205422,v701157177966,v701157177774,v701157170862,v701156484718,v701156484526,v701156457070,v701156276846,v701156456878,v701156449966,v701156276654,v701156269742,v701156224686] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157205614) (.cons (no_v701157205422) (.cons (no_v701157177966) (.cons (no_v701157177774) (.cons (no_v701157170862) (.cons (no_v701156484718) (.cons (no_v701156484526) (.cons (no_v701156457070) (.cons (no_v701156276846) (.cons (no_v701156456878) (.cons (no_v701156449966) (.cons (no_v701156276654) (.cons (no_v701156269742) (.cons (no_v701156224686) .nil))))))))))))))

end Blc.SelfintSingleObject.Rows39
