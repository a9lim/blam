/- Round 4 widen lane. New files only; no changes to the imported theory. -/
import Blc.SelfintClass

/- The following namespace is copied unchanged (apart from its import) from
   reasoning_162/floor/ReaderHoist.lean, the round-3 hoisting proof. -/
/- General NEXT-hole hoisting and its exact capture-weight balance.
   Source variables are c=0 and j=1. This file does not prove the reader floor. -/

namespace Blc.Round3Reader
open Term
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000

def weight (d : Nat) : Term → Nat
  | .var n => if n = d+1 then 4*d else n+2
  | .lam b => 2 + weight (d+1) b
  | .app f a => 2 + weight d f + weight d a

def holes (d : Nat) : Term → Nat
  | .var n => if n = d+1 then 1 else 0
  | .lam b => holes (d+1) b
  | .app f a => holes d f + holes d a

def cs (d : Nat) : Term → Nat
  | .var n => if n = d then 1 else 0
  | .lam b => cs (d+1) b
  | .app f a => cs d f + cs d a

def depths (d : Nat) : Term → Nat
  | .var n => if n = d+1 then d else 0
  | .lam b => depths (d+1) b
  | .app f a => depths d f + depths d a

/-- Insert one outer binder: c shifts and the old free j becomes that binder. -/
def bindHole (d : Nat) : Term → Term
  | .var n => if n < d then .var n else if n = d then .var (d+1) else .var d
  | .lam b => .lam (bindHole (d+1) b)
  | .app f a => .app (bindHole d f) (bindHole d a)

def hoist (t : Term) : Term := .app (.lam (bindHole 0 t)) (.var 1)

theorem bindHole_contract (t : Term) (d : Nat) (hs : FreeUnder (d+2) t) :
    substDec d (.var (d+1)) (bindHole d t) = t := by
  induction t generalizing d with
  | var n =>
      change n < d+2 at hs
      by_cases hlt : n < d
      · simp [bindHole, hlt, substDec, show n ≠ d by omega, show ¬ n > d by omega]
      · by_cases he : n = d
        · subst n; simp [bindHole, substDec]
        · have hn : n = d+1 := by omega
          subst n; simp [bindHole, hlt, substDec]
  | lam b ih =>
      have hb : FreeUnder ((d+1)+2) b := by simpa [FreeUnder, Nat.add_assoc] using hs
      simp only [bindHole, substDec, shift]
      simp only [Nat.zero_le, if_true]
      exact congrArg Term.lam (ih (d+1) hb)
  | app f a ihf iha =>
      change FreeUnder (d+2) f ∧ FreeUnder (d+2) a at hs
      simp only [bindHole, substDec]
      rw [ihf d hs.1, iha d hs.2]

theorem hoist_beta (t : Term) (hs : FreeUnder 2 t) : Beta (hoist t) t := by
  have hh := Beta.beta (bindHole 0 t) (.var 1)
  simpa [hoist, contract, bindHole_contract t 0 hs] using hh

theorem bindHole_no_holes (t : Term) (d : Nat) (hs : FreeUnder (d+2) t) :
    holes (d+1) (bindHole d t) = 0 := by
  induction t generalizing d with
  | var n =>
      change n < d+2 at hs
      by_cases hlt : n < d
      · simp [bindHole, hlt, holes, show n ≠ d+1+1 by omega]
      · by_cases he : n = d
        · subst n; simp [bindHole, holes]
        · simp [bindHole, hlt, he, holes, show d ≠ d+1+1 by omega]
  | lam b ih =>
      have hb : FreeUnder ((d+1)+2) b := by simpa [FreeUnder, Nat.add_assoc] using hs
      exact ih (d+1) hb
  | app f a ihf iha =>
      change FreeUnder (d+2) f ∧ FreeUnder (d+2) a at hs
      simp [bindHole, holes, ihf d hs.1, iha d hs.2]

theorem hoist_one_hole (t : Term) (hs : FreeUnder 2 t) : holes 0 (hoist t) = 1 := by
  simp [hoist, holes, bindHole_no_holes t 0 hs]

theorem bindHole_weight (t : Term) (d : Nat) (hs : FreeUnder (d+2) t) :
    weight (d+1) (bindHole d t) + 3 * depths d t =
      weight d t + cs d t + 2 * holes d t := by
  induction t generalizing d with
  | var n =>
      change n < d+2 at hs
      by_cases hlt : n < d
      · simp [bindHole, hlt, weight, depths, cs, holes,
          show n ≠ d by omega, show n ≠ d+1 by omega, show n ≠ d+1+1 by omega]
      · by_cases he : n = d
        · subst n; simp [bindHole, hlt, weight, depths, cs, holes]
        · have hn : n = d+1 := by omega
          subst n; simp [bindHole, hlt, weight, depths, cs, holes, show d ≠ d+1+1 by omega] <;> omega
  | lam b ih =>
      have hb : FreeUnder ((d+1)+2) b := by simpa [FreeUnder, Nat.add_assoc] using hs
      have hi := ih (d+1) hb
      simp only [bindHole, weight, depths, cs, holes]
      omega
  | app f a ihf iha =>
      change FreeUnder (d+2) f ∧ FreeUnder (d+2) a at hs
      have hf := ihf d hs.1
      have ha := iha d hs.2
      simp only [bindHole, weight, depths, cs, holes]
      omega

theorem hoist_weight (t : Term) (hs : FreeUnder 2 t) (hj : holes 0 t = 1) :
    weight 0 (hoist t) + 3 * depths 0 t = weight 0 t + 6 + cs 0 t := by
  have hh := bindHole_weight t 0 hs
  rw [hj] at hh
  change weight 1 (bindHole 0 t) + 3 * depths 0 t = weight 0 t + cs 0 t + 2 at hh
  change 2 + (2 + weight 1 (bindHole 0 t)) + 0 + 3 * depths 0 t = _
  omega

end Blc.Round3Reader

namespace Blc.SelfintWiden
open Term SelfintLowerBound SelfintNonlinearChain SelfintWireCost SelfintFloor
  SelfintClass SelfintClassNext
set_option maxRecDepth 8000
set_option maxHeartbeats 2000000

/-- The canonical rigid branch laws, with all source-shape restrictions removed.
    In particular, normality and the position/arity of tag uses are unrestricted.
    The stream parameter is still absent from Q's source frame. -/
structure RigidNext (Q : Term) : Prop where
  scope : FreeUnder 2 Q
  law : ∀ first, BetaJoin (.app (.app Q (tagValue first)) (.var 2))
      (.app (nextTarget first) (.var 2))

theorem rigid_of_next {Q : Term} (h : Next Q) : RigidNext Q := ⟨h.scope, h.law⟩

theorem RigidNext.red {Q : Term} (h : RigidNext Q) (first : Bool) :
    Betas (.app (.app Q (tagValue first)) (.var 2))
      (.app (nextTarget first) (.var 2)) :=
  join_normal (h.law first) (nft_normal
    ⟨nextTarget_nonlam first, nextTarget_normal first, trivial⟩)

