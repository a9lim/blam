import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v701154359798 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 3) (.var 1)))))))))
private theorem no_v701154359798 : ¬ MinimalInterpreter v701154359798 :=
  chain_cut false 2 (by decide)
private def v701154352886 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 3)) (.var 1))))))))
private theorem no_v701154352886 : ¬ MinimalInterpreter v701154352886 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 3)) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 3)) (.var 1)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.lam (.app (.var 1) (.app (.var 2) (.var 1))))) (so_dead (by decide) (.app (.var 1) (.app (.app (.var 2) (.var 3)) (.var 1)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701154179574 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 3) (.var 1))))))))
private theorem no_v701154179574 : ¬ MinimalInterpreter v701154179574 :=
  chain_cut false 2 (by decide)
private def v701154172662 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 3))) (.var 1)))))))
private theorem no_v701154172662 : ¬ MinimalInterpreter v701154172662 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 3))) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 3))) (.var 1))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 1)))) (so_dead (by decide) (.app (.app (.var 1) (.app (.var 2) (.var 3))) (.var 1))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701154127606 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 3)) (.var 1)))))))
private theorem no_v701154127606 : ¬ MinimalInterpreter v701154127606 :=
  chain_cut false 2 (by decide)
private def v701157112310 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 3) (.var 1)))))))))
private theorem no_v701157112310 : ¬ MinimalInterpreter v701157112310 :=
  chain_cut false 2 (by decide)
private def v701157105398 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 3)) (.var 1))))))))
private theorem no_v701157105398 : ¬ MinimalInterpreter v701157105398 :=
  chain_cut false 2 (by decide)
private def v701157204470 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.lam (.app (.var 3) (.var 1)))))))))
private theorem no_v701157204470 : ¬ MinimalInterpreter v701157204470 :=
  chain_cut true 4 (by decide)
private def v701156483574 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 3) (.var 1))))))))
private theorem no_v701156483574 : ¬ MinimalInterpreter v701156483574 :=
  chain_cut true 3 (by decide)
private def v701168122358 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 2) (.app (.var 3) (.var 1)))))))))
private theorem no_v701168122358 : ¬ MinimalInterpreter v701168122358 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701168115446 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 2) (.var 3)) (.var 1))))))))
private theorem no_v701168115446 : ¬ MinimalInterpreter v701168115446 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 2) (.var 3)) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.lam (.app (.app (.var 2) (.var 3)) (.var 1)))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.lam (.app (.var 2) (.var 1)))) (so_dead (by decide) (.app (.app (.var 2) (.var 3)) (.var 1))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
theorem row78 : BadRow (row ⟨0,2,0,3,4,7⟩ [0,0] [1,2,3,1]) := by
  have h : row ⟨0,2,0,3,4,7⟩ [0,0] [1,2,3,1] = [v701154359798,v701154352886,v701154179574,v701154172662,v701154127606,v701157112310,v701157105398,v701157204470,v701156483574,v701168122358,v701168115446] := by decide +kernel
  rw [h]
  exact (.cons (no_v701154359798) (.cons (no_v701154352886) (.cons (no_v701154179574) (.cons (no_v701154172662) (.cons (no_v701154127606) (.cons (no_v701157112310) (.cons (no_v701157105398) (.cons (no_v701157204470) (.cons (no_v701156483574) (.cons (no_v701168122358) (.cons (no_v701168115446) .nil)))))))))))

private def v701154360542 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 3) (.app (.var 0) (.var 3)))))))))
private theorem no_v701154360542 : ¬ MinimalInterpreter v701154360542 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701154352990 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 3) (.var 0)) (.var 3))))))))
private theorem no_v701154352990 : ¬ MinimalInterpreter v701154352990 :=
  chain_cut true 3 (by decide)
private def v701154180318 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 3))))))))
private theorem no_v701154180318 : ¬ MinimalInterpreter v701154180318 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701154172766 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 3) (.var 0))) (.var 3)))))))
private theorem no_v701154172766 : ¬ MinimalInterpreter v701154172766 :=
  chain_cut true 3 (by decide)
