import Certificates
namespace Blc.HandlerLet.RootNLExtra
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer
open SelfintSourceCost SelfintDispatchAudit
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

theorem replay_lambda {r : Term} (ps : List (List Nat)) (n : Nat)
    (h : IsLam (advance n (replay ps (.app r Z)))) : ¬ Reader r := by
  intro hr
  exact SelfintSourceFront.lam_betas (replay_nf hr true ps n) h

theorem zero_arg_red {r arg : Term} (hr : Reader r)
    (ps : List (List Nat)) (n : Nat)
    (h : advance n (replay ps (.app r Z))=.app (.var 3) arg) :
    Betas arg (.var 1) := by
  have red:=replay_nf hr true ps n
  change Betas (advance n (replay ps (.app r Z))) (.app (.var 3) (.var 1)) at red
  rw [h] at red
  obtain ⟨g,b,he,_,hb⟩:=SelfintProjections.rigid_app_betas red rfl (Rigid.var 3)
  cases he
  exact hb

theorem zero_arg_head {r : Term} (ps : List (List Nat)) (n m : Nat)
    (arg : Term) (p : Nat × Nat)
    (h : advance n (replay ps (.app r Z))=.app (.var 3) arg)
    (ha : signature (advance m arg)=some p) (hne : p≠(1,0)) : ¬ Reader r := by
  intro hr
  have red:=betas_preserve_nf (advance_sound m arg) (zero_arg_red hr ps n h) (fun _ hb => by cases hb)
  have hh:=signature_betas red ha
  simp only [signature,Option.some.injEq] at hh
  exact hne hh.symm

theorem zero_arg_lambda {r : Term} (ps : List (List Nat)) (n m : Nat)
    (arg : Term) (h : advance n (replay ps (.app r Z))=.app (.var 3) arg)
    (ha : IsLam (advance m arg)) : ¬ Reader r := by
  intro hr
  have red:=betas_preserve_nf (advance_sound m arg) (zero_arg_red hr ps n h) (fun _ hb => by cases hb)
  exact SelfintSourceFront.lam_betas red ha

theorem zero_arg_loop {r : Term} (ps : List (List Nat)) (n m k : Nat)
    (arg core : Term) (extra rest : List Term) (hk : 0<k)
    (h : advance n (replay ps (.app r Z))=.app (.var 3) arg)
    (ha : advance m arg=spine core rest)
    (hc : weakSteps k core=some (spine core extra)) : ¬ Reader r := by
  intro hr
  have red:=betas_preserve_nf (advance_sound m arg) (zero_arg_red hr ps n h) (fun _ hb => by cases hb)
  rw [ha] at red
  exact prefix_cycle_no_nf core extra rest k hk hc ⟨_,red,(fun _ hb => by cases hb)⟩

#print axioms replay_lambda
#print axioms zero_arg_head
#print axioms zero_arg_lambda
end Blc.HandlerLet.RootNLExtra
