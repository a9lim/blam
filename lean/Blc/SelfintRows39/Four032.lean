import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v701153648438 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 3) (.app (.var 0) (.var 1))))))))))
private theorem no_v701153648438 : ¬ MinimalInterpreter v701153648438 :=
  cost_cut false 2 (by decide)
private def v701153646550 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 3) (.var 0)) (.var 1)))))))))
private theorem no_v701153646550 : ¬ MinimalInterpreter v701153646550 :=
  cost_cut false 2 (by decide)
private def v701153603382 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 1)))))))))
private theorem no_v701153603382 : ¬ MinimalInterpreter v701153603382 :=
  cost_cut false 2 (by decide)
private def v701153601494 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 3) (.var 0))) (.var 1))))))))
private theorem no_v701153601494 : ¬ MinimalInterpreter v701153601494 :=
  cost_cut false 2 (by decide)
private def v701153590230 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 1))))))))
private theorem no_v701153590230 : ¬ MinimalInterpreter v701153590230 :=
  cost_cut false 2 (by decide)
private def v701154360518 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 3) (.app (.var 0) (.lam (.var 1))))))))))
private theorem no_v701154360518 : ¬ MinimalInterpreter v701154360518 :=
  chain_cut false 2 (by decide)
private def v701154352966 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 3) (.var 0)) (.lam (.var 1)))))))))
private theorem no_v701154352966 : ¬ MinimalInterpreter v701154352966 :=
  chain_cut false 2 (by decide)
private def v701154180294 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.lam (.var 1)))))))))
private theorem no_v701154180294 : ¬ MinimalInterpreter v701154180294 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.lam (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.var 1)))))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 1) (.app (.var 0) (.lam (.var 1))))) (.app (.app (.var 1) (.var 3)) (.app (.var 0) (so_dead (by decide) (.var 1)))) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))
private def v701154168630 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 3))) (.app (.var 0) (.var 1))))))))
private theorem no_v701154168630 : ¬ MinimalInterpreter v701154168630 :=
  cost_cut false 2 (by decide)
private def v701154172742 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 3) (.var 0))) (.lam (.var 1))))))))
private theorem no_v701154172742 : ¬ MinimalInterpreter v701154172742 :=
  chain_cut false 2 (by decide)
private def v701154127686 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.lam (.var 1))))))))
private theorem no_v701154127686 : ¬ MinimalInterpreter v701154127686 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.var 1))))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.app (.var 1) (.var 0)) (.lam (.var 1)))) (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (so_dead (by decide) (.var 1))) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))
private def v701154124758 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 3))) (.var 0)) (.var 1)))))))
private theorem no_v701154124758 : ¬ MinimalInterpreter v701154124758 :=
  cost_cut false 2 (by decide)
private def v701157089078 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 3) (.app (.var 0) (.var 1))))))))))
private theorem no_v701157089078 : ¬ MinimalInterpreter v701157089078 :=
  cost_cut false 2 (by decide)
private def v701157087190 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 3) (.var 0)) (.var 1)))))))))
private theorem no_v701157087190 : ¬ MinimalInterpreter v701157087190 :=
  cost_cut false 2 (by decide)
private def v701156441286 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 3))) (.app (.var 0) (.lam (.var 1))))))))
private theorem no_v701156441286 : ¬ MinimalInterpreter v701156441286 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 3))) (.app (.var 0) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.var 1)))))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 1) (.app (.var 0) (.lam (.var 1))))) (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.app (.var 0) (so_dead (by decide) (.var 1)))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))
private def v701156265798 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 3))) (.var 0)) (.lam (.var 1)))))))
private theorem no_v701156265798 : ¬ MinimalInterpreter v701156265798 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 3))) (.var 0)) (.lam (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.var 1))))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.app (.var 1) (.var 0)) (.lam (.var 1)))) (.app (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.var 0)) (so_dead (by decide) (.var 1))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))
theorem row192 : BadRow (row ⟨0,2,0,4,4,5⟩ [0,0] [1,3,0,1]) := by
  have h : row ⟨0,2,0,4,4,5⟩ [0,0] [1,3,0,1] = [v701153648438,v701153646550,v701153603382,v701153601494,v701153590230,v701154360518,v701154352966,v701154180294,v701154168630,v701154172742,v701154127686,v701154124758,v701157089078,v701157087190,v701156441286,v701156265798] := by decide +kernel
  rw [h]
  exact (.cons (no_v701153648438) (.cons (no_v701153646550) (.cons (no_v701153603382) (.cons (no_v701153601494) (.cons (no_v701153590230) (.cons (no_v701154360518) (.cons (no_v701154352966) (.cons (no_v701154180294) (.cons (no_v701154168630) (.cons (no_v701154172742) (.cons (no_v701154127686) (.cons (no_v701154124758) (.cons (no_v701157089078) (.cons (no_v701157087190) (.cons (no_v701156441286) (.cons (no_v701156265798) .nil))))))))))))))))