private def v701154127710 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 3)))))))
private theorem no_v701154127710 : ¬ MinimalInterpreter v701154127710 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem row79 : BadRow (row ⟨0,2,0,3,4,7⟩ [0,0] [1,3,0,3]) := by
  have h : row ⟨0,2,0,3,4,7⟩ [0,0] [1,3,0,3] = [v701154360542,v701154352990,v701154180318,v701154172766,v701154127710] := by decide +kernel
  rw [h]
  exact (.cons (no_v701154360542) (.cons (no_v701154352990) (.cons (no_v701154180318) (.cons (no_v701154172766) (.cons (no_v701154127710) .nil)))))

private def v701154360558 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 3) (.app (.var 1) (.var 2)))))))))
private theorem no_v701154360558 : ¬ MinimalInterpreter v701154360558 :=
  chain_cut false 2 (by decide)
private def v701154353006 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 3) (.var 1)) (.var 2))))))))
private theorem no_v701154353006 : ¬ MinimalInterpreter v701154353006 :=
  chain_cut false 2 (by decide)
private def v701154180334 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 3)) (.app (.var 1) (.var 2))))))))
private theorem no_v701154180334 : ¬ MinimalInterpreter v701154180334 :=
  chain_cut false 2 (by decide)
private def v701154172782 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 3) (.var 1))) (.var 2)))))))
private theorem no_v701154172782 : ¬ MinimalInterpreter v701154172782 :=
  chain_cut false 2 (by decide)
private def v701154127726 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 3)) (.var 1)) (.var 2)))))))
private theorem no_v701154127726 : ¬ MinimalInterpreter v701154127726 :=
  chain_cut false 2 (by decide)
private def v701157113070 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 3) (.app (.var 1) (.var 2)))))))))
private theorem no_v701157113070 : ¬ MinimalInterpreter v701157113070 :=
  chain_cut false 2 (by decide)
private def v701157105518 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 3) (.var 1)) (.var 2))))))))
private theorem no_v701157105518 : ¬ MinimalInterpreter v701157105518 :=
  chain_cut false 2 (by decide)
private def v701156433774 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 3) (.var 1)))) (.var 2))))))
private theorem no_v701156433774 : ¬ MinimalInterpreter v701156433774 :=
  chain_cut true 3 (by decide)
private def v701168123118 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 3) (.app (.var 1) (.var 2)))))))))
private theorem no_v701168123118 : ¬ MinimalInterpreter v701168123118 :=
  chain_cut false 7 (by decide)
private def v701168115566 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 3) (.var 1)) (.var 2))))))))
private theorem no_v701168115566 : ¬ MinimalInterpreter v701168115566 :=
  w_cut false 0 (by decide)
theorem row80 : BadRow (row ⟨0,2,0,3,4,7⟩ [0,0] [1,3,1,2]) := by
  have h : row ⟨0,2,0,3,4,7⟩ [0,0] [1,3,1,2] = [v701154360558,v701154353006,v701154180334,v701154172782,v701154127726,v701157113070,v701157105518,v701156433774,v701168123118,v701168115566] := by decide +kernel
  rw [h]
  exact (.cons (no_v701154360558) (.cons (no_v701154353006) (.cons (no_v701154180334) (.cons (no_v701154172782) (.cons (no_v701154127726) (.cons (no_v701157113070) (.cons (no_v701157105518) (.cons (no_v701156433774) (.cons (no_v701168123118) (.cons (no_v701168115566) .nil))))))))))

private def v701154360566 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 3) (.app (.var 2) (.var 1)))))))))
private theorem no_v701154360566 : ¬ MinimalInterpreter v701154360566 :=
  chain_cut false 2 (by decide)
