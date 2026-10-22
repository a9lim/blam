import Blc.SelfintReader30
namespace Blc.BN46Pilot
open Term SelfintClass SelfintClassNext SelfintReader30 SelfintReader30Accounting
  SelfintLowerBound SelfintFloor
set_option maxHeartbeats 4000000
set_option maxRecDepth 10000

theorem two_le (t : Term) (d : Nat) (hd : 1 ≤ d) : 2 ≤ weightAt d t := by
  cases t <;> simp only [weightAt]
  · split <;> omega
  all_goals omega

/-- Literal exact-weight enumeration; includes redexes and all hole depths. -/
def terms (b d : Nat) : List Term :=
  if hb : b < 2 then [] else
    ((List.range (d+2)).filterMap (fun i =>
      if weightAt d (.var i) = b then some (.var i) else none)) ++
    (terms (b-2) (d+1)).map .lam ++
    (List.finRange b).flatMap (fun p =>
      (terms p.val d).flatMap (fun f =>
        (terms (b-2-p.val) d).map (fun a => .app f a)))
termination_by b
decreasing_by all_goals omega

theorem terms_complete (t : Term) (d : Nat) (hd : 1 ≤ d)
    (hs : FreeUnder (d+2) t) : t ∈ terms (weightAt d t) d := by
  induction t generalizing d with
  | var i =>
    rw [terms, dif_neg (by have := two_le (.var i) d hd; omega)]
    apply List.mem_append_left
    apply List.mem_append_left
    apply List.mem_filterMap.mpr
    exact ⟨i, List.mem_range.mpr hs, by simp⟩
  | lam b ih =>
    rw [terms, dif_neg (by simp only [weightAt]; omega)]
    apply List.mem_append_left
    apply List.mem_append_right
    apply List.mem_map.mpr
    refine ⟨b, ?_, rfl⟩
    simpa only [weightAt, Nat.add_sub_cancel_left] using
      ih (d+1) (by omega) hs
  | app f a ihf iha =>
    have hf := two_le f d hd
    have ha := two_le a d hd
    rw [terms, dif_neg (by simp only [weightAt]; omega)]
    apply List.mem_append_right
    apply List.mem_flatMap.mpr
    let p : Fin (weightAt d (.app f a)) := ⟨weightAt d f, by simp only [weightAt]; omega⟩
    refine ⟨p, by simp, ?_⟩
    apply List.mem_flatMap.mpr
    refine ⟨f, ihf d hd hs.1, ?_⟩
    apply List.mem_map.mpr
    refine ⟨a, ?_, rfl⟩
    have he : weightAt d (.app f a) - 2 - p.val = weightAt d a := by
      simp only [weightAt, p]; omega
    rw [he]
    exact iha d hd hs.2

def argsWeight (d : Nat) : List Term → Nat
  | [] => 0
  | t::ts => weightAt d t + argsWeight d ts

theorem args_floor (ts : List Term) (d : Nat) (hd : 1 ≤ d) :
    2 * ts.length ≤ argsWeight d ts := by
  induction ts with
  | nil => simp [argsWeight]
  | cons t ts ih =>
    have := two_le t d hd
    simp only [argsWeight, List.length_cons]
    omega

def forests : Nat → Nat → List (List Term)
  | 0, b => if b = 0 then [[]] else []
  | k+1, b =>
    if b < 2*(k+1) then [] else
    (List.range (b-2*k+1)).flatMap (fun p =>
      (terms p 1).flatMap (fun t =>
        (forests k (b-p)).map (fun ts => t::ts)))

theorem forests_complete (ts : List Term)
    (hs : ∀ t ∈ ts, FreeUnder 3 t) :
    ts ∈ forests ts.length (argsWeight 1 ts) := by
  induction ts with
  | nil => simp [forests, argsWeight]
  | cons t ts ih =>
    have hf := args_floor (t::ts) 1 (by decide)
    have ht := args_floor ts 1 (by decide)
    simp only [forests, List.length_cons] at *
    rw [if_neg (by omega)]
    apply List.mem_flatMap.mpr
    refine ⟨weightAt 1 t, List.mem_range.mpr ?_, ?_⟩
    · simp only [argsWeight]; omega
    · apply List.mem_flatMap.mpr
      refine ⟨t, terms_complete t 1 (by decide) (hs t (by simp)), ?_⟩
      apply List.mem_map.mpr
      refine ⟨ts, ?_, rfl⟩
      simp only [argsWeight, Nat.add_sub_cancel_left]
      exact ih (fun t ht => hs t (by simp [ht]))

