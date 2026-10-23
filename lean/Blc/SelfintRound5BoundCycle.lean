/-
Actual source-origin copying events in every recorded successful decode
trace. The raw trace retains its ordered edge list; witnesses identify a
member edge and the source and copied lambda origins at that contraction.
-/
import Blc.SelfintRound5BoundOrigins

namespace Blc.SelfintRound5BoundCycle
open Term SelfintLowerBound SelfintRound5BoundCapture SelfintRound5BoundRank
open SelfintRound5BoundOrigins
open O

inductive RawStep : Tree → Tree → Prop
  | beta (o : Nat) (b a : Tree) : RawStep (.app (.lam o b) a) (O.subst 0 a b)
  | appL {f g : Tree} (a : Tree) : RawStep f g → RawStep (.app f a) (.app g a)
  | appR (f : Tree) {a b : Tree} : RawStep a b → RawStep (.app f a) (.app f b)
  | lam (o : Nat) {b c : Tree} : RawStep b c → RawStep (.lam o b) (.lam o c)

inductive Path : Tree → List (Tree × Tree) → Tree → Prop
  | nil (t : Tree) : Path t [] t
  | cons {t u v : Tree} {es : List (Tree × Tree)} :
      RawStep t u → Path u es v → Path t ((t, u) :: es) v

theorem RawStep.colour {t u : Tree} (h : RawStep t u) :
    QuoteOrigins.Marked.Step (O.colour t) (O.colour u) := by
  induction h with
  | beta o b a => rw [O.colour_subst]; exact .beta _ _ _
  | appL a _ ih => exact .appL _ ih
  | appR f _ ih => exact .appR _ ih
  | lam o _ ih => exact .lam _ ih

theorem RawStep.matches {t u : Tree} (h : RawStep t u)
    {env : Nat → Nat} (ht : O.Matches env t) : O.Matches env u := by
  induction h generalizing env with
  | beta o b a =>
      exact O.matches_subst (by rw [O.insert_zero]; exact ht.1) ht.2
  | appL a _ ih => exact ⟨ih ht.1, ht.2⟩
  | appR f _ ih => exact ⟨ht.1, ih ht.2⟩
  | lam o _ ih => exact ih ht

theorem RawStep.ranged {rank : Nat → Nat} {r : Nat} {t u : Tree}
    (h : RawStep t u) (ht : O.Ranged rank r t) : O.Ranged rank r u := by
  induction h with
  | beta o b a => exact O.ranged_subst ht.1.1 ht.2 0
  | appL a _ ih => exact ⟨ih ht.1, ht.2⟩
  | appR f _ ih => exact ⟨ht.1, ih ht.2⟩
  | lam o _ ih => exact ⟨ih ht.1, ht.2⟩

/-- An ordinary beta step lifts without changing any source-origin tag. -/
theorem lift_beta {t : Tree} {u : Term} (h : Beta (O.erase t) u) :
    ∃ v, RawStep t v ∧ O.erase v = u := by
  generalize he : O.erase t = z at h
  induction h generalizing t with
  | beta b a =>
      cases t with
      | var o n => cases he
      | lam o b => cases he
      | app f a =>
          cases f with
          | var o n => cases he
          | app f x => cases he
          | lam o b =>
              cases he
              exact ⟨O.subst 0 a b, .beta o b a, O.erase_subst b a 0⟩
  | appL a h ih =>
      cases t with
      | var o n => cases he
      | lam o b => cases he
      | app f x =>
          cases he
          obtain ⟨v, hv, heq⟩ := ih rfl
          exact ⟨.app v x, .appL x hv, congrArg (Term.app · (O.erase x)) heq⟩
  | appR f h ih =>
      cases t with
      | var o n => cases he
      | lam o b => cases he
      | app f x =>
          cases he
          obtain ⟨v, hv, heq⟩ := ih rfl
          exact ⟨.app f v, .appR f hv, congrArg (Term.app (O.erase f)) heq⟩
  | lam h ih =>
      cases t with
      | var o n => cases he
      | app f a => cases he
      | lam o b =>
          cases he
          obtain ⟨v, hv, heq⟩ := ih rfl
          exact ⟨.lam o v, .lam o hv, congrArg Term.lam heq⟩

