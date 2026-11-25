import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v701156806262 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.app (.var 1) (.var 1)))))))))
private theorem no_v701156806262 : ¬ MinimalInterpreter v701156806262 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.app (.var 1) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.app (.var 1) (.var 1))))))) (.lam (r := (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.app (.var 1) (.var 1))))) (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156805558 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 1))))))))
private theorem no_v701156805558 : ¬ MinimalInterpreter v701156805558 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 1)))))) (.lam (r := (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 1)))) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156750966 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.var 1))))))))
private theorem no_v701156750966 : ¬ MinimalInterpreter v701156750966 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.var 1)))))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.var 1)))) (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156750262 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 1)))))))
private theorem no_v701156750262 : ¬ MinimalInterpreter v701156750262 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 1))))) (.lam (r := (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 1))) (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156736438 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 1)))))))
private theorem no_v701156736438 : ¬ MinimalInterpreter v701156736438 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 1))))) (.lam (r := (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 1))) (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156413046 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 1))))))))
private theorem no_v701156413046 : ¬ MinimalInterpreter v701156413046 :=
  chain_cut false 2 (by decide)
private def v701156412342 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 1)))))))
private theorem no_v701156412342 : ¬ MinimalInterpreter v701156412342 :=
  chain_cut false 2 (by decide)
private def v701156357750 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 1)))))))
private theorem no_v701156357750 : ¬ MinimalInterpreter v701156357750 :=
  chain_cut false 2 (by decide)
private def v701156259446 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.app (.var 1) (.var 1)))))))
private theorem no_v701156259446 : ¬ MinimalInterpreter v701156259446 :=
  chain_cut false 2 (by decide)
private def v701156357046 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))) (.var 1))))))
private theorem no_v701156357046 : ¬ MinimalInterpreter v701156357046 :=
  chain_cut false 2 (by decide)
private def v701156343222 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))) (.var 1))))))
private theorem no_v701156343222 : ¬ MinimalInterpreter v701156343222 :=
  chain_cut false 2 (by decide)
private def v701156258742 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 1))) (.var 1))))))
private theorem no_v701156258742 : ¬ MinimalInterpreter v701156258742 :=
  chain_cut false 2 (by decide)
private def v701156244918 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 1)) (.var 1))))))
private theorem no_v701156244918 : ¬ MinimalInterpreter v701156244918 :=
  chain_cut false 2 (by decide)
private def v701156220342 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 1)) (.var 1))))))
private theorem no_v701156220342 : ¬ MinimalInterpreter v701156220342 :=
  chain_cut false 2 (by decide)
theorem row12 : BadRow (row ⟨0,2,0,2,5,5⟩ [0,0] [0,2,1,1,1]) := by
  have h : row ⟨0,2,0,2,5,5⟩ [0,0] [0,2,1,1,1] = [v701156806262,v701156805558,v701156750966,v701156750262,v701156736438,v701156413046,v701156412342,v701156357750,v701156259446,v701156357046,v701156343222,v701156258742,v701156244918,v701156220342] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156806262) (.cons (no_v701156805558) (.cons (no_v701156750966) (.cons (no_v701156750262) (.cons (no_v701156736438) (.cons (no_v701156413046) (.cons (no_v701156412342) (.cons (no_v701156357750) (.cons (no_v701156259446) (.cons (no_v701156357046) (.cons (no_v701156343222) (.cons (no_v701156258742) (.cons (no_v701156244918) (.cons (no_v701156220342) .nil))))))))))))))

private def v701156806266 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v701156806266 : ¬ MinimalInterpreter v701156806266 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701156805562 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v701156805562 : ¬ MinimalInterpreter v701156805562 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701156750970 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.app (.var 2) (.var 0))))))))
private theorem no_v701156750970 : ¬ MinimalInterpreter v701156750970 :=
  chain_cut true 4 (by decide)