private def v701153648442 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 3) (.app (.var 1) (.var 0))))))))))
private theorem no_v701153648442 : ¬ MinimalInterpreter v701153648442 :=
  cost_cut false 2 (by decide)
private def v701153646554 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 3) (.var 1)) (.var 0)))))))))
private theorem no_v701153646554 : ¬ MinimalInterpreter v701153646554 :=
  cost_cut false 2 (by decide)
private def v701153603386 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 3)) (.app (.var 1) (.var 0)))))))))
private theorem no_v701153603386 : ¬ MinimalInterpreter v701153603386 :=
  cost_cut false 2 (by decide)
private def v701153601498 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 3) (.var 1))) (.var 0))))))))
private theorem no_v701153601498 : ¬ MinimalInterpreter v701153601498 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 3) (.var 1))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 2) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 3) (.var 1))) (.var 0)) (.app (.var 0) (.app (.var 2) (.var 0))) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))
private def v701153590234 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 3)) (.var 1)) (.var 0))))))))
private theorem no_v701153590234 : ¬ MinimalInterpreter v701153590234 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 3)) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 2)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 3)) (.var 1)) (.var 0)) (.app (.app (.var 0) (.var 2)) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))
private def v701154352922 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 3) (.lam (.var 1))) (.var 0))))))))
private theorem no_v701154352922 : ¬ MinimalInterpreter v701154352922 :=
  chain_cut false 2 (by decide)
private def v701154168634 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 3))) (.app (.var 1) (.var 0))))))))
private theorem no_v701154168634 : ¬ MinimalInterpreter v701154168634 :=
  cost_cut false 2 (by decide)
private def v701154166746 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 3) (.var 1)))) (.var 0)))))))
private theorem no_v701154166746 : ¬ MinimalInterpreter v701154166746 :=
  cost_cut false 2 (by decide)
private def v701154172698 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 3) (.lam (.var 1)))) (.var 0)))))))
private theorem no_v701154172698 : ¬ MinimalInterpreter v701154172698 :=
  chain_cut false 2 (by decide)
private def v701154127642 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 3)) (.lam (.var 1))) (.var 0)))))))
private theorem no_v701154127642 : ¬ MinimalInterpreter v701154127642 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 3)) (.lam (.var 1))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 1))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.app (.var 1) (.lam (.var 1))) (.var 0))) (.app (.app (.app (.var 1) (.var 3)) (so_dead (by decide) (.var 1))) (.var 0)) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))
private def v701154124762 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 3))) (.var 1)) (.var 0)))))))
private theorem no_v701154124762 : ¬ MinimalInterpreter v701154124762 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 3))) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.lam (.var 2))) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.var 1)) (.var 0)) (.app (.app (.var 0) (so_dead (by decide) (.var 2))) (.var 0)) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide))))))
private def v701157089082 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 3) (.app (.var 1) (.var 0))))))))))
private theorem no_v701157089082 : ¬ MinimalInterpreter v701157089082 :=
  cost_cut false 2 (by decide)