theorem lift_betas {t : Tree} {u : Term} (h : Betas (O.erase t) u) :
    ∃ es v, Path t es v ∧ O.erase v = u := by
  generalize he : O.erase t = z at h
  induction h generalizing t with
  | refl => exact ⟨[], t, .nil _, he⟩
  | head hb _ ih =>
      rw [← he] at hb
      obtain ⟨v, hv, heq⟩ := lift_beta hb
      obtain ⟨es, w, hw, heq'⟩ := ih heq
      exact ⟨_, w, .cons hv hw, heq'⟩

def HasOrigin (p : Nat) : Tree → Prop
  | .var _ _ => False
  | .lam o b => o = p ∨ HasOrigin p b
  | .app f a => HasOrigin p f ∨ HasOrigin p a

theorem below_or_origin (rank : Nat → Nat) (k : Nat) (a : Tree) :
    O.Below rank k a ∨ ∃ p, p ≠ 0 ∧ HasOrigin p a ∧ k ≤ rank p := by
  induction a with
  | var o n => exact Or.inl (fun _ _ => rfl)
  | app f a ihf iha =>
      rcases ihf with hf | ⟨p, hp, hf, hk⟩
      · rcases iha with ha | ⟨p, hp, ha, hk⟩
        · exact Or.inl (fun j hj => by simp only [O.count, hf j hj, ha j hj, Nat.add_zero])
        · exact Or.inr ⟨p, hp, Or.inr ha, hk⟩
      · exact Or.inr ⟨p, hp, Or.inl hf, hk⟩
  | lam o b ih =>
      by_cases ho : o = 0
      · rcases ih with hb | ⟨p, hp, hb, hk⟩
        · refine Or.inl (fun j hj => ?_)
          change O.count rank j b + (if o ≠ 0 ∧ rank o = j then 1 else 0) = 0
          rw [hb j hj, if_neg (fun h => h.1 ho)]
        · exact Or.inr ⟨p, hp, Or.inr hb, hk⟩
      · by_cases hk : k ≤ rank o
        · exact Or.inr ⟨o, ho, Or.inl rfl, hk⟩
        · rcases ih with hb | ⟨p, hp, hb, hkp⟩
          · refine Or.inl (fun j hj => ?_)
            change O.count rank j b + (if o ≠ 0 ∧ rank o = j then 1 else 0) = 0
            have hno : ¬ (o ≠ 0 ∧ rank o = j) := by
              intro h
              exact hk (h.2 ▸ hj)
            rw [hb j hj, if_neg hno]
          · exact Or.inr ⟨p, hp, Or.inr hb, hkp⟩

/-- A selected nonlinear contraction of source origin o copies a lambda of
source origin p. The context constructors identify that actual contraction. -/
inductive Copies (o p : Nat) : Tree → Tree → Prop
  | root (b a : Tree) : o ≠ 0 → p ≠ 0 → 1 < occ 0 (O.erase b) → HasOrigin p a →
      Copies o p (.app (.lam o b) a) (O.subst 0 a b)
  | appL {f g : Tree} (a : Tree) : Copies o p f g → Copies o p (.app f a) (.app g a)
  | appR (f : Tree) {a b : Tree} : Copies o p a b → Copies o p (.app f a) (.app f b)
  | lam (q : Nat) {b c : Tree} : Copies o p b c → Copies o p (.lam q b) (.lam q c)

def Bad (rank : Nat → Nat) (t u : Tree) : Prop :=
  ∃ o p, rank o ≤ rank p ∧ Copies o p t u