private def v701156750266 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.var 0)))))))
private theorem no_v701156750266 : ¬ MinimalInterpreter v701156750266 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.var 0))))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 1)))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.var 0))) (.app (.var 1) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156736442 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.var 0)))))))
private theorem no_v701156736442 : ¬ MinimalInterpreter v701156736442 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.var 0))))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 1))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156413050 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v701156413050 : ¬ MinimalInterpreter v701156413050 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701156412346 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v701156412346 : ¬ MinimalInterpreter v701156412346 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701156357754 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 2) (.var 0)))))))
private theorem no_v701156357754 : ¬ MinimalInterpreter v701156357754 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701156259450 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.app (.var 2) (.var 0)))))))
private theorem no_v701156259450 : ¬ MinimalInterpreter v701156259450 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701156357050 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 2)))) (.var 0))))))
private theorem no_v701156357050 : ¬ MinimalInterpreter v701156357050 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 2)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 2)))) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 1)))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 2)))) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156343226 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 2))) (.var 0))))))
private theorem no_v701156343226 : ¬ MinimalInterpreter v701156343226 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 2))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 2))) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 2))) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156258746 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 2))) (.var 0))))))
private theorem no_v701156258746 : ¬ MinimalInterpreter v701156258746 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701156244922 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 2)) (.var 0))))))
private theorem no_v701156244922 : ¬ MinimalInterpreter v701156244922 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701156220346 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 2)) (.var 0))))))
private theorem no_v701156220346 : ¬ MinimalInterpreter v701156220346 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701166243450 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v701166243450 : ¬ MinimalInterpreter v701166243450 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701166242746 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v701166242746 : ¬ MinimalInterpreter v701166242746 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701166188154 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 2) (.var 0))))))))
private theorem no_v701166188154 : ¬ MinimalInterpreter v701166188154 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701166187450 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.var 0)))))))
private theorem no_v701166187450 : ¬ MinimalInterpreter v701166187450 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 1))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v701166173626 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.var 0)))))))
private theorem no_v701166173626 : ¬ MinimalInterpreter v701166173626 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v701203992186 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v701203992186 : ¬ MinimalInterpreter v701203992186 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 100 (by decide) (by decide) (by decide) (by decide)
private def v701203991482 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v701203991482 : ¬ MinimalInterpreter v701203991482 :=
  w_cut false 0 (by decide)
private def v701203936890 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 2) (.var 0))))))))
private theorem no_v701203936890 : ¬ MinimalInterpreter v701203936890 :=
  w_cut false 0 (by decide)
private def v701203936186 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.var 0)))))))
private theorem no_v701203936186 : ¬ MinimalInterpreter v701203936186 :=
  w_cut false 0 (by decide)
private def v701203922362 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.var 0)))))))
private theorem no_v701203922362 : ¬ MinimalInterpreter v701203922362 :=
  w_cut false 0 (by decide)
theorem row13 : BadRow (row ⟨0,2,0,2,5,5⟩ [0,0] [0,2,1,2,0]) := by
  have h : row ⟨0,2,0,2,5,5⟩ [0,0] [0,2,1,2,0] = [v701156806266,v701156805562,v701156750970,v701156750266,v701156736442,v701156413050,v701156412346,v701156357754,v701156259450,v701156357050,v701156343226,v701156258746,v701156244922,v701156220346,v701166243450,v701166242746,v701166188154,v701166187450,v701166173626,v701203992186,v701203991482,v701203936890,v701203936186,v701203922362] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156806266) (.cons (no_v701156805562) (.cons (no_v701156750970) (.cons (no_v701156750266) (.cons (no_v701156736442) (.cons (no_v701156413050) (.cons (no_v701156412346) (.cons (no_v701156357754) (.cons (no_v701156259450) (.cons (no_v701156357050) (.cons (no_v701156343226) (.cons (no_v701156258746) (.cons (no_v701156244922) (.cons (no_v701156220346) (.cons (no_v701166243450) (.cons (no_v701166242746) (.cons (no_v701166188154) (.cons (no_v701166187450) (.cons (no_v701166173626) (.cons (no_v701203992186) (.cons (no_v701203991482) (.cons (no_v701203936890) (.cons (no_v701203936186) (.cons (no_v701203922362) .nil))))))))))))))))))))))))