private def v701157087194 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 3) (.var 1)) (.var 0)))))))))
private theorem no_v701157087194 : ¬ MinimalInterpreter v701157087194 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 3) (.var 1)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 3) (.var 1)) (.var 0)) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))))
private def v701156265754 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 3))) (.lam (.var 1))) (.var 0))))))
private theorem no_v701156265754 : ¬ MinimalInterpreter v701156265754 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 3))) (.lam (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 1))) (.var 0)))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.app (.var 1) (.lam (.var 1))) (.var 0))) (.app (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (so_dead (by decide) (.var 1))) (.var 0)) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))
theorem row193 : BadRow (row ⟨0,2,0,4,4,5⟩ [0,0] [1,3,1,0]) := by
  have h : row ⟨0,2,0,4,4,5⟩ [0,0] [1,3,1,0] = [v701153648442,v701153646554,v701153603386,v701153601498,v701153590234,v701154352922,v701154168634,v701154166746,v701154172698,v701154127642,v701154124762,v701157089082,v701157087194,v701156265754] := by decide +kernel
  rw [h]
  exact (.cons (no_v701153648442) (.cons (no_v701153646554) (.cons (no_v701153603386) (.cons (no_v701153601498) (.cons (no_v701153590234) (.cons (no_v701154352922) (.cons (no_v701154168634) (.cons (no_v701154166746) (.cons (no_v701154172698) (.cons (no_v701154127642) (.cons (no_v701154124762) (.cons (no_v701157089082) (.cons (no_v701157087194) (.cons (no_v701156265754) .nil))))))))))))))

private def v701153648538 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 4) (.app (.var 0) (.var 0))))))))))
private theorem no_v701153648538 : ¬ MinimalInterpreter v701153648538 :=
  chain_cut false 2 (by decide)
private def v701153646570 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 4) (.var 0)) (.var 0)))))))))
private theorem no_v701153646570 : ¬ MinimalInterpreter v701153646570 :=
  chain_cut false 2 (by decide)
private def v701153603482 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 4)) (.app (.var 0) (.var 0)))))))))
private theorem no_v701153603482 : ¬ MinimalInterpreter v701153603482 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 4)) (.app (.var 0) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (so_dead (by decide) (.lam (r := (.var 2)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.var 3))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 4)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 3)) (by decide) (by decide)) (.var 2) (by decide) (by decide)))))))
private def v701153601514 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 4) (.var 0))) (.var 0))))))))
private theorem no_v701153601514 : ¬ MinimalInterpreter v701153601514 :=
  chain_cut false 2 (by decide)
private def v701153590250 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 4)) (.var 0)) (.var 0))))))))
private theorem no_v701153590250 : ¬ MinimalInterpreter v701153590250 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 4)) (.var 0)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (so_dead (by decide) (.lam (r := (.var 2)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 3))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.var 4)) (.var 0)) (.var 0)) (.app (.var 0) (.var 3)) (by decide) (by decide)) (.var 2) (by decide) (by decide)))))))
private def v701154168730 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 4))) (.app (.var 0) (.var 0))))))))
private theorem no_v701154168730 : ¬ MinimalInterpreter v701154168730 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 4))) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.lam (.var 2))) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.lam (.var 3)))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (so_dead (by decide) (.var 4))) (.app (.var 0) (.var 0))) (.app (.var 0) (so_dead (by decide) (.var 3))) (by decide) (by decide)) (so_dead (by decide) (.var 2)) (by decide) (by decide))))))
private def v701154124778 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 4))) (.var 0)) (.var 0)))))))
private theorem no_v701154124778 : ¬ MinimalInterpreter v701154124778 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 4))) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.lam (.var 2))) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.lam (.var 3)))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (so_dead (by decide) (.var 4))) (.var 0)) (.var 0)) (.app (.var 0) (so_dead (by decide) (.var 3))) (by decide) (by decide)) (so_dead (by decide) (.var 2)) (by decide) (by decide))))))
private def v701156429722 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.lam (.var 4)))) (.app (.var 0) (.var 0)))))))
private theorem no_v701156429722 : ¬ MinimalInterpreter v701156429722 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.lam (.var 4)))) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.lam (.var 2)))) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.lam (.lam (.var 3))))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (so_dead (by decide) (so_dead (by decide) (.var 4)))) (.app (.var 0) (.var 0))) (.app (.var 0) (so_dead (by decide) (so_dead (by decide) (.var 3)))) (by decide) (by decide)) (so_dead (by decide) (so_dead (by decide) (.var 2))) (by decide) (by decide)))))
private def v701156262890 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.lam (.var 4)))) (.var 0)) (.var 0))))))
private theorem no_v701156262890 : ¬ MinimalInterpreter v701156262890 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.lam (.var 4)))) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.lam (.var 2)))) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.lam (.lam (.var 3))))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (so_dead (by decide) (so_dead (by decide) (.var 4)))) (.var 0)) (.var 0)) (.app (.var 0) (so_dead (by decide) (so_dead (by decide) (.var 3)))) (by decide) (by decide)) (so_dead (by decide) (so_dead (by decide) (.var 2))) (by decide) (by decide)))))
theorem row194 : BadRow (row ⟨0,2,0,4,4,5⟩ [0,0] [1,4,0,0]) := by
  have h : row ⟨0,2,0,4,4,5⟩ [0,0] [1,4,0,0] = [v701153648538,v701153646570,v701153603482,v701153601514,v701153590250,v701154168730,v701154124778,v701156429722,v701156262890] := by decide +kernel
  rw [h]
  exact (.cons (no_v701153648538) (.cons (no_v701153646570) (.cons (no_v701153603482) (.cons (no_v701153601514) (.cons (no_v701153590250) (.cons (no_v701154168730) (.cons (no_v701154124778) (.cons (no_v701156429722) (.cons (no_v701156262890) .nil)))))))))

