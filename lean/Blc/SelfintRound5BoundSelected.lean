/-
The cycle obstruction for explicitly selected contractions. A graph covers
the actual redex selected by each constructor, not every redex which happens
to have the same source and target trees. Thus the result also applies to the
minimal dependency graph of a reduction with redex positions recorded.
-/
import Blc.SelfintRound5BoundGraph

namespace Blc.SelfintRound5BoundSelected
open Term SelfintLowerBound SelfintRound5BoundCapture SelfintRound5BoundRank
open SelfintRound5BoundOrigins SelfintRound5BoundCycle SelfintRound5BoundGraph
open O

inductive SelectedStep (R : Nat → Nat → Prop) : Tree → Tree → Prop
  | beta (o : Nat) (b a : Tree) :
      (o ≠ 0 → 1 < occ 0 (O.erase b) →
        ∀ c, c ≠ 0 → HasOrigin c a → R o c) →
      SelectedStep R (.app (.lam o b) a) (O.subst 0 a b)
  | appL {f g : Tree} (a : Tree) :
      SelectedStep R f g → SelectedStep R (.app f a) (.app g a)
  | appR (f : Tree) {a b : Tree} :
      SelectedStep R a b → SelectedStep R (.app f a) (.app f b)
  | lam (o : Nat) {b c : Tree} :
      SelectedStep R b c → SelectedStep R (.lam o b) (.lam o c)

inductive SelectedPath (R : Nat → Nat → Prop) : Tree → List (Tree × Tree) → Tree → Prop
  | nil (t : Tree) : SelectedPath R t [] t
  | cons {t u v : Tree} {es : List (Tree × Tree)} :
      SelectedStep R t u → SelectedPath R u es v → SelectedPath R t ((t, u) :: es) v

theorem SelectedStep.raw {R : Nat → Nat → Prop} {t u : Tree}
    (h : SelectedStep R t u) : RawStep t u := by
  induction h with
  | beta o b a _ => exact .beta o b a
  | appL a _ ih => exact .appL a ih
  | appR f _ ih => exact .appR f ih
  | lam o _ ih => exact .lam o ih

theorem SelectedStep.ranked {R : Nat → Nat → Prop} {rank : Nat → Nat} {N : Nat}
    (hdec : ∀ o c, 0 < o → o ≤ N → R o c → rank c < rank o)
    {t u : Tree} (h : SelectedStep R t u)
    (hg : QuoteOrigins.Marked.Good (O.colour t)) (hr : O.Ranged id N t) : O.Step rank t u := by
  induction h with
  | beta o b a hedge =>
      by_cases ho : o = 0
      · subst o
        have ha := (QuoteOrigins.Marked.good_blueAffine hg).1.2
        apply O.Step.blue
        simpa only [O.erase_colour] using ha (by decide)
      · by_cases hk : occ 0 (O.erase b) ≤ 1
        · exact .red o b a ho (Or.inl hk)
        · rcases below_or_origin rank (rank o) a with hb | ⟨c, hc, hca, hle⟩
          · exact .red o b a ho (Or.inr hb)
          · have hb := hr.1.2 ho
            have hlt := hdec o c hb.1 hb.2 (hedge ho (by omega) c hc hca)
            exact ((Nat.not_lt_of_ge hle) hlt).elim
  | appL a _ ih => exact .appL a (ih hg.1 hr.1)
  | appR f _ ih => exact .appR f (ih hg.2 hr.2)
  | lam o _ ih => exact .lam o (ih hg.1 hr.1)

theorem SelectedPath.ranked {R : Nat → Nat → Prop} {rank : Nat → Nat} {N : Nat}
    (hdec : ∀ o c, 0 < o → o ≤ N → R o c → rank c < rank o)
    {t u : Tree} {es : List (Tree × Tree)} (h : SelectedPath R t es u)
    (hg : QuoteOrigins.Marked.Good (O.colour t)) (hr : O.Ranged id N t) : O.Steps rank t u := by
  induction h with
  | nil => exact .refl _
  | cons hb _ ih =>
      exact .head (hb.ranked hdec hg hr)
        (ih (QuoteOrigins.Marked.good_step hb.raw.colour hg) (hb.raw.ranged hr))

