/-
Symbolic exclusions for the remaining self-application reader cutoffs.
Writing Delta = lambda x.x x, the four families are
  Delta (lambda z.z (lambda a b.b (z a)) (z W)),
  Delta (lambda z.z (lambda a b.z (z b)) (z W)),
  Delta (lambda z.z (lambda a b.z (z a)) W), and
  Delta (lambda z.z (lambda a b.z b U) (z V)).
The payloads W, U, V may contain arbitrary scoped code. No bounded
normalization result, search cutoff, or abstract cycle is used as divergence.
`docs/classical/self-interpreter/class-bound.md`.
-/
import Blc.SelfintNestedLets
import Blc.SelfintProbe

namespace Blc.SelfintRootCutoffs
open Term SelfintClass SelfintProbe SelfintSourceCost

set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

theorem step_spine {g g' : Term} (hg : ∀ b, g ≠ .lam b)
    (h : headStep g = some g') :
    ∀ as, headStep (spine g as) = some (spine g' as)
  | [] => h
  | a :: as => by
      have h1 : headStep (.app g a) = some (.app g' a) := by
        cases g with
        | var n => simp [headStep] at h
        | lam b => exact absurd rfl (hg b)
        | app f x =>
          change (headStep (.app f x)).map (Term.app · a) = _
          rw [h]; rfl
      exact step_spine (fun b => by simp) h1 as

theorem beta_spine (b a : Term) (as : List Term) :
    headStep (spine (.app (.lam b) a) as) = some (spine (contract b a) as) :=
  step_spine (fun _ => by simp) rfl as

theorem steps_comp {m n : Nat} {t u v : Term}
    (h1 : headSteps m t = some u) (h2 : headSteps n u = some v) :
    headSteps (m+n) t = some v :=
  headSteps_of_headReds (headReds_trans (headReds_of_headSteps m h1)
    (headReds_of_headSteps n h2))

/-- A family that advances by a positive number of deterministic head steps
    cannot contain any solvable term. -/
theorem unsolvable_of_advance (S : Term → Prop)
    (adv : ∀ t, S t → ∃ k u, headSteps (k+1) t = some u ∧ S u) :
    ∀ t, S t → ¬ Solvable t := by
  have far : ∀ n t, S t → ∃ m u, n ≤ m ∧ headSteps m t = some u := by
    intro n
    induction n with
    | zero => intro t _; exact ⟨0,t,Nat.le_refl _,rfl⟩
    | succ n ih =>
      intro t ht
      obtain ⟨k,u,hu,hSu⟩ := adv t ht
      obtain ⟨m,v,hm,hv⟩ := ih u hSu
      exact ⟨k+1+m,v,by omega,steps_comp hu hv⟩
  intro t ht ⟨k,p,hk,hp⟩
  obtain ⟨m,u,hm,hu⟩ := far (k+1) t ht
  obtain ⟨j,rfl⟩ := Nat.exists_eq_add_of_le hm
  obtain ⟨q,hq,hj⟩ := headSteps_add (m:=k) (n:=1+j)
    (by simpa [Nat.add_assoc] using hu)
  rw [hk] at hq; cases hq
  rw [show 1+j=j+1 by omega] at hj
  simp [headSteps,show headStep p=none from hp] at hj

/-- D x a b = b (x a). -/
def turn (x : Term) : Term :=
  .lam (.lam (.app (.var 0) (.app (shift 2 0 x) (.var 1))))

def tower (h : Term) : Nat → Term
  | 0 => h
  | n+1 => turn (tower h n)

theorem turn_rule (x a b : Term) (rs : List Term) :
    headSteps 2 (spine (turn x) (a::b::rs)) =
      some (spine b (.app x a::rs)) := by
  have h1 : headStep (spine (turn x) (a::b::rs)) =
      some (spine (.lam (.app (.var 0) (.app (shift 1 0 x) (shift 1 0 a)))) (b::rs)) := by
    change headStep (spine (.app (turn x) a) (b::rs)) = _
    rw [turn,beta_spine]
    simp [contract,substDec,substDec_shift_mid]
  have h2 : headStep
      (spine (.lam (.app (.var 0) (.app (shift 1 0 x) (shift 1 0 a)))) (b::rs)) =
      some (spine b (.app x a::rs)) := by
    change headStep (spine (.app (.lam _) b) rs) = _
    rw [beta_spine]
    simp [contract,substDec,substDec_shift,spine]
  simp [headSteps,h1,h2]

/-- Two matched towers cancel one layer in four head contractions. -/
theorem paired_towers (h a b : Term) (n : Nat) (rs : List Term) :
    headSteps (4*n)
      (spine (tower h n) (a::.app (tower h n) b::rs)) =
      some (spine h (a::.app h b::rs)) := by
  induction n with
  | zero => rfl
  | succ n ih =>
    have h1 := turn_rule (tower h n) a (.app (turn (tower h n)) b) rs
    have h2 := turn_rule (tower h n) b (.app (tower h n) a) rs
    have hh := steps_comp h1 h2
    have ht := steps_comp hh ih
    simpa only [tower,show 2+2+4*n=4*(n+1) by omega] using ht

/-- w is a body in the generator's z frame; it need not be closed or
    independent of z. -/
def generator0 (w : Term) : Term :=
  .lam (.app (.app (.var 0) (turn (.var 0))) (.app (.var 0) w))

theorem generator0_rule (w x : Term) (rs : List Term) :
    headSteps 1 (spine (generator0 w) (x::rs)) =
      some (spine x (turn x::.app x (contract w x)::rs)) := by
  have hh : headStep (spine (generator0 w) (x::rs)) =
      some (spine x (turn x::.app x (contract w x)::rs)) := by
    change headStep (spine (.app (generator0 w) x) rs) = _
    rw [generator0,beta_spine]
    simp [contract,substDec,turn,shift,shift_shift_add,spine]
  simp [headSteps,hh]

/-- H D^n(H) ->h^(4n+1) H D^(n+1)(H) (H W_n), with the
    existing pending operands untouched and W_n never forced. -/
theorem generator0_advance (w : Term) (n : Nat) (rs : List Term) :
    headSteps (4*n+1) (spine (generator0 w) (tower (generator0 w) n::rs)) =
      some (spine (generator0 w)
        (tower (generator0 w) (n+1)::
          .app (generator0 w) (contract w (tower (generator0 w) n))::rs)) := by
  have hh := generator0_rule w (tower (generator0 w) n) rs
  have ht := paired_towers (generator0 w) (turn (tower (generator0 w) n))
    (contract w (tower (generator0 w) n)) n rs
  simpa only [tower,show 1+4*n=4*n+1 by omega] using steps_comp hh ht

theorem generator0_unsolvable (w : Term) (n : Nat) (rs : List Term) :
    ¬ Solvable (spine (generator0 w) (tower (generator0 w) n::rs)) := by
  let S := fun t => ∃ n rs, t = spine (generator0 w) (tower (generator0 w) n::rs)
  apply unsolvable_of_advance S _ _ ⟨n,rs,rfl⟩
  rintro t ⟨n,rs,rfl⟩
  exact ⟨4*n,_,generator0_advance w n rs,n+1,_,rfl⟩

/-- The first outstanding rootnarrow cutoff fails for every scoped filling. -/
theorem cutoff0_not_reader (w : Term) :
    ¬ Reader (.app (.lam (.app (.var 0) (.var 0))) (generator0 w)) := by
  intro hr
  have hh : Betas
      (.app (.app (.lam (.app (.var 0) (.var 0))) (generator0 w)) Z)
      (spine (generator0 w) [generator0 w,Z]) :=
    .head (.appL Z (.beta _ _)) (.refl _)
  exact generator0_unsolvable w 0 [Z]
    (solvable_forwards hh ((solvable_join hr.zero).mpr ⟨0,_,rfl,rfl⟩))

/-! A protected second-argument invariant. Unlike the withdrawn SF2 rule,
    this tracks partially applied templates separately from arbitrary
    arguments. A template always returns to its captured head. -/

inductive Safe (h : Term) (t : Term → Term) : Term → Prop where
  | base : Safe h t h
  | held {b : Term} (a : Term) : Safe h t b → Safe h t (.app (t b) a)
  | apply {b a : Term} : Safe h t b → Safe h t a → Safe h t (.app b a)
  | applyTag {b a : Term} : Safe h t b → Safe h t a → Safe h t (.app b (t a))

def SafeArg (h : Term) (t : Term → Term) (a : Term) : Prop :=
  Safe h t a ∨ ∃ b, Safe h t b ∧ a = t b

def routed (duplicate : Bool) (b c : Term) : Term :=
  if duplicate then .app b c else c

theorem safe_app {h : Term} {t : Term → Term} {b a : Term}
    (hb : Safe h t b) (ha : SafeArg h t a) : Safe h t (.app b a) := by
  rcases ha with ha | ⟨c,hc,rfl⟩
  · exact .apply hb ha
  · exact .applyTag hb hc

theorem safe_route (d : Bool) {h : Term} {t : Term → Term} {b a : Term}
    (hb : Safe h t b) (ha : SafeArg h t a) : SafeArg h t (routed d b a) := by
  cases d with
  | false => exact ha
  | true => exact .inl (safe_app hb ha)

def SafeState (h : Term) (t : Term → Term) (q : Term) : Prop :=
  ∃ b a rs, Safe h t b ∧ SafeArg h t a ∧ q = spine b (a::rs)

/-- All right payloads may vary with every bound parameter. Only the
    captured head and the selected argument are protected. -/
theorem protected_advance (h : Term) (t v : Term → Term) (d : Bool)
    (hh : ∀ x rs, headSteps 1 (spine h (x::rs)) =
      some (spine x (t x::.app x (v x)::rs)))
    (ht : ∀ b a c rs, ∃ extra : List Term,
      headSteps 2 (spine (t b) (a::c::rs)) =
        some (spine b (routed d b c::extra++rs)))
    {b : Term} (hb : Safe h t b) :
    ∀ a rs, SafeArg h t a → ∃ k q,
      headSteps (k+1) (spine b (a::rs)) = some q ∧ SafeState h t q := by
  induction hb with
  | base =>
    intro a rs ha
    rcases ha with ha | ⟨x,hx,rfl⟩
    · exact ⟨0,_,hh a rs,a,t a,.app a (v a)::rs,ha,.inr ⟨a,ha,rfl⟩,rfl⟩
    · obtain ⟨extra,he⟩ := ht x (t (t x)) (.app (t x) (v (t x))) rs
      have hp : Safe h t (.app (t x) (v (t x))) := .held _ hx
      exact ⟨2,_,steps_comp (m:=1) (n:=2) (hh (t x) rs) he,
        x,_,extra++rs,hx,safe_route d hx (.inl hp),rfl⟩
  | @held b u hb ih =>
    intro a rs ha
    obtain ⟨extra,he⟩ := ht b u a rs
    exact ⟨1,_,he,b,_,extra++rs,hb,safe_route d hb ha,rfl⟩
  | @apply b c hb hc ihb ihc =>
    intro a rs ha
    exact ihb c (a::rs) (.inl hc)
  | @applyTag b c hb hc ihb ihc =>
    intro a rs ha
    exact ihb (t c) (a::rs) (.inr ⟨c,hc,rfl⟩)

theorem protected_unsolvable (h : Term) (t v : Term → Term) (d : Bool)
    (hh : ∀ x rs, headSteps 1 (spine h (x::rs)) =
      some (spine x (t x::.app x (v x)::rs)))
    (ht : ∀ b a c rs, ∃ extra : List Term,
      headSteps 2 (spine (t b) (a::c::rs)) =
        some (spine b (routed d b c::extra++rs)))
    (rs : List Term) : ¬ Solvable (spine h (h::rs)) := by
  apply unsolvable_of_advance (SafeState h t) _ _
    ⟨h,h,rs,.base,.inl .base,rfl⟩
  rintro q ⟨b,a,rs,hb,ha,rfl⟩
  exact protected_advance h t v d hh ht hb a rs ha

/-- T x a b = x (x b). -/
def copyRight (x : Term) : Term :=
  .lam (.lam (.app (shift 2 0 x) (.app (shift 2 0 x) (.var 0))))

theorem copyRight_rule (x a b : Term) (rs : List Term) :
    headSteps 2 (spine (copyRight x) (a::b::rs)) =
      some (spine x (.app x b::rs)) := by
  have h1 : headStep (spine (copyRight x) (a::b::rs)) =
      some (spine (.lam (.app (shift 1 0 x) (.app (shift 1 0 x) (.var 0)))) (b::rs)) := by
    change headStep (spine (.app (copyRight x) a) (b::rs)) = _
    rw [copyRight,beta_spine]
    simp [contract,substDec,substDec_shift_mid]
  have h2 : headStep
      (spine (.lam (.app (shift 1 0 x) (.app (shift 1 0 x) (.var 0)))) (b::rs)) =
      some (spine x (.app x b::rs)) := by
    change headStep (spine (.app (.lam _) b) rs) = _
    rw [beta_spine]
    simp [contract,substDec,substDec_shift,spine]
  simp [headSteps,h1,h2]

def generator2 (w : Term) : Term :=
  .lam (.app (.app (.var 0) (copyRight (.var 0))) (.app (.var 0) w))

theorem generator2_rule (w x : Term) (rs : List Term) :
    headSteps 1 (spine (generator2 w) (x::rs)) =
      some (spine x (copyRight x::.app x (contract w x)::rs)) := by
  have hh : headStep (spine (generator2 w) (x::rs)) =
      some (spine x (copyRight x::.app x (contract w x)::rs)) := by
    change headStep (spine (.app (generator2 w) x) rs) = _
    rw [generator2,beta_spine]
    simp [contract,substDec,copyRight,shift,shift_shift_add,spine]
  simp [headSteps,hh]

theorem generator2_unsolvable (w : Term) (rs : List Term) :
    ¬ Solvable (spine (generator2 w) (generator2 w::rs)) := by
  apply protected_unsolvable (generator2 w) copyRight (contract w) true
    (generator2_rule w) _ rs
  intro b a c rs
  exact ⟨[],copyRight_rule b a c rs⟩

theorem cutoff2_not_reader (w : Term) :
    ¬ Reader (.app (.lam (.app (.var 0) (.var 0))) (generator2 w)) := by
  intro hr
  have hh : Betas
      (.app (.app (.lam (.app (.var 0) (.var 0))) (generator2 w)) Z)
      (spine (generator2 w) [generator2 w,Z]) :=
    .head (.appL Z (.beta _ _)) (.refl _)
  exact generator2_unsolvable w [Z]
    (solvable_forwards hh ((solvable_join hr.zero).mpr ⟨0,_,rfl,rfl⟩))

/-- u is in the frame [b,a,z,...]; its content is never evaluated. -/
def relayBody (u : Term) : Term :=
  .lam (.lam (.app (.app (.var 2) (.var 0)) u))

def relay (u x : Term) : Term := contract (relayBody u) x

theorem relay_rule (u x a b : Term) (rs : List Term) :
    ∃ extra : List Term,
      headSteps 2 (spine (relay u x) (a::b::rs)) =
        some (spine x (b::extra++rs)) := by
  let ux := substDec 2 (shift 1 0 (shift 1 0 x)) u
  let uxa := substDec 1 (shift 1 0 a) ux
  let uxab := substDec 0 b uxa
  refine ⟨[uxab],?_⟩
  have h1 : headStep (spine (relay u x) (a::b::rs)) =
      some (spine (.lam (.app (.app (shift 1 0 x) (.var 0)) uxa)) (b::rs)) := by
    change headStep (spine (.app (relay u x) a) (b::rs)) = _
    simp only [relay,relayBody,contract,substDec,↓reduceIte]
    rw [beta_spine]
    simp [contract,substDec,ux,uxa,shift_shift_add,substDec_shift_mid]
  have h2 : headStep
      (spine (.lam (.app (.app (shift 1 0 x) (.var 0)) uxa)) (b::rs)) =
      some (spine x (b::[uxab]++rs)) := by
    change headStep (spine (.app (.lam _) b) rs) = _
    rw [beta_spine]
    simp [contract,substDec,substDec_shift,uxab,spine]
  simp [headSteps,h1,h2]

def generator4 (u v : Term) : Term :=
  .lam (.app (.app (.var 0) (relayBody u)) (.app (.var 0) v))

theorem generator4_rule (u v x : Term) (rs : List Term) :
    headSteps 1 (spine (generator4 u v) (x::rs)) =
      some (spine x (relay u x::.app x (contract v x)::rs)) := by
  have hh : headStep (spine (generator4 u v) (x::rs)) =
      some (spine x (relay u x::.app x (contract v x)::rs)) := by
    change headStep (spine (.app (generator4 u v) x) rs) = _
    rw [generator4,beta_spine]
    rfl
  simp [headSteps,hh]

/-- The source excluded only by the withdrawn SF2 rule is independently
    divergent; arbitrary u may refer to z, a, b and all outer parameters. -/
theorem generator4_unsolvable (u v : Term) (rs : List Term) :
    ¬ Solvable (spine (generator4 u v) (generator4 u v::rs)) := by
  apply protected_unsolvable (generator4 u v) (relay u) (contract v) false
    (generator4_rule u v) _ rs
  intro b a c rs
  exact relay_rule u b a c rs

theorem cutoff4_not_reader (u v : Term) :
    ¬ Reader (.app (.lam (.app (.var 0) (.var 0))) (generator4 u v)) := by
  intro hr
  have hh : Betas
      (.app (.app (.lam (.app (.var 0) (.var 0))) (generator4 u v)) Z)
      (spine (generator4 u v) [generator4 u v,Z]) :=
    .head (.appL Z (.beta _ _)) (.refl _)
  exact generator4_unsolvable u v [Z]
    (solvable_forwards hh ((solvable_join hr.zero).mpr ⟨0,_,rfl,rfl⟩))

/-! The last family preserves the first argument. A partially applied
    template may expose a lambda, but its body still has no head normal
    form. Tracking only weak-head termination would miss this case. -/

def copyLeft (x : Term) : Term :=
  .lam (.lam (.app (shift 2 0 x) (.app (shift 2 0 x) (.var 1))))

def generator3 (w : Term) : Term :=
  .lam (.app (.app (.var 0) (copyLeft (.var 0))) w)

theorem copyLeft_one (x a : Term) :
    headStep (.app (copyLeft x) a) = some
      (.lam (.app (shift 1 0 x) (.app (shift 1 0 x) (shift 1 0 a)))) := by
  simp [copyLeft,headStep,contract,substDec,substDec_shift_mid]

theorem copyLeft_rule (x a b : Term) (rs : List Term) :
    headSteps 2 (spine (copyLeft x) (a::b::rs)) =
      some (spine x (.app x a::rs)) := by
  have h1 := step_spine (fun _ => by simp) (copyLeft_one x a) (b::rs)
  have h2 : headStep
      (spine (.lam (.app (shift 1 0 x) (.app (shift 1 0 x) (shift 1 0 a)))) (b::rs)) =
      some (spine x (.app x a::rs)) := by
    change headStep (spine (.app (.lam _) b) rs) = _
    rw [beta_spine]
    simp [contract,substDec,substDec_shift,spine]
  simp [headSteps,show spine (copyLeft x) (a::b::rs) =
    spine (.app (copyLeft x) a) (b::rs) from rfl,h1,h2]

theorem generator3_rule (w x : Term) (rs : List Term) :
    headSteps 1 (spine (generator3 w) (x::rs)) =
      some (spine x (copyLeft x::contract w x::rs)) := by
  have hh : headStep (spine (generator3 w) (x::rs)) =
      some (spine x (copyLeft x::contract w x::rs)) := by
    change headStep (spine (.app (generator3 w) x) rs) = _
    rw [generator3,beta_spine]
    simp [contract,substDec,copyLeft,shift,shift_shift_add,spine]
  simp [headSteps,hh]

theorem shift_copyLeft (x : Term) :
    shift 1 0 (copyLeft x) = copyLeft (shift 1 0 x) := by
  simp only [copyLeft,shift]
  rw [shift_shift_comm x 1 2 0 0 (by omega)]
  rfl

theorem shift_generator3 (w : Term) :
    shift 1 0 (generator3 w) = generator3 (shift 1 1 w) := by
  simp [generator3,copyLeft,shift]

/-- An application algebra of generators with arbitrary payloads and
    their left-preserving templates. -/
inductive LeftSafe : Term → Prop where
  | base (w : Term) : LeftSafe (generator3 w)
  | tag {b : Term} : LeftSafe b → LeftSafe (copyLeft b)
  | apply {b a : Term} : LeftSafe b → LeftSafe a → LeftSafe (.app b a)

theorem leftSafe_shift {x : Term} (hx : LeftSafe x) : LeftSafe (shift 1 0 x) := by
  induction hx with
  | base w => rw [shift_generator3]; exact .base _
  | tag hb ih => rw [shift_copyLeft]; exact .tag ih
  | apply hb ha ihb iha => exact .apply ihb iha

inductive LeftState : Term → Prop where
  | core {b a : Term} (rs : List Term) :
    LeftSafe b → LeftSafe a → LeftState (spine b (a::rs))
  | under {b : Term} : LeftState b → LeftState (.lam b)

theorem left_core_advance {b : Term} (hb : LeftSafe b) :
    ∀ a rs, LeftSafe a → ∃ k q,
      headSteps (k+1) (spine b (a::rs)) = some q ∧ LeftState q := by
  induction hb with
  | base w =>
    intro a rs ha
    exact ⟨0,_,generator3_rule w a rs,.core _ ha (.tag ha)⟩
  | @tag b hb ih =>
    intro a rs ha
    cases rs with
    | nil =>
      refine ⟨0,_,?_,.under (.core [] (leftSafe_shift hb)
        (.apply (leftSafe_shift hb) (leftSafe_shift ha)))⟩
      simp [spine,headSteps,copyLeft_one]
    | cons c cs =>
      exact ⟨1,_,copyLeft_rule b a c cs,.core cs hb (.apply hb ha)⟩
  | @apply b c hb hc ihb ihc =>
    intro a rs ha
    exact ihb c (a::rs) hc

theorem steps_under {n : Nat} {b c : Term} (h : headSteps n b = some c) :
    headSteps n (.lam b) = some (.lam c) := by
  induction n generalizing b with
  | zero => simp only [headSteps,Option.some.injEq] at h; subst b; rfl
  | succ n ih =>
    simp only [headSteps,Option.bind_eq_some_iff] at h
    obtain ⟨u,hu,hn⟩ := h
    simp [headSteps,headStep,hu,ih hn]

theorem left_advance {q : Term} (hq : LeftState q) :
    ∃ k r, headSteps (k+1) q = some r ∧ LeftState r := by
  induction hq with
  | core rs hb ha => exact left_core_advance hb _ rs ha
  | under h ih =>
    obtain ⟨k,r,hr,hR⟩ := ih
    exact ⟨k,.lam r,steps_under hr,.under hR⟩

theorem generator3_unsolvable (w : Term) (rs : List Term) :
    ¬ Solvable (spine (generator3 w) (generator3 w::rs)) :=
  unsolvable_of_advance LeftState (fun _ => left_advance) _
    (.core rs (.base w) (.base w))

theorem cutoff3_not_reader (w : Term) :
    ¬ Reader (.app (.lam (.app (.var 0) (.var 0))) (generator3 w)) := by
  intro hr
  have hh : Betas
      (.app (.app (.lam (.app (.var 0) (.var 0))) (generator3 w)) Z)
      (spine (generator3 w) [generator3 w,Z]) :=
    .head (.appL Z (.beta _ _)) (.refl _)
  exact generator3_unsolvable w [Z]
    (solvable_forwards hh ((solvable_join hr.zero).mpr ⟨0,_,rfl,rfl⟩))

#print axioms generator0_unsolvable
#print axioms cutoff0_not_reader
#print axioms protected_unsolvable
#print axioms cutoff2_not_reader
#print axioms cutoff4_not_reader
#print axioms cutoff3_not_reader
end Blc.SelfintRootCutoffs