private def v701153660126 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 3))))))))))
private theorem no_v701153660126 : ¬ MinimalInterpreter v701153660126 :=
  cost_cut false 2 (by decide)
private def v701153659742 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 3)))))))))
private theorem no_v701153659742 : ¬ MinimalInterpreter v701153659742 :=
  cost_cut false 2 (by decide)
private def v701153604830 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 3)))))))))
private theorem no_v701153604830 : ¬ MinimalInterpreter v701153604830 :=
  cost_cut false 2 (by decide)
private def v701153604446 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 3))))))))
private theorem no_v701153604446 : ¬ MinimalInterpreter v701153604446 :=
  cost_cut false 2 (by decide)
private def v701153590622 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 3))))))))
private theorem no_v701153590622 : ¬ MinimalInterpreter v701153590622 :=
  cost_cut false 2 (by decide)
private def v701157395486 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 3))))))))))
private theorem no_v701157395486 : ¬ MinimalInterpreter v701157395486 :=
  chain_cut false 2 (by decide)
private def v701157389342 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))))))
private theorem no_v701157389342 : ¬ MinimalInterpreter v701157389342 :=
  chain_cut false 2 (by decide)
private def v701156510750 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.lam (.lam (.var 3)))))))))
private theorem no_v701156510750 : ¬ MinimalInterpreter v701156510750 :=
  chain_cut false 2 (by decide)
private def v701156504606 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.lam (.lam (.var 3))))))))
private theorem no_v701156504606 : ¬ MinimalInterpreter v701156504606 :=
  chain_cut false 2 (by decide)
private def v701156283422 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.lam (.lam (.var 3))))))))
private theorem no_v701156283422 : ¬ MinimalInterpreter v701156283422 :=
  chain_cut false 2 (by decide)
theorem row195 : BadRow (row ⟨0,2,0,4,4,5⟩ [0,0] [2,0,0,3]) := by
  have h : row ⟨0,2,0,4,4,5⟩ [0,0] [2,0,0,3] = [v701153660126,v701153659742,v701153604830,v701153604446,v701153590622,v701157395486,v701157389342,v701156510750,v701156504606,v701156283422] := by decide +kernel
  rw [h]
  exact (.cons (no_v701153660126) (.cons (no_v701153659742) (.cons (no_v701153604830) (.cons (no_v701153604446) (.cons (no_v701153590622) (.cons (no_v701157395486) (.cons (no_v701157389342) (.cons (no_v701156510750) (.cons (no_v701156504606) (.cons (no_v701156283422) .nil))))))))))

private def v701153660142 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 2))))))))))
private theorem no_v701153660142 : ¬ MinimalInterpreter v701153660142 :=
  cost_cut false 2 (by decide)
private def v701153659758 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 2)))))))))
private theorem no_v701153659758 : ¬ MinimalInterpreter v701153659758 :=
  cost_cut false 2 (by decide)
private def v701153604846 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 2)))))))))
private theorem no_v701153604846 : ¬ MinimalInterpreter v701153604846 :=
  cost_cut false 2 (by decide)
private def v701153604462 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 2))))))))
private theorem no_v701153604462 : ¬ MinimalInterpreter v701153604462 :=
  cost_cut false 2 (by decide)