def source (ts : List Term) : Term := .lam (spine (.var 0) ts)

theorem spine_price (t : Term) (ts : List Term) (d : Nat) :
    weightAt d (spine t ts) = weightAt d t + 2 * ts.length + argsWeight d ts := by
  induction ts generalizing t with
  | nil => simp [spine, argsWeight]
  | cons a ts ih => simp only [spine, ih, weightAt, argsWeight, List.length_cons]; omega

theorem source_price (ts : List Term) :
    weight (source ts) = 4 + 2 * ts.length + argsWeight 1 ts := by
  rw [← weightAt_zero]
  simp only [source, weightAt, spine_price, Nat.reduceAdd, Nat.reduceEqDiff, ↓reduceIte]
  omega

theorem args_scope (t : Term) (ts : List Term) (d : Nat)
    (hs : FreeUnder d (spine t ts)) : ∀ a ∈ ts, FreeUnder d a := by
  induction ts generalizing t with
  | nil => simp
  | cons a ts ih =>
    intro x hx
    have ha : FreeUnder d a := (spine_scope (.app t a) ts d hs).2
    rcases List.mem_cons.mp hx with he | hmem
    · exact he ▸ ha
    · exact ih (.app t a) hs x hmem

/-- Only 18..23 are possible, but including smaller budgets simplifies coverage. -/
def sources9 : List Term :=
  (List.range 24).flatMap (fun b => (forests 9 b).map source)

theorem sources9_complete (ts : List Term) (hk : ts.length = 9)
    (hs : FreeUnder 2 (source ts)) (hw : weight (source ts) ≤ 45) :
    source ts ∈ sources9 := by
  have hp := source_price ts
  have hb : argsWeight 1 ts < 24 := by omega
  apply List.mem_flatMap.mpr
  refine ⟨argsWeight 1 ts, List.mem_range.mpr hb, ?_⟩
  apply List.mem_map.mpr
  refine ⟨ts, ?_, rfl⟩
  rw [← hk]
  exact forests_complete ts (args_scope (.var 0) ts 3 hs)

/-- Fuel exhaustion returns none and never refutes a source. -/
def reduce : Nat → Term → Option Term
  | 0, _ => none
  | n+1, t => match normalStep t with
    | none => some t
    | some u => reduce n u

theorem reduce_sound {n : Nat} {t u : Term} (h : reduce n t = some u) : Betas t u := by
  induction n generalizing t with
  | zero => simp [reduce] at h
  | succ n ih =>
    simp only [reduce] at h
    cases he : normalStep t with
    | none => simp only [he, Option.some.injEq] at h; subst u; exact .refl _
    | some v => rw [he] at h; exact .head (normalStep_sound he) (ih h)

def rejects (R : Term) : Bool :=
  match reduce 64 (.app R Z) with
  | none => false
  | some u => decide (NFt u) && decide (u ≠ zeroOut)

theorem rejects_sound {R : Term} (h : rejects R = true) : ¬ Reader R := by
  unfold rejects at h
  split at h
  · contradiction
  · rename_i u he
    simp only [Bool.and_eq_true, decide_eq_true_eq] at h
    intro hr
    exact h.2 (normalForm_unique (reduce_sound he) hr.zero_red
      (nft_normal h.1) zeroOut_normal)


def rejectsForest (ts : List Term) : Bool := rejects (source ts)
theorem row22_count : (forests 9 22).length = 873 := by decide +kernel
theorem row22_rejected : (forests 9 22).all rejectsForest = true := by decide +kernel
/-- Complete weight-44 arity-nine subchunk; arbitrary operands. -/
theorem arity9_weight44_impossible (ts : List Term) (hk : ts.length = 9)
    (hr : Reader (source ts)) (hw : weight (source ts) = 44) : False := by
  have hp := source_price ts
  have he : argsWeight 1 ts = 22 := by omega
  have hm := forests_complete ts (args_scope (.var 0) ts 3 hr.scope)
  rw [hk, he] at hm
  exact rejects_sound (List.all_eq_true.mp row22_rejected _ hm) hr
#print axioms arity9_weight44_impossible
end Blc.BN46Pilot