theorem RigidNext.of_betas {Q Q' : Term} (hq : FreeUnder 2 Q)
    (hr : Betas Q Q') (h : RigidNext Q') : RigidNext Q := by
  refine ⟨hq, fun first => ⟨_, ?_, .refl _⟩⟩
  exact betas_trans (betas_appL (.var 2) (betas_appL (tagValue first) hr)) (h.red first)

theorem RigidNext.beta {Q Q' : Term} (h : RigidNext Q) (hr : Beta Q Q') :
    RigidNext Q' := by
  refine ⟨beta_freeUnder hr 2 h.scope, fun first => ⟨_, ?_, .refl _⟩⟩
  exact betas_preserve_nf
    (.head (.appL (.var 2) (.appL (tagValue first) hr)) (.refl _))
    (h.red first) (nft_normal
      ⟨nextTarget_nonlam first, nextTarget_normal first, trivial⟩)

/-- Let-bind both ambient parameters; the body remains the literal canonical
    NEXT, with local frame [c,p]. Only two free source leaves remain. -/
def letBoth : Term := .app (.app (.lam (.lam canonicalNext)) (.var 1)) (.var 0)

theorem letBoth_reduces : Betas letBoth canonicalNext :=
  normalSteps_sound (by decide : normalSteps 2 letBoth = some canonicalNext)

theorem letBoth_laws : RigidNext letBoth :=
  RigidNext.of_betas (by decide) letBoth_reduces (rigid_of_next canonicalNext_is_Next)

theorem letBoth_price : wire letBoth = 105 ∧ freeLeaves 0 letBoth = 2 := by decide

/-- A beta-normal counterexample to the capture claim, with a four-argument
    tag spine: lambda b. b (lambda p c. T0) (lambda p c. T1) p c. -/
def tagFour : Term := .lam
  (.app (.app (.app (.app (.var 0) (.lam (.lam nextZero)))
    (.lam (.lam nextOne))) (.var 2)) (.var 1))


def stepsToNF : Nat → Term → Nat × Term
  | 0, t => (0, t)
  | n + 1, t => match normalStep t with
    | none => (0, t)
    | some u => let r := stepsToNF n u; (r.1 + 1, r.2)


theorem tagFour_normal : NormalForm tagFour := nft_normal (by decide)

theorem tagFour_laws : RigidNext tagFour := by
  refine ⟨by decide, ?_⟩
  intro first
  cases first
  · exact ⟨_, normalSteps_sound (by decide : normalSteps 5
      (.app (.app tagFour churchFalse) (.var 2)) = some (.app nextOne (.var 2))), .refl _⟩
  · exact ⟨_, normalSteps_sound (by decide : normalSteps 5
      (.app (.app tagFour churchTrue) (.var 2)) = some (.app nextZero (.var 2))), .refl _⟩

theorem tagFour_price : wire tagFour = 113 ∧ freeLeaves 0 tagFour = 2 := by decide

theorem four_captures_false : ¬ (∀ Q, RigidNext Q → 4 ≤ freeLeaves 0 Q) := by
  intro h
  have := h letBoth letBoth_laws
  have := letBoth_price.2
  omega

theorem normal_four_captures_false :
    ¬ (∀ Q, RigidNext Q → NormalForm Q → 4 ≤ freeLeaves 0 Q) := by
  intro h
  have := h tagFour tagFour_laws tagFour_normal
  have := tagFour_price.2
  omega

/-- These are the sharp unconditional free-occurrence requirements; the
    supplied Church bits and rigid tail contain neither parameter. -/
theorem rigidNext_parameters {Q : Term} (h : RigidNext Q) :
    1 ≤ occ 0 Q ∧ 1 ≤ occ 1 Q := by
  constructor
  · by_cases hz : occ 0 Q = 0
    · have hs : occ 0 (.app (.app Q (tagValue true)) (.var 2)) = 0 := by
        simp [occ, tagValue, churchTrue, hz]
      have ho := SelfintKnot.occ_betas_zero (h.red true) 0 hs
      have ht : occ 0 (.app (nextTarget true) (.var 2)) = 1 := by decide
      omega
    · omega
  · by_cases hz : occ 1 Q = 0
    · have hs : occ 1 (.app (.app Q (tagValue true)) (.var 2)) = 0 := by
        simp [occ, tagValue, churchTrue, hz]
      have ho := SelfintKnot.occ_betas_zero (h.red true) 1 hs
      have ht : occ 1 (.app (nextTarget true) (.var 2)) = 1 := by decide
      omega
    · omega


theorem rigidNext_two_captures {Q : Term} (h : RigidNext Q) :
    2 ≤ freeLeaves 0 Q := by
  have hp := rigidNext_parameters h
  have h0 := freeLeaves_split Q 0
  have h1 := freeLeaves_split Q 1
  simp only [Nat.reduceAdd] at h0 h1
  omega

/-- The APP target duplicates its environment; affine input cannot introduce
    a nonlinear binder, so Q itself must contain one, even with arbitrary redexes. -/
theorem rigidNext_nonlinear {Q : Term} (h : RigidNext Q) : 1 ≤ nonlinear Q := by
  by_cases hz : nonlinear Q = 0
  · have hs : nonlinear (.app (.app Q (tagValue false)) (.var 2)) = 0 := by
      simp [nonlinear, tagValue, churchFalse, occ, hz]
    have ho := (affine_betas_occ (h.red false) hs).1
    have ht : nonlinear (.app (nextTarget false) (.var 2)) = 1 := by decide
    omega
  · omega

/-- Exact source price with the canonical opaque knot, valid without H2. -/
theorem canonical_knot_exact {R Q : Term} (hR : FreeUnder 2 R)
    (hj : occ 1 R = 1) (hQ : FreeUnder 2 Q) :
    wire (assemble SelfintKnot.knot R Q) =
      24 + cost R + wire Q + freeLeaves 0 Q * depth R := by
  have he := knot_fill_wire SelfintKnot.knot_scope (functional_closed hR hQ)
  have hh := functional_wire (Q := Q) hR hj
  simp only [SelfintKnot.knot_cost, SelfintKnot.knot_one_hole, Nat.one_mul] at he
  change wire (substDec 0 (functional R Q) SelfintKnot.knot) = _
  omega

theorem arbitrary_assembly_lower {T R Q : Term}
    (hT : FreeUnder 1 T) (hfix : BetaJoin T (.app (.var 0) T))
    (hR : FreeUnder 2 R) (hj : occ 1 R = 1) (hQ : FreeUnder 2 Q) :
    24 + cost R + wire Q + freeLeaves 0 Q * depth R ≤ wire (assemble T R Q) := by
  have he := knot_fill_wire hT (functional_closed hR hQ)
  have hg := SelfintKnot.opaque_knot_twenty hfix
  have hk := SelfintKnot.fixedpoint_has_hole hfix
  have hm := Nat.mul_le_mul_right (wire (functional R Q)) hk
  have hh := functional_wire (Q := Q) hR hj
  simp only [Nat.one_mul] at hm
  change _ ≤ wire (substDec 0 (functional R Q) T)
  omega

/-- A dummy-redex wrapper used only to place the unique source hole deeply.
    It has no semantic effect and introduces no additional parameter occurrence. -/
def pad : Nat → Term → Term
  | 0, t => t
  | n + 1, t => .app (.lam (shift 1 0 (pad n t))) (.lam (.var 0))

def deepReader (n : Nat) : Term := match reader162 with
  | .lam (.app f a) => .lam (.app f (pad n a))
  | t => t

theorem deepReader_six_reduces : Betas (deepReader 6) reader162 :=
  normalSteps_sound (by decide : normalSteps 6 (deepReader 6) = some reader162)

theorem deepReader_six_laws : Reader (deepReader 6) := by
  refine ⟨by decide, ⟨_, ?_, .refl _⟩, ⟨_, ?_, .refl _⟩⟩
  · exact betas_trans (betas_appL Z deepReader_six_reduces) reader162_laws.zero_red
  · exact betas_trans (betas_appL S deepReader_six_reduces) reader162_laws.one_red

theorem deepReader_six_price : cost (deepReader 6) = 90 ∧ depth (deepReader 6) = 7 ∧
    occ 1 (deepReader 6) = 1 := by decide

/-- The requested same-reader inequality is false with arbitrary NEXT source.
    This is a source-count counterexample, not a sub-162 interpreter. -/
theorem same_reader_price_counterexample :
    RigidNext letBoth ∧ Reader (deepReader 6) ∧ occ 1 (deepReader 6) = 1 ∧
    wire (assemble SelfintKnot.knot (deepReader 6) letBoth) = 233 ∧
    116 + cost (deepReader 6) + 4 * depth (deepReader 6) = 234 := by
  exact ⟨letBoth_laws, deepReader_six_laws, by decide, by decide, by decide⟩

/-! Hoisting comparison. The round-3 definitions are connected to the
    authoritative class cost/depth, with all scope and Reader obligations proved. -/

theorem holes_occ (t : Term) (d : Nat) : Round3Reader.holes d t = occ (d + 1) t := by
  induction t generalizing d with
  | var n => rfl
  | lam b ih => exact ih (d + 1)
  | app f a ihf iha => simp only [Round3Reader.holes, occ, ihf, iha]

theorem cs_occ (t : Term) (d : Nat) : Round3Reader.cs d t = occ d t := by
  induction t generalizing d with
  | var n => rfl
  | lam b ih => exact ih (d + 1)
  | app f a ihf iha => simp only [Round3Reader.cs, occ, ihf, iha]

theorem depths_occDepth (t : Term) (d : Nat) :
    Round3Reader.depths d t = occDepth (d + 1) t + d * occ (d + 1) t := by
  induction t generalizing d with
  | var n => simp only [Round3Reader.depths, occDepth, occ]; split <;> omega
  | lam b ih =>
    have h := ih (d + 1)
    simp only [Round3Reader.depths, occDepth, occ, Nat.add_mul, Nat.one_mul] at h ⊢
    omega
  | app f a ihf iha =>
    have := ihf d; have := iha d
    simp only [Round3Reader.depths, occDepth, occ, Nat.mul_add]
    omega

theorem weight_cost (t : Term) (d : Nat) :
    Round3Reader.weight d t = holeCost (d + 1) t + 4 * Round3Reader.depths d t := by
  induction t generalizing d with
  | var n => simp only [Round3Reader.weight, holeCost, Round3Reader.depths]; split <;> omega
  | lam b ih =>
    have := ih (d + 1)
    simp only [Round3Reader.weight, holeCost, Round3Reader.depths]
    omega
  | app f a ihf iha =>
    have := ihf d; have := iha d
    simp only [Round3Reader.weight, holeCost, Round3Reader.depths, Nat.mul_add]
    omega

theorem bindHole_scope (t : Term) (d : Nat) :
    FreeUnder (d + 2) (Round3Reader.bindHole d t) := by
  induction t generalizing d with
  | var n =>
    simp only [Round3Reader.bindHole]
    repeat' first | split | simp_all [FreeUnder] | omega
  | lam b ih => exact ih (d + 1)
  | app f a ihf iha => exact ⟨ihf d, iha d⟩

theorem hoist_scope (R : Term) : FreeUnder 2 (Round3Reader.hoist R) := by
  refine ⟨?_, by decide⟩
  change FreeUnder 3 (Round3Reader.bindHole 0 R)
  exact freeUnder_mono (by omega : 2 ≤ 3) (bindHole_scope R 0)

theorem hoist_depth (R : Term) : depth (Round3Reader.hoist R) = 0 := by
  have ho := occ_of_freeUnder (Round3Reader.bindHole 0 R) 2 2 (bindHole_scope R 0) (by omega)
  have hd := occDepth_zero ho
  simp only [Round3Reader.hoist, depth, occDepth, Nat.reduceAdd, hd, ho]

theorem hoist_hole {R : Term} (hR : FreeUnder 2 R) :
    occ 1 (Round3Reader.hoist R) = 1 := by
  simpa only [holes_occ, Nat.zero_add] using Round3Reader.hoist_one_hole R hR

theorem hoist_reader {R : Term} (hR : Reader R) : Reader (Round3Reader.hoist R) := by
  have hr : Betas (Round3Reader.hoist R) R := .head (Round3Reader.hoist_beta R hR.scope) (.refl _)
  refine ⟨hoist_scope R, ⟨_, ?_, .refl _⟩, ⟨_, ?_, .refl _⟩⟩
  · exact betas_trans (betas_appL Z hr) hR.zero_red
  · exact betas_trans (betas_appL S hr) hR.one_red

theorem hoist_cost {R : Term} (hR : FreeUnder 2 R) (hj : occ 1 R = 1) :
    cost (Round3Reader.hoist R) = cost R + depth R + 6 + occ 0 R := by
  have hh := Round3Reader.hoist_weight R hR (by simpa only [holes_occ, Nat.zero_add] using hj)
  simp only [weight_cost, depths_occDepth, cs_occ, Nat.zero_add, Nat.zero_mul,
    Nat.add_zero] at hh
  have hd := hoist_depth R
  change occDepth 1 (Round3Reader.hoist R) = 0 at hd
  change holeCost 1 (Round3Reader.hoist R) = holeCost 1 R + occDepth 1 R + 6 + occ 0 R
  omega

/-- Each additional rigid continuation leaf costs at least four bits in
    the reader's source, besides two nonlinear leaves and two lambdas. -/
theorem reader_c_charge {R : Term} (hR : Reader R) (hj : occ 1 R = 1) :
    12 + 4 * occ 0 R ≤ cost R := by
  have hn := reader_nonlinear hR
  have hl := reader_two_lambdas hR
  have hli := nonlinear_le_live R
  have hv := leaves_bound R
  have hs0 := freeLeaves_split R 0
  have hs1 := freeLeaves_split R 1
  have hp := holeCost_identity R 1
  simp only [Nat.reduceAdd] at hs0 hs1
  change 12 + 4 * occ 0 R ≤ holeCost 1 R
  omega

/-- Arbitrarily many parameter occurrences may be shared through two local
    lets. The bound on the inner normal/two-arm NEXT is retained. -/
def shareParameters (Q : Term) : Term := .app (.app (.lam (.lam Q)) (.var 1)) (.var 0)

theorem shareParameters_scope {Q : Term} (hQ : FreeUnder 2 Q) :
    FreeUnder 2 (shareParameters Q) := by
  refine ⟨⟨?_, by decide⟩, by decide⟩
  change FreeUnder 4 Q
  exact freeUnder_mono (by omega : 2 ≤ 4) hQ

theorem shareParameters_price {Q : Term} (hQ : FreeUnder 2 Q) :
    wire (shareParameters Q) = wire Q + 13 ∧ freeLeaves 0 (shareParameters Q) = 2 := by
  have hz := freeLeaves_closed Q 2 hQ
  simp [shareParameters, wire_app, wire_lam, wire_var, freeLeaves, hz, Nat.add_assoc]

/-- Below 162, complete c/p sharing cannot beat the old class: hoist the
    reader hole, then use canonical NEXT. This is an existential class
    domination theorem, not the false same-reader price inequality. -/
theorem shared_next_dominated_below_162 {T R Q : Term}
    (hT : FreeUnder 1 T) (hfix : BetaJoin T (.app (.var 0) T))
    (hR : Reader R) (hj : occ 1 R = 1) (hQ : Next Q)
    (hsmall : wire (assemble T R (shareParameters Q)) < 162) :
    Reader (Round3Reader.hoist R) ∧ occ 1 (Round3Reader.hoist R) = 1 ∧
    wire (assemble SelfintKnot.knot (Round3Reader.hoist R) canonicalNext) <
      wire (assemble T R (shareParameters Q)) := by
  refine ⟨hoist_reader hR, hoist_hole hR.scope, ?_⟩
  have hp := shareParameters_price hQ.scope
  have hb := arbitrary_assembly_lower hT hfix hR.scope hj (shareParameters_scope hQ.scope)
  have hq := (next_price hQ).bits
  have hf := reader_c_charge hR hj
  have hc := hoist_cost hR.scope hj
  have he := canonical_assembly_exact (hoist_scope R) (hoist_hole hR.scope)
    canonicalNext_scope canonicalNext_bits canonicalNext_captures
  rw [hp.1, hp.2] at hb
  rw [hoist_depth, hc] at he
  omega

/-- Two-probe version of the conditional optimality consequence. The final
    all-unary version below uses FullReader and the original reader conjecture. -/
theorem shared_next_162_of_two_probe_floor
    (hfloor : ∀ R, Reader R → occ 1 R = 1 → 46 ≤ cost R + 4 * depth R)
    {T R Q : Term} (hT : FreeUnder 1 T) (hfix : BetaJoin T (.app (.var 0) T))
    (hR : Reader R) (hj : occ 1 R = 1) (hQ : Next Q) :
    162 ≤ wire (assemble T R (shareParameters Q)) := by
  by_cases hsmall : wire (assemble T R (shareParameters Q)) < 162
  · obtain ⟨hr, hhole, hless⟩ := shared_next_dominated_below_162 hT hfix hR hj hQ hsmall
    have hf := hfloor _ hr hhole
    have he := canonical_assembly_exact (hoist_scope R) hhole
      canonicalNext_scope canonicalNext_bits canonicalNext_captures
    omega
  · omega

/-! A finite price frontier, obtained without enumerating NEXT syntax. -/

theorem unique_occ_depth_le_lambdas (t : Term) (j : Nat) (ho : occ j t = 1) :
    occDepth j t ≤ lamCount t := by
  induction t generalizing j with
  | var n => simp [occDepth, lamCount]
  | lam b ih =>
    have hb := ih (j + 1) ho
    simp only [occDepth, lamCount, occ] at ho ⊢
    omega
  | app f a ihf iha =>
    have hsum : occ j f + occ j a = 1 := ho
    by_cases hf : occ j f = 0
    · have ha : occ j a = 1 := by omega
      have hd := iha j ha
      have hz := occDepth_zero hf
      simp only [occDepth, lamCount, hz]
      omega
    · have hf1 : occ j f = 1 := by omega
      have ha : occ j a = 0 := by omega
      have hd := ihf j hf1
      have hz := occDepth_zero ha
      simp only [occDepth, lamCount, hz]
      omega

theorem reader_c_depth_charge {R : Term} (hR : Reader R) (hj : occ 1 R = 1) :
    8 + 2 * depth R + 4 * occ 0 R ≤ cost R := by
  have hn := reader_nonlinear hR
  have hli := nonlinear_le_live R
  have hv := leaves_bound R
  have hs0 := freeLeaves_split R 0
  have hs1 := freeLeaves_split R 1
  have hp := holeCost_identity R 1
  have hd := unique_occ_depth_le_lambdas R 1 hj
  simp only [Nat.reduceAdd] at hs0 hs1
  change 8 + 2 * occDepth 1 R + 4 * occ 0 R ≤ holeCost 1 R
  omega

/-- The sufficient source-price frontier has only two scalar obligations:
    q >= 92 and q + 3 F >= 104. It allows F=2 or F=3. -/
structure FrontierPrice (Q : Term) : Prop where
  bits : 92 ≤ wire Q
  depth_three : 104 ≤ wire Q + 3 * freeLeaves 0 Q

theorem next_frontier {Q : Term} (hQ : Next Q) : FrontierPrice Q := by
  have hp := next_price hQ
  have hq := hp.bits
  have hf := hp.captures
  constructor <;> omega

/-- Every sub-162 source above the frontier is dominated by an old-class
    source with either the same reader or its single hole hoisted. This is
    why a two-capture NEXT need not obey the false four-capture inequality. -/
theorem frontier_dominated_below_162 {T R Q : Term}
    (hT : FreeUnder 1 T) (hfix : BetaJoin T (.app (.var 0) T))
    (hR : Reader R) (hj : occ 1 R = 1) (hQ : RigidNext Q) (hp : FrontierPrice Q)
    (hsmall : wire (assemble T R Q) < 162) :
    wire (assemble SelfintKnot.knot R canonicalNext) ≤ wire (assemble T R Q) ∨
    wire (assemble SelfintKnot.knot (Round3Reader.hoist R) canonicalNext) ≤
      wire (assemble T R Q) := by
  have ha := arbitrary_assembly_lower hT hfix hR.scope hj hQ.scope
  have hc := reader_c_depth_charge hR hj
  have hs := canonical_assembly_exact hR.scope hj canonicalNext_scope
    canonicalNext_bits canonicalNext_captures
  have hh := canonical_assembly_exact (hoist_scope R) (hoist_hole hR.scope)
    canonicalNext_scope canonicalNext_bits canonicalNext_captures
  rw [hoist_cost hR.scope hj, hoist_depth] at hh
  have hf := rigidNext_two_captures hQ
  have hq := hp.bits
  have hq3 := hp.depth_three
  by_cases hsame : wire (assemble SelfintKnot.knot R canonicalNext) ≤ wire (assemble T R Q)
  · exact Or.inl hsame
  · right
    by_cases hhoist : wire (assemble SelfintKnot.knot (Round3Reader.hoist R) canonicalNext) ≤
        wire (assemble T R Q)
    · exact hhoist
    · by_cases hfour : 4 ≤ freeLeaves 0 Q
      · have hm := Nat.mul_le_mul_right (depth R) hfour
        omega
      · have hcases : freeLeaves 0 Q = 2 ∨ freeLeaves 0 Q = 3 := by omega
        rcases hcases with htwo | hthree
        · rw [htwo] at ha hq3
          omega
        · rw [hthree] at ha hq3
          omega

theorem frontier_162_of_two_probe_floor
    (hfloor : ∀ R, Reader R → occ 1 R = 1 → 46 ≤ cost R + 4 * depth R)
    {T R Q : Term} (hT : FreeUnder 1 T) (hfix : BetaJoin T (.app (.var 0) T))
    (hR : Reader R) (hj : occ 1 R = 1) (hQ : RigidNext Q) (hp : FrontierPrice Q) :
    162 ≤ wire (assemble T R Q) := by
  by_cases hsmall : wire (assemble T R Q) < 162
  · have hs := canonical_assembly_exact hR.scope hj canonicalNext_scope
      canonicalNext_bits canonicalNext_captures
    have hh := canonical_assembly_exact (hoist_scope R) (hoist_hole hR.scope)
      canonicalNext_scope canonicalNext_bits canonicalNext_captures
    have hfs := hfloor _ hR hj
    have hfh := hfloor _ (hoist_reader hR) (hoist_hole hR.scope)
    rcases frontier_dominated_below_162 hT hfix hR hj hQ hp hsmall with hsame | hhoist
    · omega
    · omega
  · omega

/-- Unconditional comparison of minima, using the known 162 when the
    proposed source is already at least that large. -/
theorem frontier_dominated {T R Q : Term}
    (hT : FreeUnder 1 T) (hfix : BetaJoin T (.app (.var 0) T))
    (hR : Reader R) (hj : occ 1 R = 1) (hQ : RigidNext Q) (hp : FrontierPrice Q) :
    ∃ R', Reader R' ∧ occ 1 R' = 1 ∧
      wire (assemble SelfintKnot.knot R' canonicalNext) ≤ wire (assemble T R Q) := by
  by_cases hsmall : wire (assemble T R Q) < 162
  · rcases frontier_dominated_below_162 hT hfix hR hj hQ hp hsmall with hs | hh
    · exact ⟨R, hR, hj, hs⟩
    · exact ⟨Round3Reader.hoist R, hoist_reader hR, hoist_hole hR.scope, hh⟩
  · refine ⟨reader162, reader162_laws, by decide, ?_⟩
    have href : wire (assemble SelfintKnot.knot reader162 canonicalNext) = 162 := by decide
    omega

/-- The same kernel-checked 138 floor holds in this source-unrestricted
    price-frontier class, even though the same-reader 116+w formula can fail. -/
theorem frontier_class_bound_138 {T R Q : Term}
    (hT : FreeUnder 1 T) (hfix : BetaJoin T (.app (.var 0) T))
    (hR : Reader R) (hj : occ 1 R = 1) (hQ : RigidNext Q) (hp : FrontierPrice Q) :
    138 ≤ wire (assemble T R Q) := by
  obtain ⟨R', hr, hh, hle⟩ := frontier_dominated hT hfix hR hj hQ hp
  have hb := canonical_class_bound SelfintKnot.knot_scope SelfintKnot.knot_unfold hr hh
  omega

/-- In particular, arbitrary NEXT syntax of at least 98 bits cannot lower
    the minimum over readers. The still-open source-size region is <=97. -/
theorem large_rigid_next_frontier {Q : Term} (hQ : RigidNext Q) (hq : 98 ≤ wire Q) :
    FrontierPrice Q := by
  have hf := rigidNext_two_captures hQ
  constructor <;> omega

/-- More precise remaining regions, if a new sub-162 really beats both
    canonical-reader assemblies: <=91 bits, or F=2/q<=97, or F=3/q<=94. -/
theorem remaining_next_regions {Q : Term} (hQ : RigidNext Q) (hp : ¬ FrontierPrice Q) :
    wire Q ≤ 91 ∨ (freeLeaves 0 Q = 2 ∧ wire Q ≤ 97) ∨
      (freeLeaves 0 Q = 3 ∧ wire Q ≤ 94) := by
  have hf := rigidNext_two_captures hQ
  by_cases hq : 92 ≤ wire Q
  · right
    by_cases hw : 104 ≤ wire Q + 3 * freeLeaves 0 Q
    · exact (hp ⟨hq, hw⟩).elim
    · omega
  · left; omega

/-! A fully source-unrestricted, weaker bound. -/

theorem rigidNext_not_separated {Q : Term} (h : RigidNext Q) :
    ¬ SelfintCapture.Separated 0 Q := by
  intro hs
  have hi : SelfintCapture.Separated 0
      (.app (.app Q (tagValue false)) (.var 2)) := ⟨⟨hs, by decide⟩, trivial⟩
  have ho := SelfintCapture.separated_betas (h.red false) 0 hi
  exact (by decide : ¬ SelfintCapture.Separated 0 (.app (nextTarget false) (.var 2))) ho

theorem rigidNext_two_live {Q : Term} (h : RigidNext Q) : 2 ≤ live Q := by
  have hc := SelfintCapture.hasLiveCapture_of_not_separated Q 0 (rigidNext_not_separated h)
  have hh := capture_live 0 Q hc
  simpa only [outerLive, Nat.add_zero] using hh

theorem rigidNext_at_least_23 {Q : Term} (h : RigidNext Q) : 23 ≤ wire Q := by
  have hn := rigidNext_nonlinear h
  have hl := rigidNext_two_live h
  have hf := rigidNext_two_captures h
  have hp := (rigidNext_parameters h).2
  have hi := tax_occ Q 0 1 (by decide)
  have he := tax_identity Q 0
  have hw := count_wire_bound Q
  simp only [Nat.mul_one, Nat.zero_mul, Nat.add_zero] at hi he
  omega

theorem reader_weight_two {R : Term} (hR : Reader R) (hj : occ 1 R = 1) :
    20 ≤ cost R + 2 * depth R := by
  have hb := reader_depth_charges hR hj
  by_cases h0 : depth R = 0
  · have := hb.1 h0; omega
  · by_cases h1 : depth R = 1
    · have := hb.2.1 h1; omega
    · have := hb.2.2 (by omega); omega

/-- H2 is completely removed; H1, H3's canonical rigid targets, and H4 stay.
    The original four-capture tax is replaced by the sharp two-capture floor. -/
theorem unrestricted_next_assembly_lower {T R Q : Term}
    (hT : FreeUnder 1 T) (hfix : BetaJoin T (.app (.var 0) T))
    (hR : Reader R) (hj : occ 1 R = 1) (hQ : RigidNext Q) :
    47 + cost R + 2 * depth R ≤ wire (assemble T R Q) ∧
    67 ≤ wire (assemble T R Q) := by
  have ha := arbitrary_assembly_lower hT hfix hR.scope hj hQ.scope
  have hq := rigidNext_at_least_23 hQ
  have hf := Nat.mul_le_mul_right (depth R) (rigidNext_two_captures hQ)
  have hr := reader_weight_two hR hj
  constructor <;> omega

/-- Multiplicity still matters after dropping all of H2. A source with k
    opaque knot holes pays for the complete functional k times. -/
theorem unrestricted_knot_multiplicity {T R Q : Term}
    (hT : FreeUnder 1 T) (hfix : BetaJoin T (.app (.var 0) T))
    (hR : Reader R) (hj : occ 1 R = 1) (hQ : RigidNext Q) :
    18 + freeLeaves 0 T * (26 + wire Q) ≤ wire (assemble T R Q) ∧
    18 + 49 * freeLeaves 0 T ≤ wire (assemble T R Q) := by
  have he := knot_fill_wire hT (functional_closed hR.scope hQ.scope)
  have hg := SelfintKnot.fixedpoint_hole_multiplicity hfix
  have hh := functional_wire (Q := Q) hR.scope hj
  have hf := Nat.mul_le_mul_right (depth R) (rigidNext_two_captures hQ)
  have hr := reader_weight_two hR hj
  have hq := rigidNext_at_least_23 hQ
  have hhq : 24 + wire Q ≤ wire (functional R Q) := by omega
  have hm := Nat.mul_le_mul_left (freeLeaves 0 T) hhq
  have hmq := Nat.mul_le_mul_left (freeLeaves 0 T) (show 49 ≤ 26 + wire Q by omega)
  simp only [Nat.mul_add, Nat.mul_comm (freeLeaves 0 T) 24,
    Nat.mul_comm (freeLeaves 0 T) 26, Nat.mul_comm (freeLeaves 0 T) 49] at hm hmq ⊢
  change wire (assemble T R Q) = _ at he
  constructor <;> omega

/-- A sub-162 assembly has one or two knot holes. Two holes require a
    NEXT at most 45 bits, well inside the unsettled small-source region. -/
theorem sub162_knot_localization {T R Q : Term}
    (hT : FreeUnder 1 T) (hfix : BetaJoin T (.app (.var 0) T))
    (hR : Reader R) (hj : occ 1 R = 1) (hQ : RigidNext Q)
    (hsmall : wire (assemble T R Q) < 162) :
    freeLeaves 0 T = 1 ∨ (freeLeaves 0 T = 2 ∧ wire Q ≤ 45) := by
  have hk := SelfintKnot.fixedpoint_has_hole hfix
  have hm := unrestricted_knot_multiplicity hT hfix hR hj hQ
  have hc : freeLeaves 0 T = 1 ∨ freeLeaves 0 T = 2 := by omega
  rcases hc with h1 | h2
  · exact Or.inl h1
  · right
    rw [h2] at hm
    exact ⟨h2, by omega⟩

/-! Administrative source redexes: a sufficient widening which retains the
    exact old source inequality. No assumption that affine beta shrinks wire. -/

/-- The exact linear-redex index condition. It permits arguments with
    arbitrarily many free leaves when their movement is sufficiently shallow. -/
def LinearTaxOK (b a : Term) : Prop :=
  ((freeLeaves 0 a : Int) - 1) * occDepth 0 b ≤ 6 + freeLeaves 1 b

/-- Contextual affine contractions whose exact wire balance is nonpositive.
    Erasing redexes may discard arbitrary syntax, including arbitrary tag uses. -/
inductive AdminBeta : Term → Term → Prop where
  | erase (b a : Term) : occ 0 b = 0 → AdminBeta (.app (.lam b) a) (contract b a)
  | linear (b a : Term) : occ 0 b = 1 → LinearTaxOK b a →
      AdminBeta (.app (.lam b) a) (contract b a)
  | lam {b b' : Term} : AdminBeta b b' → AdminBeta (.lam b) (.lam b')
  | appL (a : Term) {f f' : Term} : AdminBeta f f' → AdminBeta (.app f a) (.app f' a)
  | appR (f : Term) {a a' : Term} : AdminBeta a a' → AdminBeta (.app f a) (.app f a')

theorem linearTaxOK_small_free (b a : Term) (hf : freeLeaves 0 a ≤ 1) : LinearTaxOK b a := by
  unfold LinearTaxOK
  have hn : (freeLeaves 0 a : Int) - 1 ≤ 0 := by omega
  have hd : (0 : Int) ≤ occDepth 0 b := by omega
  have hm := Int.mul_nonpos_of_nonpos_of_nonneg hn hd
  omega

theorem AdminBeta.beta {t u : Term} (h : AdminBeta t u) : Beta t u := by
  induction h with
  | erase b a _ => exact .beta b a
  | linear b a _ _ => exact .beta b a
  | lam h ih => exact .lam ih
  | appL a h ih => exact .appL a ih
  | appR f h ih => exact .appR f ih

theorem AdminBeta.wire {t u : Term} (h : AdminBeta t u) : wire u ≤ wire t := by
  induction h with
  | erase b a hz => exact Nat.le_of_lt (erasing_beta_shrinks b a hz)
  | linear b a ho hc =>
    have hd := linear_beta_delta b a ho
    unfold LinearTaxOK at hc
    omega
  | lam h ih => simp only [wire_lam]; omega
  | appL a h ih => simp only [wire_app]; omega
  | appR f h ih => simp only [wire_app]; omega

theorem AdminBeta.occ_le {t u : Term} (h : AdminBeta t u) : ∀ j, occ j u ≤ occ j t := by
  induction h with
  | erase b a hz =>
    intro j
    rw [contract, occ_substDec_ge b a j 0 (by omega)]
    simp only [hz, Nat.zero_mul, Nat.add_zero, occ]
    omega
  | linear b a ho hc =>
    intro j
    rw [contract, occ_substDec_ge b a j 0 (by omega)]
    simp only [ho, Nat.one_mul, occ]
    exact Nat.le_refl _
  | lam h ih => intro j; exact ih (j + 1)
  | appL a h ih => intro j; simp only [occ]; have := ih j; omega
  | appR f h ih => intro j; simp only [occ]; have := ih j; omega

theorem AdminBeta.captures {t u : Term} (h : AdminBeta t u) (ht : FreeUnder 2 t) :
    freeLeaves 0 u ≤ freeLeaves 0 t := by
  have hu := beta_freeUnder h.beta 2 ht
  have ht0 := freeLeaves_split t 0; have ht1 := freeLeaves_split t 1
  have hu0 := freeLeaves_split u 0; have hu1 := freeLeaves_split u 1
  have htz := freeLeaves_closed t 2 ht; have huz := freeLeaves_closed u 2 hu
  have ho0 := h.occ_le 0; have ho1 := h.occ_le 1
  simp only [Nat.reduceAdd] at ht0 ht1 hu0 hu1
  omega

inductive AdminBetas : Term → Term → Prop where
  | refl (t : Term) : AdminBetas t t
  | head {t u v : Term} : AdminBeta t u → AdminBetas u v → AdminBetas t v

theorem AdminBetas.price {t u : Term} (h : AdminBetas t u) (ht : FreeUnder 2 t) :
    wire u ≤ wire t ∧ freeLeaves 0 u ≤ freeLeaves 0 t := by
  induction h with
  | refl => exact ⟨Nat.le_refl _, Nat.le_refl _⟩
  | head hb hs ih =>
    have hu := beta_freeUnder hb.beta 2 ht
    have hp := ih hu
    exact ⟨Nat.le_trans hp.1 hb.wire, Nat.le_trans hp.2 (hb.captures ht)⟩

theorem administrative_next_price {Q Q0 : Term} (hs : FreeUnder 2 Q)
    (hr : AdminBetas Q Q0) (hq : Next Q0) : NextPrice Q := by
  have hm := hr.price hs
  have hp := next_price hq
  exact ⟨Nat.le_trans hp.bits hm.1, Nat.le_trans hp.captures hm.2⟩

/-- Arbitrary source syntax and arbitrary tag positions are admitted before
    this cost-safe administrative cleanup. The endpoint has the old two-arm
    normal form, whose rigid laws can equivalently be required at the source. -/
theorem administrative_class_bound {T R Q Q0 : Term}
    (hT : FreeUnder 1 T) (hfix : BetaJoin T (.app (.var 0) T))
    (hR : Reader R) (hj : occ 1 R = 1) (hQ : FreeUnder 2 Q)
    (hr : AdminBetas Q Q0) (hq : Next Q0) :
    116 + cost R + 4 * depth R ≤ wire (assemble T R Q) ∧
    138 ≤ wire (assemble T R Q) := by
  have hp := administrative_next_price hQ hr hq
  exact ⟨SelfintClass.assembly_lower hT hfix hR.scope hj hQ hp,
    SelfintClass.class_bound_138 hT hfix hR hj hQ hp⟩

/-! Semantic completion of the source-widening examples. -/

theorem rebind_two (t : Term) (d : Nat) (hs : FreeUnder (d + 2) t) :
    substDec d (.var d) (substDec (d + 1) (.var (d + 2)) t) = t := by
  induction t generalizing d with
  | var n =>
    have hn : n < d + 2 := hs
    by_cases h0 : n = d
    · subst n
      simp [substDec, show ¬ d + 1 < d by omega]
    · by_cases h1 : n = d + 1
      · subst n
        simp [substDec, show d < d + 2 by omega]
      · have hl : n < d := by omega
        simp [substDec, h0, h1, show ¬ d + 1 < n by omega, show ¬ d < n by omega]
  | lam b ih =>
    have hb : FreeUnder ((d + 1) + 2) b := by
      simpa only [FreeUnder, Nat.add_assoc] using hs
    simpa only [substDec, shift, Nat.zero_le, if_true, Nat.add_assoc, Nat.add_comm,
      Nat.add_left_comm] using congrArg Term.lam (ih (d + 1) hb)
  | app f a ihf iha => simp only [substDec, ihf d hs.1, iha d hs.2]

theorem shareParameters_reduces {Q : Term} (hs : FreeUnder 2 Q) :
    Betas (shareParameters Q) Q := by
  have h0 : Beta (.app (.lam (.lam Q)) (.var 1))
      (.lam (substDec 1 (.var 2) Q)) := .beta _ _
  have h1 : Beta (.app (.lam (substDec 1 (.var 2) Q)) (.var 0))
      (substDec 0 (.var 0) (substDec 1 (.var 2) Q)) := .beta _ _
  have he := rebind_two Q 0 hs
  rw [he] at h1
  exact .head (.appL (.var 0) h0) (.head h1 (.refl _))

theorem shareParameters_laws {Q : Term} (hQ : RigidNext Q) : RigidNext (shareParameters Q) :=
  RigidNext.of_betas (shareParameters_scope hQ.scope) (shareParameters_reduces hQ.scope) hQ

theorem AdminBetas.betas {t u : Term} (h : AdminBetas t u) : Betas t u := by
  induction h with
  | refl t => exact .refl t
  | head hb hs ih => exact .head hb.beta ih

theorem administrative_next_laws {Q Q0 : Term} (hQ : FreeUnder 2 Q)
    (hr : AdminBetas Q Q0) (hq : Next Q0) : RigidNext Q :=
  RigidNext.of_betas hQ hr.betas (rigid_of_next hq)

/-- The 233-bit counterexample is literally a beta expansion of the known
    162-bit interpreter; this checks its full all-closed-program contract. -/
theorem counterexample_reduces_to_162 :
    Betas (assemble SelfintKnot.knot (deepReader 6) letBoth) intL162 := by
  have hh : Betas (functional (deepReader 6) letBoth) (functional reader162 canonicalNext) :=
    normalSteps_sound (by decide : normalSteps 8 (functional (deepReader 6) letBoth) =
      some (functional reader162 canonicalNext))
  have he : Betas (assemble SelfintKnot.knot (deepReader 6) letBoth)
      (assemble SelfintKnot.knot reader162 canonicalNext) :=
    betas_appR SelfintKnot.delta
      (betas_lam (betas_appL (.app (.var 0) (.var 0)) hh))
  simpa only [assembly_is_int162] using he

theorem counterexample_is_interpreter :
    IsSelfInterpreter (assemble SelfintKnot.knot (deepReader 6) letBoth) := by
  refine ⟨by decide, ?_⟩
  intro M hM
  obtain ⟨w, hi, ht⟩ := isSelfInterpreter_intL162.2 M hM
  exact ⟨w, betas_trans
    (betas_appL _ (betas_appL (.var 0) counterexample_reduces_to_162)) hi, ht⟩

/-! Full independent reader laws. The main size proofs above need only
    zero and U1; this final interface states the original all-unary conjecture
    rather than strengthening it accidentally to every two-probe Reader. -/

def unary (n : Nat) (N : Term) : Term := match n with
  | 0 => pairT churchTrue N
  | k + 1 => pairT churchFalse (unary k N)

structure FullReader (R : Term) : Prop where
  scope : FreeUnder 2 R
  zero : BetaJoin (.app R Z) zeroOut
  unary_law : ∀ n, BetaJoin (.app R (unary (n + 1) (.var 2)))
      (.app (.app (.var 0) (unary n (.var 2))) (.var 2))

theorem FullReader.probes {R : Term} (h : FullReader R) : Reader R :=
  ⟨h.scope, h.zero, h.unary_law 0⟩

theorem FullReader.of_betas {R R' : Term} (hs : FreeUnder 2 R)
    (hr : Betas R R') (h : FullReader R') : FullReader R := by
  refine ⟨hs, SelfintControl.join_trans
    (SelfintControl.join_of_betas (betas_appL _ hr)) h.zero, ?_⟩
  intro n
  exact SelfintControl.join_trans
    (SelfintControl.join_of_betas (betas_appL _ hr)) (h.unary_law n)

theorem unary_stream (n : Nat) (N : Term) : unary n N = streamOf (vbits n) N := by
  induction n with
  | zero => exact (stream_vbits_zero N).symm
  | succ n ih => rw [unary, stream_vbits_succ, ih]

/-- One fixed symbolic trace, with the unary tail left rigid. -/
theorem reader162_var_head :
    SpineReds (.app reader162 (pairT churchFalse (.var 2)))
      (.app (.app (.var 0) (.var 2))
        (.app (.app (pairT churchFalse (.var 2)) (pairT churchFalse (.var 2))) (.var 1))) :=
  spineReds_of_spineSteps _ (by decide : spineSteps 8
    (.app reader162 (pairT churchFalse (.var 2))) = some
      (.app (.app (.var 0) (.var 2))
        (.app (.app (pairT churchFalse (.var 2)) (pairT churchFalse (.var 2))) (.var 1))))

theorem reader162_fullReader : FullReader reader162 := by
  refine ⟨reader162_laws.scope, reader162_laws.zero, ?_⟩
  intro n
  have hh := spineReds_substDec reader162_var_head 2 (unary n (.var 2))
  have hr : substDec 2 (unary n (.var 2)) reader162 = reader162 :=
    substDec_of_freeUnder _ _ _ reader162_laws.scope
  have hhead : Betas (.app reader162 (unary (n + 1) (.var 2)))
      (.app (.app (.var 0) (unary n (.var 2)))
        (.app (.app (unary (n + 1) (.var 2)) (unary (n + 1) (.var 2))) (.var 1))) := by
    simpa [substDec, hr, unary, pairT, shift, shift_churchFalse,
      substDec_churchFalse, substDec_shift0, shift_zero] using betas_of_spineReds hh
  have hs := betas_of_spineReds (skip_self (n + 1) (.var 2))
  rw [← unary_stream] at hs
  have htail : Betas
      (.app (.app (unary (n + 1) (.var 2)) (unary (n + 1) (.var 2))) (.var 1)) (.var 2) :=
    betas_trans (betas_appL (.var 1) hs) (.head (.beta _ _) (.refl _))
  exact ⟨_, betas_trans hhead (betas_appR _ htail), .refl _⟩

theorem deepReader_six_fullReader : FullReader (deepReader 6) :=
  FullReader.of_betas (by decide) deepReader_six_reduces reader162_fullReader

theorem hoist_fullReader {R : Term} (hR : FullReader R) : FullReader (Round3Reader.hoist R) := by
  have hr : Betas (Round3Reader.hoist R) R := .head (Round3Reader.hoist_beta R hR.scope) (.refl _)
  refine ⟨hoist_scope R, (hoist_reader hR.probes).zero, ?_⟩
  intro n
  exact SelfintControl.join_trans
    (SelfintControl.join_of_betas (betas_appL _ hr)) (hR.unary_law n)

/-- The exact full-reader comparison of minima: every assembly above the
    frontier is dominated by an old-class assembly satisfying all unary laws. -/
theorem frontier_dominated_full {T R Q : Term}
    (hT : FreeUnder 1 T) (hfix : BetaJoin T (.app (.var 0) T))
    (hR : FullReader R) (hj : occ 1 R = 1) (hQ : RigidNext Q) (hp : FrontierPrice Q) :
    ∃ R', FullReader R' ∧ occ 1 R' = 1 ∧
      wire (assemble SelfintKnot.knot R' canonicalNext) ≤ wire (assemble T R Q) := by
  by_cases hsmall : wire (assemble T R Q) < 162
  · rcases frontier_dominated_below_162 hT hfix hR.probes hj hQ hp hsmall with hs | hh
    · exact ⟨R, hR, hj, hs⟩
    · exact ⟨Round3Reader.hoist R, hoist_fullReader hR, hoist_hole hR.scope, hh⟩
  · refine ⟨reader162, reader162_fullReader, by decide, ?_⟩
    have href : wire (assemble SelfintKnot.knot reader162 canonicalNext) = 162 := by decide
    omega

/-- Any independently established full-reader floor transfers unchanged
    to the wider class. In particular this supplies the 30/46 implications
    without claiming to prove either reader conjecture. -/
theorem frontier_inherits_full_reader_floor (bound : Nat)
    (hfloor : ∀ R, FullReader R → occ 1 R = 1 → bound ≤ cost R + 4 * depth R)
    {T R Q : Term} (hT : FreeUnder 1 T) (hfix : BetaJoin T (.app (.var 0) T))
    (hR : FullReader R) (hj : occ 1 R = 1) (hQ : RigidNext Q) (hp : FrontierPrice Q) :
    116 + bound ≤ wire (assemble T R Q) := by
  obtain ⟨R', hr, hh, hle⟩ := frontier_dominated_full hT hfix hR hj hQ hp
  have hf := hfloor R' hr hh
  have he := canonical_assembly_exact hr.scope hh canonicalNext_scope
    canonicalNext_bits canonicalNext_captures
  omega

/-- Exact statement with the original all-unary reader conjecture. H2 is
    replaced by the two source-price inequalities; arbitrary redexes, tag
    arities, and divergence in discarded code are otherwise permitted. -/
theorem frontier_162_of_full_reader_floor
    (hfloor : ∀ R, FullReader R → occ 1 R = 1 → 46 ≤ cost R + 4 * depth R)
    {T R Q : Term} (hT : FreeUnder 1 T) (hfix : BetaJoin T (.app (.var 0) T))
    (hR : FullReader R) (hj : occ 1 R = 1) (hQ : RigidNext Q) (hp : FrontierPrice Q) :
    162 ≤ wire (assemble T R Q) := by
  by_cases hsmall : wire (assemble T R Q) < 162
  · have hs := canonical_assembly_exact hR.scope hj canonicalNext_scope
      canonicalNext_bits canonicalNext_captures
    have hh := canonical_assembly_exact (hoist_scope R) (hoist_hole hR.scope)
      canonicalNext_scope canonicalNext_bits canonicalNext_captures
    have hfs := hfloor _ hR hj
    have hfh := hfloor _ (hoist_fullReader hR) (hoist_hole hR.scope)
    rcases frontier_dominated_below_162 hT hfix hR.probes hj hQ hp hsmall with hsame | hhoist
    · omega
    · omega
  · omega

/-- The original exact conditional optimality equivalence survives the
    widening. All reader laws are quantified, and arbitrary opaque knots
    and arbitrary source NEXTs above the frontier are included. -/
theorem frontier_optimal_iff_reader_floor :
    (∀ T R Q, FreeUnder 1 T → BetaJoin T (.app (.var 0) T) →
      FullReader R → occ 1 R = 1 → RigidNext Q → FrontierPrice Q →
      162 ≤ wire (assemble T R Q)) ↔
    (∀ R, FullReader R → occ 1 R = 1 → 46 ≤ cost R + 4 * depth R) := by
  constructor
  · intro h R hr hj
    have ha := h SelfintKnot.knot R canonicalNext SelfintKnot.knot_scope
      SelfintKnot.knot_unfold hr hj (rigid_of_next canonicalNext_is_Next)
      (next_frontier canonicalNext_is_Next)
    have he := canonical_assembly_exact hr.scope hj canonicalNext_scope
      canonicalNext_bits canonicalNext_captures
    omega
  · intro hfloor T R Q hT hfix hR hj hQ hp
    exact frontier_162_of_full_reader_floor hfloor hT hfix hR hj hQ hp

/-- Byte identity between the hand-materialized .lam witness's wire and
    the complete interpreter term proved above. -/
theorem materialized_source_code :
    String.ofList ((blcCode (assemble SelfintKnot.knot (deepReader 6) letBoth)).map
      (fun bit => if bit then '1' else '0')) = "01000110100001000000010101100010000101110001111001011101101001000100010001000100010001010000000111100001011100111100000011110000001011101110011011110011111000011111000010111101001110101111111110111111110001000100010001000100010011010" := by decide

#print axioms letBoth_laws
#print axioms tagFour_laws
#print axioms normal_four_captures_false
#print axioms rigidNext_two_captures
#print axioms rigidNext_nonlinear
#print axioms arbitrary_assembly_lower
#print axioms same_reader_price_counterexample
#print axioms hoist_cost
#print axioms shared_next_dominated_below_162
#print axioms shared_next_162_of_two_probe_floor
#print axioms unrestricted_next_assembly_lower
#print axioms administrative_class_bound
#print axioms frontier_dominated_below_162
#print axioms frontier_162_of_two_probe_floor
#print axioms frontier_dominated
#print axioms frontier_class_bound_138
#print axioms remaining_next_regions
#print axioms shareParameters_laws
#print axioms administrative_next_laws
#print axioms counterexample_is_interpreter
#print axioms materialized_source_code
#print axioms hoist_fullReader
#print axioms frontier_162_of_full_reader_floor
#print axioms unrestricted_knot_multiplicity
#print axioms sub162_knot_localization
#print axioms reader162_fullReader
#print axioms deepReader_six_fullReader
#print axioms frontier_dominated_full
#print axioms frontier_inherits_full_reader_floor
#print axioms next_frontier
#print axioms frontier_optimal_iff_reader_floor
end Blc.SelfintWiden