private def v701154353014 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 3) (.var 2)) (.var 1))))))))
private theorem no_v701154353014 : ¬ MinimalInterpreter v701154353014 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 3) (.var 2)) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.var 1) (.app (.app (.var 3) (.var 2)) (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.lam (.app (.var 1) (.app (.var 2) (.var 1))))) (so_dead (by decide) (.app (.var 1) (.app (.app (.var 3) (.var 2)) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701154180342 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 3)) (.app (.var 2) (.var 1))))))))
private theorem no_v701154180342 : ¬ MinimalInterpreter v701154180342 :=
  chain_cut false 2 (by decide)
private def v701154172790 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 3) (.var 2))) (.var 1)))))))
private theorem no_v701154172790 : ¬ MinimalInterpreter v701154172790 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 3) (.var 2))) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.var 1) (.app (.var 3) (.var 2))) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 1)))) (so_dead (by decide) (.app (.app (.var 1) (.app (.var 3) (.var 2))) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701154127734 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 3)) (.var 2)) (.var 1)))))))
private theorem no_v701154127734 : ¬ MinimalInterpreter v701154127734 :=
  chain_cut false 2 (by decide)
private def v701157113078 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 3) (.app (.var 2) (.var 1)))))))))
private theorem no_v701157113078 : ¬ MinimalInterpreter v701157113078 :=
  chain_cut false 2 (by decide)
private def v701157105526 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 3) (.var 2)) (.var 1))))))))
private theorem no_v701157105526 : ¬ MinimalInterpreter v701157105526 :=
  chain_cut false 2 (by decide)
private def v701168123126 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 3) (.app (.var 2) (.var 1)))))))))
private theorem no_v701168123126 : ¬ MinimalInterpreter v701168123126 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701168115574 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 3) (.var 2)) (.var 1))))))))
private theorem no_v701168115574 : ¬ MinimalInterpreter v701168115574 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 3) (.var 2)) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.lam (.app (.app (.var 3) (.var 2)) (.var 1)))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.lam (.app (.var 2) (.var 1)))) (so_dead (by decide) (.app (.app (.var 3) (.var 2)) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
theorem row81 : BadRow (row ⟨0,2,0,3,4,7⟩ [0,0] [1,3,2,1]) := by
  have h : row ⟨0,2,0,3,4,7⟩ [0,0] [1,3,2,1] = [v701154360566,v701154353014,v701154180342,v701154172790,v701154127734,v701157113078,v701157105526,v701168123126,v701168115574] := by decide +kernel
  rw [h]
  exact (.cons (no_v701154360566) (.cons (no_v701154353014) (.cons (no_v701154180342) (.cons (no_v701154172790) (.cons (no_v701154127734) (.cons (no_v701157113078) (.cons (no_v701157105526) (.cons (no_v701168123126) (.cons (no_v701168115574) .nil)))))))))

private def v701154360570 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 3) (.app (.var 3) (.var 0)))))))))
private theorem no_v701154360570 : ¬ MinimalInterpreter v701154360570 :=
  chain_cut true 4 (by decide)
private def v701154353018 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 3) (.var 3)) (.var 0))))))))
private theorem no_v701154353018 : ¬ MinimalInterpreter v701154353018 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701154180346 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 3)) (.app (.var 3) (.var 0))))))))
private theorem no_v701154180346 : ¬ MinimalInterpreter v701154180346 :=
  chain_cut true 3 (by decide)