theorem RawStep.ranked_or_bad {rank : Nat → Nat} {t u : Tree} (h : RawStep t u)
    (ht : QuoteOrigins.Marked.Good (O.colour t)) : O.Step rank t u ∨ Bad rank t u := by
  induction h with
  | beta o b a =>
      by_cases ho : o = 0
      · subst o
        have hg := (QuoteOrigins.Marked.good_blueAffine ht).1.2
        have hk : occ 0 (O.erase b) ≤ 1 := by
          simpa only [O.erase_colour] using hg (by decide)
        exact Or.inl (.blue b a hk)
      · by_cases hk : occ 0 (O.erase b) ≤ 1
        · exact Or.inl (.red o b a ho (Or.inl hk))
        · rcases below_or_origin rank (rank o) a with hb | ⟨p, hp, ha, hr⟩
          · exact Or.inl (.red o b a ho (Or.inr hb))
          · exact Or.inr ⟨o, p, hr, .root b a ho hp (by omega) ha⟩
  | appL a _ ih =>
      rcases ih ht.1 with hs | ⟨o, p, hr, hc⟩
      · exact Or.inl (.appL a hs)
      · exact Or.inr ⟨o, p, hr, .appL a hc⟩
  | appR f _ ih =>
      rcases ih ht.2 with hs | ⟨o, p, hr, hc⟩
      · exact Or.inl (.appR f hs)
      · exact Or.inr ⟨o, p, hr, .appR f hc⟩
  | lam q _ ih =>
      rcases ih ht.1 with hs | ⟨o, p, hr, hc⟩
      · exact Or.inl (.lam q hs)
      · exact Or.inr ⟨o, p, hr, .lam q hc⟩

/-- Either every edge respects the ranking, or a violating source-copy
event occurs on a literal edge of the supplied ordered path. -/
theorem Path.ranked_or_bad {rank : Nat → Nat} {t u : Tree} {es : List (Tree × Tree)}
    (h : Path t es u) (ht : QuoteOrigins.Marked.Good (O.colour t)) :
    O.Steps rank t u ∨
      ∃ pre p q post o c, es = pre ++ (p, q) :: post ∧
        Path t pre p ∧ RawStep p q ∧ Copies o c p q ∧ rank o ≤ rank c ∧ Path q post u := by
  induction h with
  | nil => exact Or.inl (.refl _)
  | @cons t v u es hb hs ih =>
      rcases hb.ranked_or_bad ht with hr | ⟨o, c, hrc, hc⟩
      · rcases ih (QuoteOrigins.Marked.good_step hb.colour ht) with hu |
          ⟨pre, p, q, post, o, c, he, hp, hq, hc, hrc, hu⟩
        · exact Or.inl (.head hr hu)
        · exact Or.inr ⟨(t, v) :: pre, p, q, post, o, c,
            by simp only [he, List.cons_append], .cons hb hp, hq, hc, hrc, hu⟩
      · exact Or.inr ⟨[], t, v, es, o, c, rfl, .nil _, hb, hc, hrc, hs⟩

/-- For any fixed finite source-origin ranking, every successful recorded
decode of this one capture-rich probe has a member edge copying a source
lambda of equal or greater rank. Prefix, adjacent edge, and suffix are exact. -/
theorem every_decode_trace_nonlower {rank : Nat → Nat} {r : Nat} {E : Tree}
    (hE : O.Matches (fun _ => 0) E) (hred : O.AllRed E) (hr : O.Ranged rank r E) :
    let n := bound r (nodes (O.erase E)) + 1
    ∀ es u, Path (O.source E (blcCode (captureProgram n))) es u →
      O.erase u = captureOutput n →
      ∃ pre p q post o c, es = pre ++ (p, q) :: post ∧
        Path (O.source E (blcCode (captureProgram n))) pre p ∧
        RawStep p q ∧ Copies o c p q ∧ rank o ≤ rank c ∧ Path q post u := by
  dsimp only
  intro es u hp hu
  have hg : QuoteOrigins.Marked.Good
      (O.colour (O.source E (blcCode (captureProgram (bound r (nodes (O.erase E)) + 1))))) := by
    rw [O.colour_source hred]
    exact QuoteOrigins.Marked.source_good _ _
  rcases hp.ranked_or_bad hg with hs | hbad
  · exact (O.no_ranked_capture_output hE hred hr u hu hs).elim
  · exact hbad