private def v701153590638 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 2))))))))
private theorem no_v701153590638 : ¬ MinimalInterpreter v701153590638 :=
  cost_cut false 2 (by decide)
private def v701154406638 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.lam (.app (.var 1) (.var 2))))))))))
private theorem no_v701154406638 : ¬ MinimalInterpreter v701154406638 :=
  cost_cut false 2 (by decide)
private def v701154407310 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.lam (.var 2))))))))))
private theorem no_v701154407310 : ¬ MinimalInterpreter v701154407310 :=
  cost_cut false 2 (by decide)
private def v701154405774 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.lam (.var 2)))))))))
private theorem no_v701154405774 : ¬ MinimalInterpreter v701154405774 :=
  cost_cut false 2 (by decide)
private def v701154185454 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.lam (.app (.var 1) (.var 2)))))))))
private theorem no_v701154185454 : ¬ MinimalInterpreter v701154185454 :=
  cost_cut false 2 (by decide)
private def v701154186126 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.lam (.var 2)))))))))
private theorem no_v701154186126 : ¬ MinimalInterpreter v701154186126 :=
  cost_cut false 2 (by decide)
private def v701154184590 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.lam (.var 2))))))))
private theorem no_v701154184590 : ¬ MinimalInterpreter v701154184590 :=
  cost_cut false 2 (by decide)
private def v701154129294 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.lam (.var 2))))))))
private theorem no_v701154129294 : ¬ MinimalInterpreter v701154129294 :=
  cost_cut false 2 (by decide)
private def v701157395982 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 2))))))))))
private theorem no_v701157395982 : ¬ MinimalInterpreter v701157395982 :=
  chain_cut false 2 (by decide)
private def v701157389838 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 2)))))))))
private theorem no_v701157389838 : ¬ MinimalInterpreter v701157389838 :=
  chain_cut false 2 (by decide)
private def v701157388686 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 2))))))))
private theorem no_v701157388686 : ¬ MinimalInterpreter v701157388686 :=
  chain_cut false 2 (by decide)
private def v701156511246 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.lam (.lam (.var 2)))))))))
private theorem no_v701156511246 : ¬ MinimalInterpreter v701156511246 :=
  chain_cut false 2 (by decide)
private def v701156505102 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.lam (.lam (.var 2))))))))
private theorem no_v701156505102 : ¬ MinimalInterpreter v701156505102 :=
  chain_cut false 2 (by decide)
private def v701156283918 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.lam (.lam (.var 2))))))))
private theorem no_v701156283918 : ¬ MinimalInterpreter v701156283918 :=
  chain_cut false 2 (by decide)
private def v701156503950 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 2)))))))
private theorem no_v701156503950 : ¬ MinimalInterpreter v701156503950 :=
  chain_cut false 2 (by decide)
private def v701156282766 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 1))) (.lam (.var 2)))))))
private theorem no_v701156282766 : ¬ MinimalInterpreter v701156282766 :=
  chain_cut false 2 (by decide)
theorem row196 : BadRow (row ⟨0,2,0,4,4,5⟩ [0,0] [2,0,1,2]) := by
  have h : row ⟨0,2,0,4,4,5⟩ [0,0] [2,0,1,2] = [v701153660142,v701153659758,v701153604846,v701153604462,v701153590638,v701154406638,v701154407310,v701154405774,v701154185454,v701154186126,v701154184590,v701154129294,v701157395982,v701157389838,v701157388686,v701156511246,v701156505102,v701156283918,v701156503950,v701156282766] := by decide +kernel
  rw [h]
  exact (.cons (no_v701153660142) (.cons (no_v701153659758) (.cons (no_v701153604846) (.cons (no_v701153604462) (.cons (no_v701153590638) (.cons (no_v701154406638) (.cons (no_v701154407310) (.cons (no_v701154405774) (.cons (no_v701154185454) (.cons (no_v701154186126) (.cons (no_v701154184590) (.cons (no_v701154129294) (.cons (no_v701157395982) (.cons (no_v701157389838) (.cons (no_v701157388686) (.cons (no_v701156511246) (.cons (no_v701156505102) (.cons (no_v701156283918) (.cons (no_v701156503950) (.cons (no_v701156282766) .nil))))))))))))))))))))