private def v701156806454 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v701156806454 : ¬ MinimalInterpreter v701156806454 :=
  chain_cut true 5 (by decide)
private def v701156805590 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v701156805590 : ¬ MinimalInterpreter v701156805590 :=
  chain_cut true 9 (by decide)
private def v701156751158 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 2)) (.app (.var 0) (.var 1))))))))
private theorem no_v701156751158 : ¬ MinimalInterpreter v701156751158 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701156750294 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 2) (.var 0))) (.var 1)))))))
private theorem no_v701156750294 : ¬ MinimalInterpreter v701156750294 :=
  chain_cut true 6 (by decide)
private def v701156736470 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 2)) (.var 0)) (.var 1)))))))
private theorem no_v701156736470 : ¬ MinimalInterpreter v701156736470 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701156413238 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v701156413238 : ¬ MinimalInterpreter v701156413238 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 100 (by decide) (by decide) (by decide) (by decide)
private def v701156412374 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v701156412374 : ¬ MinimalInterpreter v701156412374 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 28 (by decide) (by decide) (by decide) (by decide)
private def v701156357942 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 2))) (.app (.var 0) (.var 1)))))))
private theorem no_v701156357942 : ¬ MinimalInterpreter v701156357942 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 28 (by decide) (by decide) (by decide) (by decide)
private def v701156259638 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 2)) (.app (.var 0) (.var 1)))))))
private theorem no_v701156259638 : ¬ MinimalInterpreter v701156259638 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 28 (by decide) (by decide) (by decide) (by decide)
private def v701156357078 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 2) (.var 0)))) (.var 1))))))
private theorem no_v701156357078 : ¬ MinimalInterpreter v701156357078 :=
  chain_cut true 5 (by decide)
private def v701156343254 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 2)) (.var 0))) (.var 1))))))
private theorem no_v701156343254 : ¬ MinimalInterpreter v701156343254 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 100 (by decide) (by decide) (by decide) (by decide)
private def v701156258774 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 2) (.var 0))) (.var 1))))))
private theorem no_v701156258774 : ¬ MinimalInterpreter v701156258774 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 100 (by decide) (by decide) (by decide) (by decide)
private def v701156244950 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 2))) (.var 0)) (.var 1))))))
private theorem no_v701156244950 : ¬ MinimalInterpreter v701156244950 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 28 (by decide) (by decide) (by decide) (by decide)
private def v701156220374 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 2)) (.var 0)) (.var 1))))))
private theorem no_v701156220374 : ¬ MinimalInterpreter v701156220374 :=
  fun h => Rare39.excludedfour399 h.1
private def v701166243638 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v701166243638 : ¬ MinimalInterpreter v701166243638 :=
  chain_cut true 7 (by decide)
private def v701166242774 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v701166242774 : ¬ MinimalInterpreter v701166242774 :=
  chain_cut true 5 (by decide)
private def v701166188342 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 2)) (.app (.var 0) (.var 1))))))))
private theorem no_v701166188342 : ¬ MinimalInterpreter v701166188342 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701166187478 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.app (.var 2) (.var 0))) (.var 1)))))))
private theorem no_v701166187478 : ¬ MinimalInterpreter v701166187478 :=
  chain_cut true 8 (by decide)
private def v701166173654 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 2) (.var 2)) (.var 0)) (.var 1)))))))
private theorem no_v701166173654 : ¬ MinimalInterpreter v701166173654 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701203992374 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v701203992374 : ¬ MinimalInterpreter v701203992374 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 100 (by decide) (by decide) (by decide) (by decide)
private def v701203991510 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v701203991510 : ¬ MinimalInterpreter v701203991510 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 100 (by decide) (by decide) (by decide) (by decide)
private def v701203937078 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 2)) (.app (.var 0) (.var 1))))))))
private theorem no_v701203937078 : ¬ MinimalInterpreter v701203937078 :=
  w_cut false 0 (by decide)
