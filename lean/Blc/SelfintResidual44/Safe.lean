import Blc.SelfintResidual44.Reg

set_option Elab.async false
namespace Blc.Floor44.Safe
open SelfintLowerBound Term Certgen SelfintProbe SelfintSharp SelfintRegularSoundness WeakHeadClock SelfintSourceCost
def stop (P : Nat → Code) (a : AState) :=
  match P a.cl.code with | .lam _ => a.sp == 0 | _ => false

theorem stop_lam {P V K a s} (m : Model P) (h : stop P a = true) (hr : Related V K s a) :
    ∃ b, stateTerm m s = .lam b := by
  obtain ⟨hc,hk⟩ := hr
  cases s with | mk c ss =>
  cases a with | mk ac sp =>
  cases hc with | @mk p es env he =>
  cases hp : P p <;> simp [stop,hp] at h
  subst sp
  cases hk with
  | nil =>
    simp [stateTerm,denote,m.lam_eq _ _ hp,instN_lam,spine]
  | cons hn _ _ _ => exact (hn rfl).elim

def rangeSafe (P : Nat → Code) (V : Values) (K : Konts) (S : Array AState)
    (hints : Array (List Nat)) (lo len : Nat) :=
  (List.range len).all fun j => match S[lo+j]? with
    | none => false
    | some s => stop P s || goodb P V K S s (hints[lo+j]?.getD [])

theorem range_sound {P V K S hints lo len} (h : rangeSafe P V K S hints lo len=true)
    (i : Nat) (hl : lo≤i) (hh : i<lo+len) (hi : i<S.size) :
    stop P S[i]=true ∨ Good P V K S S[i] := by
  have ht := List.all_eq_true.mp h (i-lo) (List.mem_range.mpr (by omega))
  rw [show lo+(i-lo)=i by omega, Array.getElem?_eq_getElem hi] at ht
  exact (Bool.or_eq_true_iff.mp ht).imp_right goodb_sound

theorem rejects {P V K S} (m : Model P) (closed : ∀ a∈S, stop P a=true ∨ Good P V K S a)
    (hi : entry∈S) {r : Term} (hr : Rigid r) (hj : BetaJoin (m.term 0) r) (n : Nat) :
    ¬ Count (m.term 0) n := by
  let Inv := fun s => ∃ a, a∈S ∧ Related V K s a
  have hp : ∀ s, Inv s → BetaJoin (stateTerm m s) r → ∃ t, Step P s t ∧ Inv t := by
    rintro s ⟨a,ha,h⟩ hj
    rcases closed a ha with hz | hg
    · obtain ⟨b,hb⟩ := stop_lam m hz h
      exact (lam_not_join_rigid hr (hb ▸ hj)).elim
    · obtain ⟨t,b,hs,hb,h'⟩ := progress hg h
      exact ⟨t,hs,b,hb,h'⟩
  have excl (k : Nat) : ∀ s, Inv s → BetaJoin (stateTerm m s) r → ¬ Count (stateTerm m s) k := by
    induction k using Nat.strongRecOn with
    | ind k ih =>
      suffices aux : ∀ z s, rank m s.cl=z → Inv s → BetaJoin (stateTerm m s) r → ¬ Count (stateTerm m s) k from
        fun s => aux _ s rfl
      intro z; induction z using Nat.strongRecOn with
      | ind z iz =>
        intro s he hs hj hc
        obtain ⟨t,ht,hti⟩ := hp s hs hj
        rcases step_model m ht with ⟨eq,lt⟩ | hw
        · exact iz _ (by omega) t rfl hti (eq ▸ hj) (eq ▸ hc)
        · obtain ⟨q,hq,cq⟩ := head_decreases hc hw
          exact ih q hq t hti (join_after_betas (.head (weakStep_beta hw) (.refl _)) hj) cq
  have h0 : Inv initial := ⟨entry,hi,⟨.mk .nil,.nil⟩⟩
  simpa [stateTerm,initial,denote,spine,instN] using excl n initial h0 (by simpa [stateTerm,initial,denote,spine,instN] using hj)
end Blc.Floor44.Safe
namespace Blc.Floor44.Safe
open Term SelfintSharp SelfintLowerBound SelfintControl SelfintProbe Round3Floor38 WeakHeadClock
theorem probe {e c m r tgt u : Term} {args : List Term} {k : Nat} {ps : List (List Direction)}
    (he : IsSelfInterpreter e) (hm : Closed m)
    (hw : headSteps k (want c m r args) = some tgt) (h : replay ps (call e c m r args) = some u) :
    BetaJoin u tgt :=
  join_after_betas (replay_sound h) (join_trans (joinArgs (contract_join he hm c r) args)
    (join_of_betas (headReds_betas' hw)))
end Blc.Floor44.Safe