private def v701153660150 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 2) (.var 1))))))))))
private theorem no_v701153660150 : ¬ MinimalInterpreter v701153660150 :=
  cost_cut false 2 (by decide)
private def v701153659766 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 2)) (.var 1)))))))))
private theorem no_v701153659766 : ¬ MinimalInterpreter v701153659766 :=
  cost_cut false 2 (by decide)
private def v701153604854 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 2) (.var 1)))))))))
private theorem no_v701153604854 : ¬ MinimalInterpreter v701153604854 :=
  cost_cut false 2 (by decide)
private def v701153604470 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 2))) (.var 1))))))))
private theorem no_v701153604470 : ¬ MinimalInterpreter v701153604470 :=
  cost_cut false 2 (by decide)
private def v701153590646 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 2)) (.var 1))))))))
private theorem no_v701153590646 : ¬ MinimalInterpreter v701153590646 :=
  cost_cut false 2 (by decide)
private def v701154406646 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.lam (.app (.var 2) (.var 1))))))))))
private theorem no_v701154406646 : ¬ MinimalInterpreter v701154406646 :=
  cost_cut false 2 (by decide)
private def v701154405494 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.lam (.var 2))) (.var 1))))))))
private theorem no_v701154405494 : ¬ MinimalInterpreter v701154405494 :=
  cost_cut false 2 (by decide)
private def v701154185462 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.lam (.app (.var 2) (.var 1)))))))))
private theorem no_v701154185462 : ¬ MinimalInterpreter v701154185462 :=
  cost_cut false 2 (by decide)
private def v701154184310 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.lam (.var 2)))) (.var 1)))))))
private theorem no_v701154184310 : ¬ MinimalInterpreter v701154184310 :=
  cost_cut false 2 (by decide)
private def v701154129014 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 2))) (.var 1)))))))
private theorem no_v701154129014 : ¬ MinimalInterpreter v701154129014 :=
  cost_cut false 2 (by decide)
private def v701157388742 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.lam (.var 2))) (.lam (.var 1))))))))
private theorem no_v701157388742 : ¬ MinimalInterpreter v701157388742 :=
  chain_cut false 2 (by decide)
private def v701157388406 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 1)))))))
private theorem no_v701157388406 : ¬ MinimalInterpreter v701157388406 :=
  chain_cut false 2 (by decide)
private def v701156504006 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.lam (.var 2)))) (.lam (.var 1)))))))
private theorem no_v701156504006 : ¬ MinimalInterpreter v701156504006 :=
  chain_cut false 2 (by decide)
private def v701156282822 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 2))) (.lam (.var 1)))))))
private theorem no_v701156282822 : ¬ MinimalInterpreter v701156282822 :=
  chain_cut false 2 (by decide)
private def v701156503670 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.lam (.lam (.var 2))))) (.var 1))))))
private theorem no_v701156503670 : ¬ MinimalInterpreter v701156503670 :=
  chain_cut false 2 (by decide)
private def v701156282486 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.lam (.lam (.var 2)))) (.var 1))))))
private theorem no_v701156282486 : ¬ MinimalInterpreter v701156282486 :=
  chain_cut false 2 (by decide)
theorem row197 : BadRow (row ⟨0,2,0,4,4,5⟩ [0,0] [2,0,2,1]) := by
  have h : row ⟨0,2,0,4,4,5⟩ [0,0] [2,0,2,1] = [v701153660150,v701153659766,v701153604854,v701153604470,v701153590646,v701154406646,v701154405494,v701154185462,v701154184310,v701154129014,v701157388742,v701157388406,v701156504006,v701156282822,v701156503670,v701156282486] := by decide +kernel
  rw [h]
  exact (.cons (no_v701153660150) (.cons (no_v701153659766) (.cons (no_v701153604854) (.cons (no_v701153604470) (.cons (no_v701153590646) (.cons (no_v701154406646) (.cons (no_v701154405494) (.cons (no_v701154185462) (.cons (no_v701154184310) (.cons (no_v701154129014) (.cons (no_v701157388742) (.cons (no_v701157388406) (.cons (no_v701156504006) (.cons (no_v701156282822) (.cons (no_v701156503670) (.cons (no_v701156282486) .nil))))))))))))))))

end Blc.SelfintSingleObject.Rows39