private def v701154172794 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 3) (.var 3))) (.var 0)))))))
private theorem no_v701154172794 : ¬ MinimalInterpreter v701154172794 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 3) (.var 3))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.app (.var 1) (.var 1))) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 2) (.var 2)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 3) (.var 3))) (.var 0)) (.app (.var 0) (.app (.var 2) (.var 2))) (by decide) (by decide)) (.app (.var 1) (.var 1)) (by decide) (by decide))))))
private def v701154127738 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 3)) (.var 3)) (.var 0)))))))
private theorem no_v701154127738 : ¬ MinimalInterpreter v701154127738 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 3)) (.var 3)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 2)) (.var 2))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 3)) (.var 3)) (.var 0)) (.app (.app (.var 0) (.var 2)) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))
private def v701156433786 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 3) (.var 3)))) (.var 0))))))
private theorem no_v701156433786 : ¬ MinimalInterpreter v701156433786 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 3) (.var 3)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.app (.var 1) (.var 1)))) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.lam (.app (.var 2) (.var 2))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (so_dead (by decide) (.app (.var 3) (.var 3)))) (.var 0)) (.app (.var 0) (so_dead (by decide) (.app (.var 2) (.var 2)))) (by decide) (by decide)) (so_dead (by decide) (.app (.var 1) (.var 1))) (by decide) (by decide)))))
theorem row82 : BadRow (row ⟨0,2,0,3,4,7⟩ [0,0] [1,3,3,0]) := by
  have h : row ⟨0,2,0,3,4,7⟩ [0,0] [1,3,3,0] = [v701154360570,v701154353018,v701154180346,v701154172794,v701154127738,v701156433786] := by decide +kernel
  rw [h]
  exact (.cons (no_v701154360570) (.cons (no_v701154353018) (.cons (no_v701154180346) (.cons (no_v701154172794) (.cons (no_v701154127738) (.cons (no_v701156433786) .nil))))))

private def v701154407390 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 2) (.var 3)))))))))
private theorem no_v701154407390 : ¬ MinimalInterpreter v701154407390 :=
  chain_cut false 2 (by decide)
private def v701154405854 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 2)) (.var 3))))))))
private theorem no_v701154405854 : ¬ MinimalInterpreter v701154405854 :=
  chain_cut false 2 (by decide)
private def v701154186206 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 2) (.var 3))))))))
private theorem no_v701154186206 : ¬ MinimalInterpreter v701154186206 :=
  chain_cut false 2 (by decide)
private def v701154184670 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 2))) (.var 3)))))))
private theorem no_v701154184670 : ¬ MinimalInterpreter v701154184670 :=
  chain_cut false 2 (by decide)
private def v701154129374 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 2)) (.var 3)))))))
private theorem no_v701154129374 : ¬ MinimalInterpreter v701154129374 :=
  chain_cut false 2 (by decide)
private def v701157356510 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.var 0) (.app (.var 2) (.var 3)))))))))
private theorem no_v701157356510 : ¬ MinimalInterpreter v701157356510 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.var 0) (.app (.var 2) (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 2) (.lam (.app (.var 0) (.app (.var 2) (.var 3))))))) (so_dead (by decide) (.app (.var 2) (.lam (r := (.app (.var 1) (.var 2))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 3))) (.app (.var 1) (.var 2)) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))
private def v701157354974 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.app (.var 0) (.var 2)) (.var 3))))))))
private theorem no_v701157354974 : ¬ MinimalInterpreter v701157354974 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701157393374 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.lam (.app (.var 2) (.var 3)))))))))
private theorem no_v701157393374 : ¬ MinimalInterpreter v701157393374 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156508638 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.lam (.app (.var 2) (.var 3))))))))
private theorem no_v701156508638 : ¬ MinimalInterpreter v701156508638 :=
  chain_cut false 3 (by decide)
theorem row83 : BadRow (row ⟨0,2,0,3,4,7⟩ [0,0] [2,0,2,3]) := by
  have h : row ⟨0,2,0,3,4,7⟩ [0,0] [2,0,2,3] = [v701154407390,v701154405854,v701154186206,v701154184670,v701154129374,v701157356510,v701157354974,v701157393374,v701156508638] := by decide +kernel
  rw [h]
  exact (.cons (no_v701154407390) (.cons (no_v701154405854) (.cons (no_v701154186206) (.cons (no_v701154184670) (.cons (no_v701154129374) (.cons (no_v701157356510) (.cons (no_v701157354974) (.cons (no_v701157393374) (.cons (no_v701156508638) .nil)))))))))

end Blc.SelfintSingleObject.Rows39