/-- Every graph covering the selected nonlinear source-copy contractions in
a successful decoding of the fixed probe contains a directed cycle. -/
theorem every_selected_decode_graph_cycle (E : Term) (R : Nat → Nat → Prop)
    {es : List (Tree × Tree)} {u : Tree}
    (hp : SelectedPath R (O.source (marked E) (blcCode (captureProgram (probe E)))) es u)
    (hu : O.erase u = captureOutput (probe E)) : Cyclic R := by
  classical
  apply Classical.byContradiction
  intro ha
  obtain ⟨rank, hr, hdec⟩ := finite_acyclic_ranking R (origins E) ha
  have hm := paint_matches (fun _ => 0) 0 E
  have hred : O.AllRed (marked E) := paint_red (fun _ => 0) 0 E
  have hi : O.Ranged id (origins E) (marked E) :=
    paint_ranged id (origins E) (fun _ => 0) 0 E
      (fun o hlo hhi => ⟨hlo, by simpa only [id, Nat.zero_add] using hhi⟩)
  have hrr := paint_ranged rank (origins E) (fun _ => 0) 0 E
    (by simpa only [Nat.zero_add] using hr)
  have hg : QuoteOrigins.Marked.Good
      (O.colour (O.source (marked E) (blcCode (captureProgram (probe E))))) := by
    rw [O.colour_source hred]
    exact QuoteOrigins.Marked.source_good _ _
  have hs := hp.ranked hdec hg (O.ranged_source hi _)
  have hno := O.no_ranked_capture_output hm hred hrr
  dsimp only at hno
  rw [erase_paint] at hno
  exact hno u hu hs

/-- Raw paths always admit a covering dependency graph. A more detailed
position-recorded trace may supply a smaller graph through SelectedPath. -/
theorem RawStep.selected {R : Nat → Nat → Prop} {t u : Tree} (h : RawStep t u)
    (hc : ∀ o c, Copies o c t u → R o c) : SelectedStep R t u := by
  induction h with
  | beta o b a => exact .beta o b a (fun ho hk c hcz hca => hc o c (.root b a ho hcz hk hca))
  | appL a _ ih => exact .appL a (ih (fun o c h => hc o c (.appL a h)))
  | appR f _ ih => exact .appR f (ih (fun o c h => hc o c (.appR f h)))
  | lam p _ ih => exact .lam p (ih (fun o c h => hc o c (.lam p h)))

theorem Path.selected {R : Nat → Nat → Prop} {t u : Tree} {es : List (Tree × Tree)}
    (h : Path t es u)
    (hc : ∀ p q, (p, q) ∈ es → ∀ o c, Copies o c p q → R o c) : SelectedPath R t es u := by
  induction h with
  | nil => exact .nil _
  | @cons t v u es hb hs ih =>
      exact .cons (RawStep.selected hb (hc t v List.mem_cons_self))
        (ih (fun p q he => hc p q (List.mem_cons_of_mem _ he)))

/-- The graph of all compatible copy events covers any redex choices in the
recorded path. -/
theorem Path.selected_dependency {t u : Tree} {es : List (Tree × Tree)}
    (h : Path t es u) : SelectedPath (Dependency es) t es u := by
  apply SelfintRound5BoundSelected.Path.selected h
  intro p q hmem o c hcopy
  obtain ⟨pre, post, he⟩ := List.mem_iff_append.mp hmem
  exact ⟨pre, p, q, post, he, hcopy⟩

/-- Every exact self-interpreter has a successful selected decoding path with
a cyclic covering graph. Every vertex on an edge is a source lambda origin. -/
theorem selfInterpreter_selected_copy_cycle {E : Term} (hE : IsSelfInterpreter E) :
    ∃ es u,
      SelectedPath (Dependency es)
        (O.source (marked E) (blcCode (captureProgram (probe E)))) es u ∧
      O.erase u = captureOutput (probe E) ∧ Cyclic (Dependency es) ∧
      (∀ o c, Dependency es o c →
        (0 < o ∧ o ≤ origins E) ∧ (0 < c ∧ c ≤ origins E)) := by
  obtain ⟨es, u, hp, hu, _⟩ := selfInterpreter_copy_cycle hE
  have hs := SelfintRound5BoundSelected.Path.selected_dependency hp
  exact ⟨es, u, hs, hu, every_selected_decode_graph_cycle E (Dependency es) hs hu,
    fun _ _ hc => dependency_bounded E hp hc⟩

#print axioms every_selected_decode_graph_cycle
#print axioms selfInterpreter_selected_copy_cycle
end Blc.SelfintRound5BoundSelected