private def v701203936214 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.var 0))) (.var 1)))))))
private theorem no_v701203936214 : ¬ MinimalInterpreter v701203936214 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701203922390 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.var 0)) (.var 1)))))))
private theorem no_v701203922390 : ¬ MinimalInterpreter v701203922390 :=
  w_cut false 0 (by decide)
theorem row14 : BadRow (row ⟨0,2,0,2,5,5⟩ [0,0] [0,2,2,0,1]) := by
  have h : row ⟨0,2,0,2,5,5⟩ [0,0] [0,2,2,0,1] = [v701156806454,v701156805590,v701156751158,v701156750294,v701156736470,v701156413238,v701156412374,v701156357942,v701156259638,v701156357078,v701156343254,v701156258774,v701156244950,v701156220374,v701166243638,v701166242774,v701166188342,v701166187478,v701166173654,v701203992374,v701203991510,v701203937078,v701203936214,v701203922390] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156806454) (.cons (no_v701156805590) (.cons (no_v701156751158) (.cons (no_v701156750294) (.cons (no_v701156736470) (.cons (no_v701156413238) (.cons (no_v701156412374) (.cons (no_v701156357942) (.cons (no_v701156259638) (.cons (no_v701156357078) (.cons (no_v701156343254) (.cons (no_v701156258774) (.cons (no_v701156244950) (.cons (no_v701156220374) (.cons (no_v701166243638) (.cons (no_v701166242774) (.cons (no_v701166188342) (.cons (no_v701166187478) (.cons (no_v701166173654) (.cons (no_v701203992374) (.cons (no_v701203991510) (.cons (no_v701203937078) (.cons (no_v701203936214) (.cons (no_v701203922390) .nil))))))))))))))))))))))))

private def v701156806458 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v701156806458 : ¬ MinimalInterpreter v701156806458 :=
  chain_cut true 5 (by decide)
private def v701156805594 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v701156805594 : ¬ MinimalInterpreter v701156805594 :=
  chain_cut true 9 (by decide)
private def v701156751162 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 2)) (.app (.var 1) (.var 0))))))))
private theorem no_v701156751162 : ¬ MinimalInterpreter v701156751162 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701156750298 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.var 0)))))))
private theorem no_v701156750298 : ¬ MinimalInterpreter v701156750298 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.var 0))))) (.lam (r := (.app (.var 1) (.app (.var 1) (.var 0)))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.var 0))) (.app (.var 1) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156736474 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 2)) (.var 1)) (.var 0)))))))
private theorem no_v701156736474 : ¬ MinimalInterpreter v701156736474 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 2)) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (r := (.app (.app (.var 1) (.var 1)) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.app (.var 2) (.var 2)) (.var 1)) (.var 0))) (.app (.app (.var 1) (.var 1)) (.var 0)) (by decide) (by decide)) (.app (.var 0) (.var 0)) (by decide) (by decide)))))
private def v701156413242 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v701156413242 : ¬ MinimalInterpreter v701156413242 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 28 (by decide) (by decide) (by decide) (by decide)
private def v701156412378 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v701156412378 : ¬ MinimalInterpreter v701156412378 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701156357946 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 2))) (.app (.var 1) (.var 0)))))))
private theorem no_v701156357946 : ¬ MinimalInterpreter v701156357946 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 28 (by decide) (by decide) (by decide) (by decide)
private def v701156259642 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 2)) (.app (.var 1) (.var 0)))))))
private theorem no_v701156259642 : ¬ MinimalInterpreter v701156259642 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 28 (by decide) (by decide) (by decide) (by decide)
private def v701156357082 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 2) (.var 1)))) (.var 0))))))
private theorem no_v701156357082 : ¬ MinimalInterpreter v701156357082 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 2) (.var 1)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 2) (.var 1)))) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.var 1) (.var 0)))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 2) (.app (.var 2) (.var 1)))) (.var 0)) (.app (.var 1) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156343258 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 2)) (.var 1))) (.var 0))))))
private theorem no_v701156343258 : ¬ MinimalInterpreter v701156343258 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 2)) (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.var 1)) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.app (.var 2) (.var 2)) (.var 1))) (.var 0)) (.app (.app (.var 1) (.var 1)) (.var 0)) (by decide) (by decide)) (.app (.var 0) (.var 0)) (by decide) (by decide)))))
private def v701156258778 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 2) (.var 1))) (.var 0))))))
private theorem no_v701156258778 : ¬ MinimalInterpreter v701156258778 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701156244954 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 2))) (.var 1)) (.var 0))))))
private theorem no_v701156244954 : ¬ MinimalInterpreter v701156244954 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 28 (by decide) (by decide) (by decide) (by decide)
private def v701156220378 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 2)) (.var 1)) (.var 0))))))
private theorem no_v701156220378 : ¬ MinimalInterpreter v701156220378 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 28 (by decide) (by decide) (by decide) (by decide)
private def v701166243642 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v701166243642 : ¬ MinimalInterpreter v701166243642 :=
  chain_cut true 7 (by decide)
