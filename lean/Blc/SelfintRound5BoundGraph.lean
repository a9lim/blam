/-
Finite source-copy graphs compatible with recorded decoding state pairs.
Each graph edge is witnessed by a nonlinear origin-copying contraction with
the recorded source and target. Different redex positions can have the same
endpoints, so this graph can include more than one selected trace requires.
The sufficiently capture-rich probe forces a directed cycle. The stronger
selected-contraction result is in SelfintRound5BoundSelected.

The finite graph argument ranks an acyclic vertex by the number of source
origins reachable from it. It enumerates no lambda terms and assumes no
interpreter architecture. Capture-bearing origins need not lie on the cycle.
-/
import Blc.SelfintRound5BoundCycle

namespace Blc.SelfintRound5BoundGraph
open Term SelfintLowerBound SelfintRound5BoundCapture SelfintRound5BoundRank
open SelfintRound5BoundOrigins SelfintRound5BoundCycle
open O

inductive Walk (R : Nat → Nat → Prop) : Nat → Nat → Prop
  | nil (v : Nat) : Walk R v v
  | cons {v w z : Nat} : R v w → Walk R w z → Walk R v z

/-- A nonempty directed cycle, including a self-loop. -/
def Cyclic (R : Nat → Nat → Prop) : Prop := ∃ v w, R v w ∧ Walk R w v

private def tally (p : Nat → Prop) [DecidablePred p] : List Nat → Nat
  | [] => 0
  | x :: xs => (if p x then 1 else 0) + tally p xs

private theorem tally_le_length (p : Nat → Prop) [DecidablePred p] (xs : List Nat) :
    tally p xs ≤ xs.length := by
  induction xs with
  | nil => exact Nat.le_refl _
  | cons x xs ih => simp only [tally, List.length_cons]; split <;> omega

private theorem tally_mono (p q : Nat → Prop) [DecidablePred p] [DecidablePred q]
    (xs : List Nat) (h : ∀ x ∈ xs, p x → q x) : tally p xs ≤ tally q xs := by
  induction xs with
  | nil => exact Nat.le_refl _
  | cons x xs ih =>
      have ht := ih (fun a ha => h a (List.mem_cons_of_mem _ ha))
      simp only [tally]
      by_cases hp : p x
      · rw [if_pos hp, if_pos (h x List.mem_cons_self hp)]
        omega
      · rw [if_neg hp]
        split <;> omega

private theorem tally_strict (p q : Nat → Prop) [DecidablePred p] [DecidablePred q]
    (xs : List Nat) (h : ∀ x ∈ xs, p x → q x)
    (hw : ∃ x ∈ xs, q x ∧ ¬ p x) : tally p xs < tally q xs := by
  induction xs with
  | nil => obtain ⟨x, hx, _⟩ := hw; cases hx
  | cons x xs ih =>
      have ht : ∀ a ∈ xs, p a → q a := fun a ha => h a (List.mem_cons_of_mem _ ha)
      by_cases hp : p x
      · have hq := h x List.mem_cons_self hp
        have hw' : ∃ a ∈ xs, q a ∧ ¬ p a := by
          obtain ⟨a, ha, hqa, hpa⟩ := hw
          rcases List.mem_cons.mp ha with he | ha
          · subst a; exact (hpa hp).elim
          · exact ⟨a, ha, hqa, hpa⟩
        have hs := ih ht hw'
        simp only [tally, if_pos hp, if_pos hq]
        omega
      · by_cases hq : q x
        · have hs := tally_mono p q xs ht
          simp only [tally, if_neg hp, if_pos hq]
          omega
        · have hw' : ∃ a ∈ xs, q a ∧ ¬ p a := by
            obtain ⟨a, ha, hqa, hpa⟩ := hw
            rcases List.mem_cons.mp ha with he | ha
            · subst a; exact (hq hqa).elim
            · exact ⟨a, ha, hqa, hpa⟩
          have hs := ih ht hw'
          simp only [tally, if_neg hp, if_neg hq, Nat.zero_add]
          exact hs