/-- Correct interpreters have at least one such successful raw path, so the
per-path obstruction above is nonvacuous. -/
theorem successful_path_exists {E : Tree} (hE : IsSelfInterpreter (O.erase E)) (n : Nat) :
    ∃ es u, Path (O.source E (blcCode (captureProgram n))) es u ∧ O.erase u = captureOutput n := by
  obtain ⟨w, hw, hout⟩ := hE.2 (captureProgram n) (captureProgram_closed n)
  have he : w = captureOutput n := normalForm_betas_eq (captureOutput_normal n) hout
  rw [he, ← O.erase_source] at hw
  exact lift_betas hw

def eraseEdges (es : List (Tree × Tree)) : List (Term × Term) :=
  es.map (fun e => (O.erase e.1, O.erase e.2))

/-- Lift an independently supplied ordinary edge list without changing its
order or any of its intermediate terms. -/
theorem lift_recorded_trace {t : Tree} {u : Term} {es : List (Term × Term)}
    (h : SelfintRound5BoundCapture.Trace (O.erase t) es u) :
    ∃ fs v, Path t fs v ∧ O.erase v = u ∧ eraseEdges fs = es := by
  generalize he : O.erase t = z at h
  induction h generalizing t with
  | nil => exact ⟨[], t, .nil _, he, rfl⟩
  | @cons z v u es hb hs ih =>
      rw [← he] at hb
      obtain ⟨v', hv, heq⟩ := lift_beta hb
      obtain ⟨fs, w, hw, heq', hf⟩ := ih heq
      refine ⟨_, w, .cons hv hw, heq', ?_⟩
      simp only [eraseEdges, List.map_cons, he, heq]
      exact congrArg ((z, v) :: ·) hf

/-- Every ordinary successful recorded trace admits an origin lift in which
the violating copying event sits on the same literal ordinary edge list. -/
theorem every_ordinary_decode_trace_nonlower {rank : Nat → Nat} {r : Nat} {E : Tree}
    (hE : O.Matches (fun _ => 0) E) (hred : O.AllRed E) (hr : O.Ranged rank r E) :
    let n := bound r (nodes (O.erase E)) + 1
    ∀ es, SelfintRound5BoundCapture.Trace
      (.app (.app (O.erase E) (.var 0)) (streamOf (blcCode (captureProgram n)) (.var 1)))
      es (captureOutput n) →
      ∃ pre p q post o c,
        es = eraseEdges pre ++ (O.erase p, O.erase q) :: eraseEdges post ∧
        Path (O.source E (blcCode (captureProgram n))) pre p ∧
        RawStep p q ∧ Copies o c p q ∧ rank o ≤ rank c := by
  dsimp only
  intro es hs
  rw [← O.erase_source] at hs
  obtain ⟨fs, u, hp, hu, he⟩ := lift_recorded_trace hs
  obtain ⟨pre, p, q, post, o, c, hfs, hpre, hstep, hcopy, hrank, _⟩ :=
    every_decode_trace_nonlower hE hred hr fs u hp hu
  refine ⟨pre, p, q, post, o, c, ?_, hpre, hstep, hcopy, hrank⟩
  rw [← he, hfs]
  simp only [eraseEdges, List.map_append, List.map_cons]

/-- Number of source lambda nodes, before residual copies. -/
def origins : Term → Nat
  | .var _ => 0
  | .lam b => origins b + 1
  | .app f a => origins f + origins a

/-- Canonical distinct source origins: lambdas receive consecutive positive
labels in preorder, and variables retain their lexical binding label. -/
def paint (env : Nat → Nat) (start : Nat) : Term → Tree
  | .var n => .var (env n) n
  | .lam b => .lam (start + 1) (paint (O.push (start + 1) env) (start + 1) b)
  | .app f a => .app (paint env start f) (paint env (start + origins f) a)

def marked (E : Term) : Tree := paint (fun _ => 0) 0 E