private def v701166242778 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v701166242778 : ¬ MinimalInterpreter v701166242778 :=
  chain_cut true 5 (by decide)
private def v701166188346 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 2)) (.app (.var 1) (.var 0))))))))
private theorem no_v701166188346 : ¬ MinimalInterpreter v701166188346 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701166187482 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.var 0)))))))
private theorem no_v701166187482 : ¬ MinimalInterpreter v701166187482 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.app (.var 1) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 1) (.app (.var 1) (.var 0))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v701166173658 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 2) (.var 2)) (.var 1)) (.var 0)))))))
private theorem no_v701166173658 : ¬ MinimalInterpreter v701166173658 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 2) (.var 2)) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.app (.var 1) (.var 1)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (.var 2)) (.var 1)) (.var 0)) (.app (.app (.var 1) (.var 1)) (.var 0)) (by decide) (by decide))) (.app (.var 0) (.var 0)) (by decide) (by decide)))))
private def v701203992378 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v701203992378 : ¬ MinimalInterpreter v701203992378 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 100 (by decide) (by decide) (by decide) (by decide)
private def v701203991514 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v701203991514 : ¬ MinimalInterpreter v701203991514 :=
  w_cut false 0 (by decide)
private def v701203937082 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 2)) (.app (.var 1) (.var 0))))))))
private theorem no_v701203937082 : ¬ MinimalInterpreter v701203937082 :=
  w_cut false 0 (by decide)
private def v701203936218 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.var 0)))))))
private theorem no_v701203936218 : ¬ MinimalInterpreter v701203936218 :=
  w_cut false 0 (by decide)
private def v701203922394 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.var 1)) (.var 0)))))))
private theorem no_v701203922394 : ¬ MinimalInterpreter v701203922394 :=
  w_cut false 0 (by decide)