/-- Every acyclic relation has a rank in 1..N on the selected N vertices,
strictly decreasing along every edge whose source is one of those vertices.
No graph algorithm or finite lambda-source inventory enters this lemma. -/
theorem finite_acyclic_ranking (R : Nat → Nat → Prop) (N : Nat) (ha : ¬ Cyclic R) :
    ∃ rank : Nat → Nat,
      (∀ o, 0 < o → o ≤ N → 0 < rank o ∧ rank o ≤ N) ∧
      (∀ o p, 0 < o → o ≤ N → R o p → rank p < rank o) := by
  classical
  let vertices := List.range' 1 N
  let rank := fun o => tally (Walk R o) vertices
  have mem_vertices : ∀ o, 0 < o → o ≤ N → o ∈ vertices := by
    intro o hlo hhi
    apply List.mem_range'_1.mpr
    exact ⟨by omega, by omega⟩
  refine ⟨rank, ?_, ?_⟩
  · intro o hlo hhi
    have hm := mem_vertices o hlo hhi
    have hp : 0 < rank o := by
      have h := tally_strict (fun _ => False) (Walk R o) vertices
        (fun _ _ h => h.elim) ⟨o, hm, .nil o, fun h => h⟩
      have hz : tally (fun _ => False) vertices = 0 := by
        induction vertices with
        | nil => rfl
        | cons _ _ ih => simpa only [tally, if_neg (fun h => h), Nat.zero_add] using ih
      rw [hz] at h
      exact h
    have hu := tally_le_length (Walk R o) vertices
    simp only [vertices, List.length_range'] at hu
    exact ⟨hp, hu⟩
  · intro o p hlo hhi hop
    apply tally_strict (Walk R p) (Walk R o) vertices
    · intro v _ hpv
      exact .cons hop hpv
    · exact ⟨o, mem_vertices o hlo hhi, .nil o, fun h => ha ⟨o, p, hop, h⟩⟩

/-- Every edge is backed by a nonlinear copying contraction compatible with
a literal adjacent pair in this recorded path. All compatible redex choices
contribute to this relation. -/
def Dependency (es : List (Tree × Tree)) (o c : Nat) : Prop :=
  ∃ pre p q post, es = pre ++ (p, q) :: post ∧ Copies o c p q

theorem HasOrigin.ranged {rank : Nat → Nat} {r p : Nat} {t : Tree}
    (h : HasOrigin p t) (hp : p ≠ 0) (hr : O.Ranged rank r t) :
    0 < rank p ∧ rank p ≤ r := by
  induction t with
  | var => exact h.elim
  | lam o b ih =>
      rcases h with he | h
      · subst o; exact hr.2 hp
      · exact ih h hr.1
  | app f a ihf iha =>
      rcases h with h | h
      · exact ihf h hr.1
      · exact iha h hr.2

theorem Copies.ranged {rank : Nat → Nat} {r o c : Nat} {t u : Tree}
    (h : Copies o c t u) (hr : O.Ranged rank r t) :
    (0 < rank o ∧ rank o ≤ r) ∧ (0 < rank c ∧ rank c ≤ r) := by
  induction h with
  | root b a ho hc _ ha => exact ⟨hr.1.2 ho, HasOrigin.ranged ha hc hr.2⟩
  | appL a _ ih => exact ih hr.1
  | appR f _ ih => exact ih hr.2
  | lam q _ ih => exact ih hr.1

theorem Path.ranged_before_edge {rank : Nat → Nat} {r : Nat} {t u p q : Tree}
    {es : List (Tree × Tree)} (h : Path t es u) (hr : O.Ranged rank r t)
    (he : (p, q) ∈ es) : O.Ranged rank r p := by
  induction h with
  | nil => cases he
  | @cons t v u es hb hs ih =>
      rcases List.mem_cons.mp he with hpair | he
      · cases hpair; exact hr
      · exact ih (hb.ranged hr) he

theorem dependency_bounded (E : Term) {es : List (Tree × Tree)} {u : Tree}
    (hp : Path (O.source (marked E) (blcCode (captureProgram (probe E)))) es u)
    {o c : Nat} (hc : Dependency es o c) :
    (0 < o ∧ o ≤ origins E) ∧ (0 < c ∧ c ≤ origins E) := by
  have hr : O.Ranged id (origins E) (marked E) :=
    paint_ranged id (origins E) (fun _ => 0) 0 E (fun o hlo hhi =>
      ⟨hlo, by simpa only [id, Nat.zero_add] using hhi⟩)
  obtain ⟨pre, p, q, post, he, hcopy⟩ := hc
  have hmem : (p, q) ∈ es := by rw [he]; simp only [List.mem_append, List.mem_cons, true_or, or_true]
  exact Copies.ranged hcopy (Path.ranged_before_edge hp (O.ranged_source hr _) hmem)

/-- The same capture-rich source forces a cycle in the finite graph of copy
events compatible with every successful recorded labelled trace. -/
theorem every_decode_dependency_cycle (E : Term) {es : List (Tree × Tree)} {u : Tree}
    (hp : Path (O.source (marked E) (blcCode (captureProgram (probe E)))) es u)
    (hu : O.erase u = captureOutput (probe E)) : Cyclic (Dependency es) := by
  classical
  apply Classical.byContradiction
  intro ha
  obtain ⟨rank, hr, hdec⟩ := finite_acyclic_ranking (Dependency es) (origins E) ha
  obtain ⟨pre, p, q, post, o, c, he, _, _, hc, hle, _⟩ :=
    every_bounded_ranking_fails E rank hr es u hp hu
  have hedge : Dependency es o c := ⟨pre, p, q, post, he, hc⟩
  have hb := dependency_bounded E hp hedge
  have hlt := hdec o c hb.1.1 hb.1.2 hedge
  exact (Nat.not_lt_of_ge hle) hlt

/-- Every ordinary successful edge list has an origin-preserving lift whose
compatible source-copy graph is cyclic. The map back is the supplied list. -/
theorem every_ordinary_decode_dependency_cycle (E : Term)
    {es : List (Term × Term)}
    (h : SelfintRound5BoundCapture.Trace
      (.app (.app E (.var 0)) (streamOf (blcCode (captureProgram (probe E))) (.var 1)))
      es (captureOutput (probe E))) :
    ∃ fs u, Path (O.source (marked E) (blcCode (captureProgram (probe E)))) fs u ∧
      O.erase u = captureOutput (probe E) ∧ eraseEdges fs = es ∧ Cyclic (Dependency fs) := by
  have he : O.erase (O.source (marked E) (blcCode (captureProgram (probe E)))) =
      .app (.app E (.var 0)) (streamOf (blcCode (captureProgram (probe E))) (.var 1)) := by
    rw [O.erase_source, marked, erase_paint]
  rw [← he] at h
  obtain ⟨fs, u, hp, hu, hf⟩ := lift_recorded_trace h
  exact ⟨fs, u, hp, hu, hf, every_decode_dependency_cycle E hp hu⟩

/-- Nonvacuous compatible-copy-graph cycle requirement for every exact
self-interpreter. -/
theorem selfInterpreter_copy_cycle {E : Term} (hE : IsSelfInterpreter E) :
    ∃ es u, Path (O.source (marked E) (blcCode (captureProgram (probe E)))) es u ∧
      O.erase u = captureOutput (probe E) ∧ Cyclic (Dependency es) := by
  have hm : IsSelfInterpreter (O.erase (marked E)) := by rw [marked, erase_paint]; exact hE
  obtain ⟨es, u, hp, hu⟩ := successful_path_exists hm (probe E)
  exact ⟨es, u, hp, hu, every_decode_dependency_cycle E hp hu⟩

#print axioms finite_acyclic_ranking
#print axioms every_decode_dependency_cycle
#print axioms every_ordinary_decode_dependency_cycle
#print axioms selfInterpreter_copy_cycle
end Blc.SelfintRound5BoundGraph