theorem erase_paint (env : Nat → Nat) (start : Nat) (E : Term) :
    O.erase (paint env start E) = E := by
  induction E generalizing env start with
  | var => rfl
  | lam b ih => exact congrArg Term.lam (ih _ _)
  | app f a ihf iha => simp only [paint, O.erase, ihf, iha]

theorem paint_matches (env : Nat → Nat) (start : Nat) (E : Term) :
    O.Matches env (paint env start E) := by
  induction E generalizing env start with
  | var => rfl
  | lam b ih => exact ih _ _
  | app f a ihf iha => exact ⟨ihf _ _, iha _ _⟩

theorem paint_red (env : Nat → Nat) (start : Nat) (E : Term) :
    O.AllRed (paint env start E) := by
  induction E generalizing env start with
  | var => trivial
  | lam b ih => exact ⟨by omega, ih _ _⟩
  | app f a ihf iha => exact ⟨ihf _ _, iha _ _⟩

theorem paint_ranged (rank : Nat → Nat) (r : Nat) (env : Nat → Nat) (start : Nat) (E : Term)
    (h : ∀ o, start < o → o ≤ start + origins E → 0 < rank o ∧ rank o ≤ r) :
    O.Ranged rank r (paint env start E) := by
  induction E generalizing env start with
  | var => trivial
  | lam b ih =>
      refine ⟨ih _ _ (fun o hlo hhi => h o (by omega) (by simp only [origins]; omega)), ?_⟩
      intro _
      exact h (start + 1) (by omega) (by simp only [origins]; omega)
  | app f a ihf iha =>
      refine ⟨ihf _ _ (fun o hlo hhi => h o hlo (by simp only [origins]; omega)),
        iha _ _ (fun o hlo hhi => h o (by omega) (by simp only [origins]; omega))⟩

def lambdaOrigins : Tree → List Nat
  | .var _ _ => []
  | .lam o b => o :: lambdaOrigins b
  | .app f a => lambdaOrigins f ++ lambdaOrigins a

theorem paint_origins (env : Nat → Nat) (start : Nat) (E : Term) :
    lambdaOrigins (paint env start E) = List.range' (start + 1) (origins E) := by
  induction E generalizing env start with
  | var => rfl
  | lam b ih => simp only [paint, lambdaOrigins, ih, origins, List.range'_succ]
  | app f a ihf iha =>
      simp only [paint, lambdaOrigins, ihf, iha, origins]
      have he : start + origins f + 1 = (start + 1) + origins f := by omega
      rw [he, List.range'_append_1]

theorem marked_origins_nodup (E : Term) : (lambdaOrigins (marked E)).Nodup := by
  rw [marked, paint_origins]
  exact List.nodup_range'

/-- One probe works for every bounded ranking of the finitely many distinct
source origins. It depends only on the original interpreter syntax. -/
def probe (E : Term) : Nat := bound (origins E) (nodes E) + 1

theorem every_bounded_ranking_fails (E : Term) (rank : Nat → Nat)
    (hr : ∀ o, 0 < o → o ≤ origins E → 0 < rank o ∧ rank o ≤ origins E)
    (es : List (Tree × Tree)) (u : Tree)
    (hp : Path (O.source (marked E) (blcCode (captureProgram (probe E)))) es u)
    (hu : O.erase u = captureOutput (probe E)) :
    ∃ pre p q post o c, es = pre ++ (p, q) :: post ∧
      Path (O.source (marked E) (blcCode (captureProgram (probe E)))) pre p ∧
      RawStep p q ∧ Copies o c p q ∧ rank o ≤ rank c ∧ Path q post u := by
  have h := every_decode_trace_nonlower (paint_matches (fun _ => 0) 0 E)
    (paint_red (fun _ => 0) 0 E)
    (paint_ranged rank (origins E) (fun _ => 0) 0 E (by simpa only [Nat.zero_add] using hr))
  dsimp only at h
  rw [erase_paint] at h
  exact h es u hp hu

#print axioms every_decode_trace_nonlower
#print axioms successful_path_exists
#print axioms every_ordinary_decode_trace_nonlower
#print axioms every_bounded_ranking_fails
end Blc.SelfintRound5BoundCycle