theorem row15 : BadRow (row ⟨0,2,0,2,5,5⟩ [0,0] [0,2,2,1,0]) := by
  have h : row ⟨0,2,0,2,5,5⟩ [0,0] [0,2,2,1,0] = [v701156806458,v701156805594,v701156751162,v701156750298,v701156736474,v701156413242,v701156412378,v701156357946,v701156259642,v701156357082,v701156343258,v701156258778,v701156244954,v701156220378,v701166243642,v701166242778,v701166188346,v701166187482,v701166173658,v701203992378,v701203991514,v701203937082,v701203936218,v701203922394] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156806458) (.cons (no_v701156805594) (.cons (no_v701156751162) (.cons (no_v701156750298) (.cons (no_v701156736474) (.cons (no_v701156413242) (.cons (no_v701156412378) (.cons (no_v701156357946) (.cons (no_v701156259642) (.cons (no_v701156357082) (.cons (no_v701156343258) (.cons (no_v701156258778) (.cons (no_v701156244954) (.cons (no_v701156220378) (.cons (no_v701166243642) (.cons (no_v701166242778) (.cons (no_v701166188346) (.cons (no_v701166187482) (.cons (no_v701166173658) (.cons (no_v701203992378) (.cons (no_v701203991514) (.cons (no_v701203937082) (.cons (no_v701203936218) (.cons (no_v701203922394) .nil))))))))))))))))))))))))

private def v701157186030 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 2)))))))))
private theorem no_v701157186030 : ¬ MinimalInterpreter v701157186030 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701157185262 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 2))))))))
private theorem no_v701157185262 : ¬ MinimalInterpreter v701157185262 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701157173742 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 2))))))))
private theorem no_v701157173742 : ¬ MinimalInterpreter v701157173742 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701157172974 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 2)))))))
private theorem no_v701157172974 : ¬ MinimalInterpreter v701157172974 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701157169902 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 2)))))))
private theorem no_v701157169902 : ¬ MinimalInterpreter v701157169902 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156465134 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.app (.var 2) (.var 2))))))))
private theorem no_v701156465134 : ¬ MinimalInterpreter v701156465134 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156464366 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.var 2)) (.var 2)))))))
private theorem no_v701156464366 : ¬ MinimalInterpreter v701156464366 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156452846 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.app (.var 2) (.var 2)))))))
private theorem no_v701156452846 : ¬ MinimalInterpreter v701156452846 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156272622 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.app (.var 2) (.var 2)))))))
private theorem no_v701156272622 : ¬ MinimalInterpreter v701156272622 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156452078 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2)))) (.var 2))))))
private theorem no_v701156452078 : ¬ MinimalInterpreter v701156452078 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156449006 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 2))))))
private theorem no_v701156449006 : ¬ MinimalInterpreter v701156449006 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156271854 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2))) (.var 2))))))
private theorem no_v701156271854 : ¬ MinimalInterpreter v701156271854 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156268782 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)) (.var 2))))))
private theorem no_v701156268782 : ¬ MinimalInterpreter v701156268782 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156223726 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)) (.var 2))))))
private theorem no_v701156223726 : ¬ MinimalInterpreter v701156223726 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem row16 : BadRow (row ⟨0,2,0,2,5,5⟩ [0,0] [1,0,0,2,2]) := by
  have h : row ⟨0,2,0,2,5,5⟩ [0,0] [1,0,0,2,2] = [v701157186030,v701157185262,v701157173742,v701157172974,v701157169902,v701156465134,v701156464366,v701156452846,v701156272622,v701156452078,v701156449006,v701156271854,v701156268782,v701156223726] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157186030) (.cons (no_v701157185262) (.cons (no_v701157173742) (.cons (no_v701157172974) (.cons (no_v701157169902) (.cons (no_v701156465134) (.cons (no_v701156464366) (.cons (no_v701156452846) (.cons (no_v701156272622) (.cons (no_v701156452078) (.cons (no_v701156449006) (.cons (no_v701156271854) (.cons (no_v701156268782) (.cons (no_v701156223726) .nil))))))))))))))

private def v701157186798 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))))))
private theorem no_v701157186798 : ¬ MinimalInterpreter v701157186798 :=
  chain_cut false 2 (by decide)
private def v701157185390 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))))))
private theorem no_v701157185390 : ¬ MinimalInterpreter v701157185390 :=
  chain_cut false 2 (by decide)
private def v701157174510 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 2))))))))
private theorem no_v701157174510 : ¬ MinimalInterpreter v701157174510 :=
  chain_cut false 2 (by decide)
private def v701157173102 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 2)))))))
private theorem no_v701157173102 : ¬ MinimalInterpreter v701157173102 :=
  chain_cut false 2 (by decide)
private def v701157170030 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 2)))))))
private theorem no_v701157170030 : ¬ MinimalInterpreter v701157170030 :=
  chain_cut false 2 (by decide)
private def v701156465902 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.app (.var 1) (.var 2))))))))
private theorem no_v701156465902 : ¬ MinimalInterpreter v701156465902 :=
  chain_cut false 2 (by decide)
private def v701156464494 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 1) (.var 1)) (.var 2)))))))
private theorem no_v701156464494 : ¬ MinimalInterpreter v701156464494 :=
  chain_cut false 2 (by decide)
private def v701156453614 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.app (.var 1) (.var 2)))))))
private theorem no_v701156453614 : ¬ MinimalInterpreter v701156453614 :=
  chain_cut false 2 (by decide)
private def v701156273390 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.app (.var 1) (.var 2)))))))
private theorem no_v701156273390 : ¬ MinimalInterpreter v701156273390 :=
  chain_cut false 2 (by decide)
private def v701156452206 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 1)))) (.var 2))))))
private theorem no_v701156452206 : ¬ MinimalInterpreter v701156452206 :=
  chain_cut false 2 (by decide)
private def v701156449134 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 1))) (.var 2))))))
private theorem no_v701156449134 : ¬ MinimalInterpreter v701156449134 :=
  chain_cut false 2 (by decide)
private def v701156271982 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1))) (.var 2))))))
private theorem no_v701156271982 : ¬ MinimalInterpreter v701156271982 :=
  chain_cut false 2 (by decide)
private def v701156268910 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)) (.var 2))))))
private theorem no_v701156268910 : ¬ MinimalInterpreter v701156268910 :=
  chain_cut false 2 (by decide)
private def v701156223854 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1)) (.var 2))))))
private theorem no_v701156223854 : ¬ MinimalInterpreter v701156223854 :=
  chain_cut false 2 (by decide)
private def v701168196846 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))))))
private theorem no_v701168196846 : ¬ MinimalInterpreter v701168196846 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2))))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v701168195438 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))))))
private theorem no_v701168195438 : ¬ MinimalInterpreter v701168195438 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2)))))) (.app (.var 1) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v701168184558 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 2))))))))
private theorem no_v701168184558 : ¬ MinimalInterpreter v701168184558 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701168183150 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 2)))))))
private theorem no_v701168183150 : ¬ MinimalInterpreter v701168183150 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701168180078 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 2)))))))
private theorem no_v701168180078 : ¬ MinimalInterpreter v701168180078 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
theorem row17 : BadRow (row ⟨0,2,0,2,5,5⟩ [0,0] [1,0,1,1,2]) := by
  have h : row ⟨0,2,0,2,5,5⟩ [0,0] [1,0,1,1,2] = [v701157186798,v701157185390,v701157174510,v701157173102,v701157170030,v701156465902,v701156464494,v701156453614,v701156273390,v701156452206,v701156449134,v701156271982,v701156268910,v701156223854,v701168196846,v701168195438,v701168184558,v701168183150,v701168180078] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157186798) (.cons (no_v701157185390) (.cons (no_v701157174510) (.cons (no_v701157173102) (.cons (no_v701157170030) (.cons (no_v701156465902) (.cons (no_v701156464494) (.cons (no_v701156453614) (.cons (no_v701156273390) (.cons (no_v701156452206) (.cons (no_v701156449134) (.cons (no_v701156271982) (.cons (no_v701156268910) (.cons (no_v701156223854) (.cons (no_v701168196846) (.cons (no_v701168195438) (.cons (no_v701168184558) (.cons (no_v701168183150) (.cons (no_v701168180078) .nil)))))))))))))))))))

end Blc.SelfintSingleObject.Rows39
