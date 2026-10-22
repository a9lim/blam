/-
The separated class widened. NEXT may be any source obeying the canonical
rigid branch laws (`RigidNext`: normality and tag-use shape unrestricted), and
the reader may be held to all unary laws (`FullReader`). Above a small
source-price frontier every assembly is dominated by an old-class assembly
with the canonical NEXT and the 20-bit knot, so the conditional equivalence
(162 is optimal iff every full reader has weight at least 46) survives the
widening. With no source restriction at all an assembly still costs at least
`47 + cost R + 2 * depth R`, and a sub-162 assembly has one or two knot holes.
The fixed-reader four-capture price fails, by a genuine self-interpreter.
`OneLet` prices an unbounded family of NEXTs with one designated let and
administrative redexes. No unconditional 162-bit claim.
`docs/classical/self-interpreter/class-bound.md`. All variables are 0-based;
at the root of a reader, c=0 and j=1.
-/
import Blc.SelfintClass

/- The following namespace is copied unchanged (apart from its import and
   name) from data/self-interpreter/reasoning_162/floor/ReaderHoist.lean. -/
/- General NEXT-hole hoisting and its exact capture-weight balance.
   Source variables are c=0 and j=1. This file does not prove the reader floor. -/

namespace Blc.SelfintWidenHoist
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

end Blc.SelfintWidenHoist

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

/-! Hoisting comparison. The `SelfintWidenHoist` definitions are connected to the
    authoritative class cost/depth, with all scope and Reader obligations proved. -/

theorem holes_occ (t : Term) (d : Nat) : SelfintWidenHoist.holes d t = occ (d + 1) t := by
  induction t generalizing d with
  | var n => rfl
  | lam b ih => exact ih (d + 1)
  | app f a ihf iha => simp only [SelfintWidenHoist.holes, occ, ihf, iha]

theorem cs_occ (t : Term) (d : Nat) : SelfintWidenHoist.cs d t = occ d t := by
  induction t generalizing d with
  | var n => rfl
  | lam b ih => exact ih (d + 1)
  | app f a ihf iha => simp only [SelfintWidenHoist.cs, occ, ihf, iha]

theorem depths_occDepth (t : Term) (d : Nat) :
    SelfintWidenHoist.depths d t = occDepth (d + 1) t + d * occ (d + 1) t := by
  induction t generalizing d with
  | var n => simp only [SelfintWidenHoist.depths, occDepth, occ]; split <;> omega
  | lam b ih =>
    have h := ih (d + 1)
    simp only [SelfintWidenHoist.depths, occDepth, occ, Nat.add_mul, Nat.one_mul] at h ⊢
    omega
  | app f a ihf iha =>
    have := ihf d; have := iha d
    simp only [SelfintWidenHoist.depths, occDepth, occ, Nat.mul_add]
    omega

theorem weight_cost (t : Term) (d : Nat) :
    SelfintWidenHoist.weight d t = holeCost (d + 1) t + 4 * SelfintWidenHoist.depths d t := by
  induction t generalizing d with
  | var n => simp only [SelfintWidenHoist.weight, holeCost, SelfintWidenHoist.depths]; split <;> omega
  | lam b ih =>
    have := ih (d + 1)
    simp only [SelfintWidenHoist.weight, holeCost, SelfintWidenHoist.depths]
    omega
  | app f a ihf iha =>
    have := ihf d; have := iha d
    simp only [SelfintWidenHoist.weight, holeCost, SelfintWidenHoist.depths, Nat.mul_add]
    omega

theorem bindHole_scope (t : Term) (d : Nat) :
    FreeUnder (d + 2) (SelfintWidenHoist.bindHole d t) := by
  induction t generalizing d with
  | var n =>
    simp only [SelfintWidenHoist.bindHole]
    repeat' first | split | simp_all [FreeUnder] | omega
  | lam b ih => exact ih (d + 1)
  | app f a ihf iha => exact ⟨ihf d, iha d⟩

theorem hoist_scope (R : Term) : FreeUnder 2 (SelfintWidenHoist.hoist R) := by
  refine ⟨?_, by decide⟩
  change FreeUnder 3 (SelfintWidenHoist.bindHole 0 R)
  exact freeUnder_mono (by omega : 2 ≤ 3) (bindHole_scope R 0)

theorem hoist_depth (R : Term) : depth (SelfintWidenHoist.hoist R) = 0 := by
  have ho := occ_of_freeUnder (SelfintWidenHoist.bindHole 0 R) 2 2 (bindHole_scope R 0) (by omega)
  have hd := occDepth_zero ho
  simp only [SelfintWidenHoist.hoist, depth, occDepth, Nat.reduceAdd, hd, ho]

theorem hoist_hole {R : Term} (hR : FreeUnder 2 R) :
    occ 1 (SelfintWidenHoist.hoist R) = 1 := by
  simpa only [holes_occ, Nat.zero_add] using SelfintWidenHoist.hoist_one_hole R hR

theorem hoist_reader {R : Term} (hR : Reader R) : Reader (SelfintWidenHoist.hoist R) := by
  have hr : Betas (SelfintWidenHoist.hoist R) R := .head (SelfintWidenHoist.hoist_beta R hR.scope) (.refl _)
  refine ⟨hoist_scope R, ⟨_, ?_, .refl _⟩, ⟨_, ?_, .refl _⟩⟩
  · exact betas_trans (betas_appL Z hr) hR.zero_red
  · exact betas_trans (betas_appL S hr) hR.one_red

theorem hoist_cost {R : Term} (hR : FreeUnder 2 R) (hj : occ 1 R = 1) :
    cost (SelfintWidenHoist.hoist R) = cost R + depth R + 6 + occ 0 R := by
  have hh := SelfintWidenHoist.hoist_weight R hR (by simpa only [holes_occ, Nat.zero_add] using hj)
  simp only [weight_cost, depths_occDepth, cs_occ, Nat.zero_add, Nat.zero_mul,
    Nat.add_zero] at hh
  have hd := hoist_depth R
  change occDepth 1 (SelfintWidenHoist.hoist R) = 0 at hd
  change holeCost 1 (SelfintWidenHoist.hoist R) = holeCost 1 R + occDepth 1 R + 6 + occ 0 R
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
    Reader (SelfintWidenHoist.hoist R) ∧ occ 1 (SelfintWidenHoist.hoist R) = 1 ∧
    wire (assemble SelfintKnot.knot (SelfintWidenHoist.hoist R) canonicalNext) <
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
    wire (assemble SelfintKnot.knot (SelfintWidenHoist.hoist R) canonicalNext) ≤
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
    by_cases hhoist : wire (assemble SelfintKnot.knot (SelfintWidenHoist.hoist R) canonicalNext) ≤
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
    · exact ⟨SelfintWidenHoist.hoist R, hoist_reader hR, hoist_hole hR.scope, hh⟩
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

theorem hoist_fullReader {R : Term} (hR : FullReader R) : FullReader (SelfintWidenHoist.hoist R) := by
  have hr : Betas (SelfintWidenHoist.hoist R) R := .head (SelfintWidenHoist.hoist_beta R hR.scope) (.refl _)
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
    · exact ⟨SelfintWidenHoist.hoist R, hoist_fullReader hR, hoist_hole hR.scope, hh⟩
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

/-! Unrestricted cheap-end exclusions and minimum-source constraints. -/

/-- Substitution for a global cannot create an internal live capture when
    the inserted term itself has none. The auxiliary condition prevents
    references to local binders from entering through the argument. -/
theorem separated_global_subst_aux (t a : Term) (d j : Nat)
    (hj : d ≤ j) (ht : SelfintCapture.Separated d t)
    (ha : SelfintCapture.Separated d a) (hz : ∀ i, i < d → occ i a = 0) :
    SelfintCapture.Separated d (substDec j a t) := by
  induction t generalizing a d j with
  | var n =>
    simp only [substDec]
    split
    · exact ha
    · split <;> trivial
  | app f b ihf ihb =>
    exact ⟨ihf a d j hj ht.1 ha hz, ihb a d j hj ht.2 ha hz⟩
  | lam b ih =>
    have haz : ∀ i, i < d + 1 → occ i (shift 1 0 a) = 0 := by
      intro i hi
      cases i with
      | zero => exact occ_shift_eq a 0
      | succ i =>
        rw [occ_shift_ge a i 0 (by omega)]
        exact hz i (by omega)
    refine ⟨ih (shift 1 0 a) (d + 1) (j + 1) (by omega) ht.1
      (SelfintCapture.separated_shift a d 0 (by omega) ha) haz, ?_⟩
    intro hl i hi
    rw [occ_substDec_lt b (shift 1 0 a) 0 (j + 1) (by omega),
      occ_shift_eq, Nat.mul_zero, Nat.add_zero] at hl
    rw [occ_substDec_lt b (shift 1 0 a) (i + 1) (j + 1) (by omega),
      haz (i + 1) (by omega), Nat.mul_zero, Nat.add_zero]
    exact ht.2 hl i hi

theorem separated_global_subst (t a : Term) (j : Nat)
    (ht : SelfintCapture.Separated 0 t) (ha : SelfintCapture.Separated 0 a) :
    SelfintCapture.Separated 0 (substDec j a t) :=
  separated_global_subst_aux t a 0 j (by omega) ht ha (by intro i hi; omega)

theorem one_live_separated (t : Term) (h : live t ≤ 1) : SelfintCapture.Separated 0 t := by
  apply Classical.byContradiction
  intro hn
  have hc := SelfintCapture.hasLiveCapture_of_not_separated t 0 hn
  have hh := capture_live 0 t hc
  simp only [outerLive, Nat.add_zero] at hh
  omega

theorem live_shift (t : Term) (c : Nat) : live (shift 1 c t) = live t := by
  induction t generalizing c with
  | var n => simp only [shift]; split <;> rfl
  | lam b ih =>
    simp only [shift, live, ih]
    rw [occ_shift_lt b 0 (c + 1) (by omega)]
  | app f a ihf iha => simp only [shift, live, ihf, iha]

theorem live_subst (t a : Term) (j : Nat) :
    live (substDec j a t) = live t + occ j t * live a := by
  induction t generalizing a j with
  | var n =>
    simp only [substDec, occ, live]
    split <;> simp_all
    split <;> simp [live]
  | lam b ih =>
    simp only [substDec, live, occ]
    rw [occ_substDec_lt b (shift 1 0 a) 0 (j + 1) (by omega), occ_shift_eq]
    simp only [Nat.mul_zero, Nat.add_zero]
    rw [ih, live_shift]
    omega
  | app f b ihf ihb => simp only [substDec, live, occ, ihf, ihb, Nat.add_mul]; omega

theorem zero_live_weakStep {t u : Term} (ht : live t = 0)
    (hs : weakStep t = some u) : wire u < wire t ∧ live u = 0 := by
  induction t generalizing u with
  | var n => simp [weakStep] at hs
  | lam b => simp [weakStep] at hs
  | app f a ihf iha =>
    cases f with
    | var n => simp [weakStep] at hs
    | lam b =>
      simp only [weakStep, Option.some.injEq] at hs
      subst u
      have ho : occ 0 b = 0 := by
        apply Classical.byContradiction
        intro hn
        have hp : 0 < occ 0 b := by omega
        simp only [live, if_pos hp] at ht
        omega
      have hb : live b = 0 := by simp only [live, ho, Nat.lt_irrefl, if_false] at ht; omega
      exact ⟨erasing_beta_shrinks b a ho, by simp [contract, live_subst, ho, hb]⟩
    | app f b =>
      simp only [weakStep, Option.map_eq_some_iff] at hs
      obtain ⟨v, hv, rfl⟩ := hs
      have hf : live (.app f b) = 0 := by simp only [live] at ht ⊢; omega
      have ha : live a = 0 := by simp only [live] at ht; omega
      obtain ⟨hw, hl⟩ := ihf hf hv
      constructor
      · simp only [wire_app] at hw ⊢
        omega
      · change live v + live a = 0
        rw [hl, ha]

/-- With at most two live source binders, a live head contraction destroys
    internal capture. An erasing head contraction strictly shrinks the wire. -/
theorem two_live_weakStep {t u : Term} (ht : live t ≤ 2)
    (hs : weakStep t = some u) :
    SelfintCapture.Separated 0 u ∨ (wire u < wire t ∧ live u ≤ live t) := by
  induction t generalizing u with
  | var n => simp [weakStep] at hs
  | lam b => simp [weakStep] at hs
  | app f a ihf iha =>
    cases f with
    | var n => simp [weakStep] at hs
    | lam b =>
      simp only [weakStep, Option.some.injEq] at hs
      subst u
      by_cases ho : occ 0 b = 0
      · right
        refine ⟨erasing_beta_shrinks b a ho, ?_⟩
        simp only [contract, live_subst, live, ho, Nat.lt_irrefl, if_false,
          Nat.zero_mul, Nat.add_zero]
        omega
      · left
        have hp : 0 < occ 0 b := by omega
        simp only [live, if_pos hp] at ht
        exact separated_global_subst b a 0 (one_live_separated b (by omega))
          (one_live_separated a (by omega))
    | app f b =>
      simp only [weakStep, Option.map_eq_some_iff] at hs
      obtain ⟨v, hv, rfl⟩ := hs
      by_cases hz : live (.app f b) = 0
      · obtain ⟨hw, hl⟩ := zero_live_weakStep hz hv
        right
        simp only [wire_app, live] at hw hl ⊢
        constructor <;> omega
      · have hf : live (.app f b) ≤ 2 := by simp only [live] at ht ⊢; omega
        have ha : live a ≤ 1 := by simp only [live] at ht hz; omega
        rcases ihf hf hv with hvsep | ⟨hw, hl⟩
        · exact Or.inl ⟨hvsep, one_live_separated a ha⟩
        · right
          simp only [wire_app, live] at hw hl ⊢
          constructor <;> omega

theorem rigidNext_not_rigid {Q : Term} (h : RigidNext Q) : ¬ Rigid Q := by
  intro hr
  obtain ⟨f, a, he, hf, ha⟩ := rigid_betas_shape (.app churchTrue hr) (h.red true)
  change Term.app nextZero (.var 2) = .app f a at he
  cases he
  obtain ⟨g, b, he, hg, hb⟩ := rigid_betas_shape hr hf
  change Term.app (.var 1) (.lam (.app (.var 1) absVt)) = .app g b at he
  cases he
  have hn := normalForm_betas_eq (nft_normal (by decide : NFt churchTrue)) hb
  exact (by decide : (.lam (.app (.var 1) absVt)) ≠ churchTrue) hn

theorem rigidNext_lambda_live {b : Term} (h : RigidNext (.lam b)) : 0 < occ 0 b := by
  apply Classical.byContradiction
  intro hn
  have hz : occ 0 b = 0 := by omega
  have he := subst_absent b 0 churchTrue churchFalse hz
  have ht (first : Bool) : NormalForm (.app (nextTarget first) (.var 2)) :=
    nft_normal ⟨nextTarget_nonlam first, nextTarget_normal first, trivial⟩
  have h0 := betas_preserve_nf
    (Betas.head (Beta.appL (.var 2) (Beta.beta b churchTrue)) (.refl _)) (h.red true) (ht true)
  have h1 := betas_preserve_nf
    (Betas.head (Beta.appL (.var 2) (Beta.beta b churchFalse)) (.refl _)) (h.red false) (ht false)
  change Betas (.app (substDec 0 churchTrue b) (.var 2)) _ at h0
  rw [he] at h0
  have ho := normalForm_unique h0 h1 (ht true) (ht false)
  exact (by decide : (Term.app (nextTarget true) (.var 2)) ≠
    (Term.app (nextTarget false) (.var 2))) ho

theorem rigidNext_lambda_three_live {b : Term} (h : RigidNext (.lam b)) :
    3 ≤ live (.lam b) := by
  have ho := rigidNext_lambda_live h
  apply Classical.byContradiction
  intro hn
  have hb : live b ≤ 1 := by simp only [live, if_pos ho] at hn; omega
  have hs := separated_global_subst b churchFalse 0 (one_live_separated b hb) (by decide)
  have hr := betas_preserve_nf
    (Betas.head (Beta.appL (.var 2) (Beta.beta b churchFalse)) (.refl _)) (h.red false)
    (nft_normal ⟨nextTarget_nonlam false, nextTarget_normal false, trivial⟩)
  have hf := SelfintCapture.separated_betas hr 0 (show SelfintCapture.Separated 0
    (.app (contract b churchFalse) (.var 2)) from ⟨hs, trivial⟩)
  exact (by decide : ¬ SelfintCapture.Separated 0 (.app (nextTarget false) (.var 2))) hf

/-- An unrestricted rigid NEXT needs at least three live source binders.
    The induction removes erasing head redexes; it imposes no normal form,
    tag-use condition, size cap, or evaluation-fuel bound. -/
theorem rigidNext_three_live {Q : Term} (h : RigidNext Q) : 3 ≤ live Q := by
  generalize he : wire Q = n
  induction n using Nat.strongRecOn generalizing Q with
  | ind n ih =>
    apply Classical.byContradiction
    intro hn
    have hl : live Q ≤ 2 := by omega
    cases hq : Q with
    | lam b =>
      subst Q
      exact hn (rigidNext_lambda_three_live h)
    | var v =>
      subst Q
      exact (rigidNext_not_rigid h (.var v)).elim
    | app f a =>
      subst Q
      cases hs : weakStep (.app f a) with
      | none => exact (rigidNext_not_rigid h (weakStep_none_rigid hs (by simp [IsLam]))).elim
      | some u =>
        have hu := h.beta (weakStep_beta hs)
        rcases two_live_weakStep hl hs with hsep | ⟨hw, hlu⟩
        · exact (rigidNext_not_separated hu) hsep
        · have hrec := ih (wire u) (by omega) hu rfl
          omega

/-- Sum of unary index bits on leaves bound inside the source term. -/
def localIndex : Nat → Term → Nat
  | d, .var n => if n < d then n else 0
  | d, .lam b => localIndex (d + 1) b
  | d, .app f a => localIndex d f + localIndex d a

theorem localIndex_occ (t : Term) (d i : Nat) (hi : i < d) :
    i * occ i t ≤ localIndex d t := by
  induction t generalizing d i with
  | var n =>
    simp only [occ, localIndex]
    by_cases he : n = i
    · subst n; simp [hi]
    · simp [he]
  | lam b ih =>
    have hh := ih (d + 1) (i + 1) (by omega)
    have hm := Nat.mul_le_mul_right (occ (i + 1) b) (Nat.le_succ i)
    change i * occ (i + 1) b ≤ localIndex (d + 1) b
    exact Nat.le_trans hm hh
  | app f a ihf iha =>
    have hf := ihf d i hi
    have ha := iha d i hi
    simp only [occ, localIndex, Nat.mul_add]
    omega

theorem capture_localIndex (t : Term) (d : Nat)
    (h : SelfintCapture.HasLiveCapture d t) : 1 ≤ localIndex d t := by
  induction t generalizing d with
  | var n => exact h.elim
  | app f a ihf iha =>
    rcases h with hf | ha
    · have := ihf d hf; simp only [localIndex]; omega
    · have := iha d ha; simp only [localIndex]; omega
  | lam b ih =>
    rcases h with hb | ⟨_, i, hi, hc⟩
    · exact ih (d + 1) hb
    · have hh := localIndex_occ b (d + 1) (i + 1) (by omega)
      have hp : 0 < (i + 1) * occ (i + 1) b := Nat.mul_pos (by omega) hc
      change 1 ≤ localIndex (d + 1) b
      omega

/-- Split all index bits into locally bound leaves and the two rigid
    parameters, including every lambda crossed by a parameter occurrence. -/
theorem parameter_index_identity (t : Term) (d : Nat) (hs : FreeUnder (d + 2) t) :
    SelfintCapture.indexSum t = localIndex d t + d * occ d t +
      (d + 1) * occ (d + 1) t + occDepth d t + occDepth (d + 1) t := by
  induction t generalizing d with
  | var n =>
    change n < d + 2 at hs
    by_cases hn : n < d
    · simp [SelfintCapture.indexSum, localIndex, hn, occ, occDepth,
        show n ≠ d by omega, show n ≠ d + 1 by omega]
    · by_cases he : n = d
      · subst n; simp [SelfintCapture.indexSum, localIndex, occ, occDepth]
      · have he' : n = d + 1 := by omega
        subst n
        simp [SelfintCapture.indexSum, localIndex, occ, occDepth]
  | lam b ih =>
    have hb : FreeUnder ((d + 1) + 2) b := by
      simpa only [FreeUnder, Nat.add_assoc] using hs
    have hh := ih (d + 1) hb
    simp only [SelfintCapture.indexSum, localIndex, occ, occDepth,
      Nat.add_mul, Nat.one_mul] at hh ⊢
    omega
  | app f a ihf iha =>
    have hf := ihf d hs.1
    have ha := iha d hs.2
    simp only [SelfintCapture.indexSum, localIndex, occ, occDepth, Nat.mul_add]
    omega

theorem rigidNext_index_bound {Q : Term} (h : RigidNext Q) :
    1 + occ 1 Q + occDepth 0 Q + occDepth 1 Q ≤ SelfintCapture.indexSum Q := by
  have hc := SelfintCapture.hasLiveCapture_of_not_separated Q 0 (rigidNext_not_separated h)
  have hi := capture_localIndex Q 0 hc
  have he := parameter_index_identity Q 0 h.scope
  simp only [Nat.zero_mul, Nat.zero_add, Nat.one_mul] at he
  omega

theorem rigidNext_at_least_30 {Q : Term} (h : RigidNext Q) : 30 ≤ wire Q := by
  have hn := rigidNext_nonlinear h
  have hl := rigidNext_three_live h
  have hf := rigidNext_two_captures h
  have hp := (rigidNext_parameters h).2
  have hi := rigidNext_index_bound h
  have hw := count_wire_bound Q
  omega

theorem rigidNext_lambda_at_least_32 {b : Term} (h : RigidNext (.lam b)) :
    32 ≤ wire (.lam b) := by
  have hn := rigidNext_nonlinear h
  have hl := rigidNext_three_live h
  have hf := rigidNext_two_captures h
  have hp := rigidNext_parameters h
  have hi := rigidNext_index_bound h
  have hw := count_wire_bound (.lam b)
  simp only [occ, occDepth] at hp hi
  omega

/-- With one nonlinear binder, every weak-head contraction either consumes
    it, removes a live binder, or strictly decreases the wire by erasure. -/
theorem one_nonlinear_weakStep {t u : Term} (ht : nonlinear t ≤ 1)
    (hs : weakStep t = some u) :
    (nonlinear t = 1 ∧ nonlinear u = 0) ∨ live u < live t ∨ wire u < wire t := by
  induction t generalizing u with
  | var n => simp [weakStep] at hs
  | lam b => simp [weakStep] at hs
  | app f a ihf iha =>
    cases f with
    | var n => simp [weakStep] at hs
    | lam b =>
      simp only [weakStep, Option.some.injEq] at hs
      subst u
      by_cases hz : occ 0 b = 0
      · exact Or.inr (Or.inr (erasing_beta_shrinks b a hz))
      · by_cases ho : occ 0 b = 1
        · right; left
          simp [contract, live_subst, live, ho]
        · left
          have hyes : 1 < occ 0 b := by omega
          simp only [nonlinear, if_pos hyes] at ht ⊢
          have hnb : nonlinear b = 0 := by omega
          have hna : nonlinear a = 0 := by omega
          simp [contract, nonlinear_subst, hnb, hna]
    | app f b =>
      simp only [weakStep, Option.map_eq_some_iff] at hs
      obtain ⟨v, hv, rfl⟩ := hs
      have hf : nonlinear (.app f b) ≤ 1 := by simp only [nonlinear] at ht ⊢; omega
      rcases ihf hf hv with ⟨hn, hz⟩ | hl | hw
      · left; simp only [nonlinear] at ht hn hz ⊢; constructor <;> omega
      · right; left; simp only [live] at hl ⊢; omega
      · right; right; simp only [wire_app] at hw ⊢; omega

/-- Uniform arbitrary-source exclusion of every NEXT shorter than 32 bits.
    This is structural induction on source wire, with no enumeration. -/
theorem rigidNext_at_least_32 {Q : Term} (h : RigidNext Q) : 32 ≤ wire Q := by
  generalize he : wire Q = n
  induction n using Nat.strongRecOn generalizing Q with
  | ind n ih =>
    apply Classical.byContradiction
    intro hn
    have hnl := rigidNext_nonlinear h
    have hl := rigidNext_three_live h
    have hf := rigidNext_two_captures h
    have hp := (rigidNext_parameters h).2
    have hi := rigidNext_index_bound h
    have hw := count_wire_bound Q
    have hnq : nonlinear Q ≤ 1 := by omega
    have hlq : live Q ≤ 3 := by omega
    cases hq : Q with
    | lam b =>
      subst Q
      have hh := rigidNext_lambda_at_least_32 h
      omega
    | var v =>
      subst Q
      exact (rigidNext_not_rigid h (.var v)).elim
    | app f a =>
      subst Q
      cases hs : weakStep (.app f a) with
      | none => exact (rigidNext_not_rigid h (weakStep_none_rigid hs (by simp [IsLam]))).elim
      | some u =>
        have hu := h.beta (weakStep_beta hs)
        rcases one_nonlinear_weakStep hnq hs with ⟨_, hzero⟩ | hless | hwire
        · have hh := rigidNext_nonlinear hu; omega
        · have hh := rigidNext_three_live hu; omega
        · exact hn (by have hh := ih (wire u) (by omega) hu rfl; omega)

/-- The arbitrary-source assembly floor with the new NEXT lower bound. -/
theorem unrestricted_next_assembly_lower_76 {T R Q : Term}
    (hT : FreeUnder 1 T) (hfix : BetaJoin T (.app (.var 0) T))
    (hR : Reader R) (hj : occ 1 R = 1) (hQ : RigidNext Q) :
    56 + cost R + 2 * depth R ≤ wire (assemble T R Q) ∧
    76 ≤ wire (assemble T R Q) := by
  have ha := arbitrary_assembly_lower hT hfix hR.scope hj hQ.scope
  have hq := rigidNext_at_least_32 hQ
  have hf := Nat.mul_le_mul_right (depth R) (rigidNext_two_captures hQ)
  have hr := reader_weight_two hR hj
  constructor <;> omega

theorem unrestricted_knot_multiplicity_58 {T R Q : Term}
    (hT : FreeUnder 1 T) (hfix : BetaJoin T (.app (.var 0) T))
    (hR : Reader R) (hj : occ 1 R = 1) (hQ : RigidNext Q) :
    18 + 58 * freeLeaves 0 T ≤ wire (assemble T R Q) := by
  have ha := (unrestricted_knot_multiplicity hT hfix hR hj hQ).1
  have hq := rigidNext_at_least_32 hQ
  have hm := Nat.mul_le_mul_left (freeLeaves 0 T) (show 58 ≤ 26 + wire Q by omega)
  simp only [Nat.mul_comm (freeLeaves 0 T) 58] at hm
  omega

/-- Localize a sub-162 source with two knot holes to 32..45 bits of NEXT. -/
theorem sub162_knot_localization_32 {T R Q : Term}
    (hT : FreeUnder 1 T) (hfix : BetaJoin T (.app (.var 0) T))
    (hR : Reader R) (hj : occ 1 R = 1) (hQ : RigidNext Q)
    (hsmall : wire (assemble T R Q) < 162) :
    freeLeaves 0 T = 1 ∨
      (freeLeaves 0 T = 2 ∧ 32 ≤ wire Q ∧ wire Q ≤ 45) := by
  have hq := rigidNext_at_least_32 hQ
  rcases sub162_knot_localization hT hfix hR hj hQ hsmall with h1 | ⟨h2, hq2⟩
  · exact Or.inl h1
  · exact Or.inr ⟨h2, hq, hq2⟩

/-! All complete single-parameter aliases of old-class NEXTs. -/

/-- Alias c while leaving p free: (lambda c'. Q[c'/c,p/p]) c. -/
def shareC (Q : Term) : Term := .app (.lam (shift 1 1 Q)) (.var 0)

/-- Alias p while leaving c free. `bindHole` swaps the two ambient slots
    on a two-slot source and leaves all local binders intact. -/
def shareP (Q : Term) : Term := SelfintWidenHoist.hoist Q

theorem shareC_beta (Q : Term) : Beta (shareC Q) Q := by
  have hh := Beta.beta (shift 1 1 Q) (.var 0)
  simpa only [shareC, contract, substDec_var_shift] using hh

theorem shareC_laws {Q : Term} (hQ : RigidNext Q) : RigidNext (shareC Q) := by
  refine RigidNext.of_betas ⟨?_, by decide⟩ (.head (shareC_beta Q) (.refl _)) hQ
  exact shift_scope Q 1 2 hQ.scope

theorem shareP_laws {Q : Term} (hQ : RigidNext Q) : RigidNext (shareP Q) :=
  RigidNext.of_betas (hoist_scope Q)
    (.head (SelfintWidenHoist.hoist_beta Q hQ.scope) (.refl _)) hQ

theorem shareC_cost (Q : Term) : wire (shareC Q) = wire Q + freeLeaves 1 Q + 6 := by
  simp only [shareC, wire_app, wire_lam, wire_var, wire_shift, Nat.one_mul]

theorem bindHole_tagged {k : Bool} {j : Nat} {t : Term} (h : Tagged k j t)
    (d : Nat) (hd : j < d) : Tagged k j (SelfintWidenHoist.bindHole d t) := by
  induction h generalizing d with
  | @var j n hn =>
    simp only [SelfintWidenHoist.bindHole]
    split
    · exact .var hn
    · split <;> exact .var (by omega)
  | app hf ha ihf iha => exact .app (ihf d hd) (iha d hd)
  | neutral h ih => exact .neutral (ih d hd)
  | lam h ih => exact .lam (ih (d + 1) (by omega))
  | select hu hv ihu ihv =>
    simp only [SelfintWidenHoist.bindHole, if_pos hd]
    exact .select (ihu d hd) (ihv d hd)

theorem prune_bindHole (first : Bool) {k : Bool} {j : Nat} {t : Term}
    (h : Tagged k j t) (d : Nat) (hd : j < d) :
    prune first j (SelfintWidenHoist.bindHole d t) =
      SelfintWidenHoist.bindHole d (prune first j t) := by
  induction h generalizing d with
  | @var j n hn =>
    by_cases hlt : n < d
    · simp [SelfintWidenHoist.bindHole, hlt, prune]
    · by_cases he : n = d
      · simp [SelfintWidenHoist.bindHole, he, prune]
      · simp [SelfintWidenHoist.bindHole, hlt, he, prune]
  | app hf ha ihf iha =>
    change prune first _ (.app (SelfintWidenHoist.bindHole d _) (SelfintWidenHoist.bindHole d _)) = _
    rw [prune_ordinary_app first (bindHole_tagged hf d hd), prune_ordinary_app first hf]
    simp only [SelfintWidenHoist.bindHole, ihf d hd, iha d hd]
  | neutral h ih => exact ih d hd
  | lam h ih =>
    exact congrArg Term.lam (ih (d + 1) (by omega))
  | select hu hv ihu ihv =>
    simp only [SelfintWidenHoist.bindHole, if_pos hd, prune_select]
    cases first
    · exact ihv d hd
    · exact ihu d hd

/-- Four fixed target pairs, with c and p swapped in the source frame.
    The universal argument still uses the unbounded merged-source theorem. -/
theorem merged_rebound_targets (e0 e1 : Bool) :
    90 ≤ (merged true 0
      (SelfintWidenHoist.bindHole 1 (shift 1 0 (etaChoice e0 nextZero)))
      (SelfintWidenHoist.bindHole 1 (shift 1 0 (etaChoice e1 nextOne)))).1 := by
  cases e0 <;> cases e1 <;> decide

theorem next_rebound_bits {Q : Term} (h : Next Q) :
    92 ≤ wire (SelfintWidenHoist.bindHole 0 Q) := by
  obtain ⟨b, he⟩ := h.lambda
  subst Q
  have hb : Tagged false 0 b :=
    (tagged_of_twoArm b 0 0 (normal_nft (t := .lam b) h.normal) (h.twoArm b rfl)).1 rfl
  obtain ⟨e0, h0⟩ := h.pruned_forms rfl true
  obtain ⟨e1, h1⟩ := h.pruned_forms rfl false
  have hh := merged_lower true (bindHole_tagged hb 1 (by decide))
  simp only [Bool.false_eq_true, ↓reduceIte,
    prune_bindHole true hb 1 (by decide), prune_bindHole false hb 1 (by decide), h0, h1,
    SelfintClassNext.measure, nextTarget] at hh
  have ht := merged_rebound_targets e0 e1
  simp only [SelfintWidenHoist.bindHole, wire_lam, Nat.reduceAdd]
  omega

theorem shareC_next_frontier {Q : Term} (hQ : Next Q) : FrontierPrice (shareC Q) := by
  have hq := (next_price hQ).bits
  have hp := (rigidNext_parameters (rigid_of_next hQ)).2
  have hs := freeLeaves_split Q 1
  have hw := shareC_cost Q
  exact large_rigid_next_frontier (shareC_laws (rigid_of_next hQ)) (by omega)

theorem shareP_next_frontier {Q : Term} (hQ : Next Q) : FrontierPrice (shareP Q) := by
  have hq := next_rebound_bits hQ
  have hw : wire (shareP Q) = wire (SelfintWidenHoist.bindHole 0 Q) + 7 := by
    simp only [shareP, SelfintWidenHoist.hoist, wire_app, wire_lam, wire_var]
  exact large_rigid_next_frontier (shareP_laws (rigid_of_next hQ)) (by omega)

theorem single_parameter_alias_prices :
    wire (shareC canonicalNext) = 100 ∧ freeLeaves 0 (shareC canonicalNext) = 3 ∧
    wire (shareP canonicalNext) = 99 ∧ freeLeaves 0 (shareP canonicalNext) = 3 := by decide

/-! What source minimality does, and does not, remove. -/

def sourcePrice (s : Nat) (Q : Term) : Nat := wire Q + s * freeLeaves 0 Q

/-- A least source price, breaking price ties by the number of lambdas.
    s=0 addresses q>=92; s=3 addresses q+3F>=104. -/
structure MinimumRigidNext (s : Nat) (Q : Term) : Prop where
  laws : RigidNext Q
  price : ∀ U, RigidNext U → sourcePrice s Q ≤ sourcePrice s U
  lambdas : ∀ U, RigidNext U → sourcePrice s U = sourcePrice s Q → lamCount Q ≤ lamCount U

theorem AdminBeta.lambdas {t u : Term} (h : AdminBeta t u) : lamCount u < lamCount t := by
  induction h with
  | erase b a hz => simp only [contract, lamCount_subst, lamCount, hz, Nat.zero_mul]; omega
  | linear b a ho _ => simp only [contract, lamCount_subst, lamCount, ho, Nat.one_mul]; omega
  | lam h ih => simp only [lamCount]; omega
  | appL a h ih => simp only [lamCount]; omega
  | appR f h ih => simp only [lamCount]; omega

theorem AdminBeta.fill (C : Context) {t u : Term} (h : AdminBeta t u) :
    AdminBeta (C.fill t) (C.fill u) := by
  induction C with
  | hole => exact h
  | lam C ih => exact .lam ih
  | appL C a ih => exact .appL a ih
  | appR f C ih => exact .appR f ih

theorem MinimumRigidNext.no_admin {s : Nat} {Q U : Term} (hm : MinimumRigidNext s Q) :
    ¬ AdminBeta Q U := by
  intro ha
  have hu := hm.laws.beta ha.beta
  have hw := ha.wire
  have hc := Nat.mul_le_mul_left s (ha.captures hm.laws.scope)
  have hp := hm.price U hu
  have he : sourcePrice s U = sourcePrice s Q := by unfold sourcePrice at hp ⊢; omega
  have hl := hm.lambdas U hu he
  have hd := ha.lambdas
  omega

theorem MinimumRigidNext.no_erasing {s : Nat} (C : Context) (b a : Term)
    (hm : MinimumRigidNext s (C.fill (.app (.lam b) a))) : 0 < occ 0 b := by
  by_cases hz : occ 0 b = 0
  · exact (hm.no_admin ((AdminBeta.erase b a hz).fill C)).elim
  · omega

theorem MinimumRigidNext.linear_index_tax {s : Nat} (C : Context) (b a : Term)
    (hm : MinimumRigidNext s (C.fill (.app (.lam b) a))) (ho : occ 0 b = 1) :
    (6 + freeLeaves 1 b : Int) < ((freeLeaves 0 a : Int) - 1) * occDepth 0 b := by
  have hn : ¬ LinearTaxOK b a :=
    fun ht => hm.no_admin ((AdminBeta.linear b a ho ht).fill C)
  unfold LinearTaxOK at hn
  omega

theorem MinimumRigidNext.linear_captures {s : Nat} (C : Context) (b a : Term)
    (hm : MinimumRigidNext s (C.fill (.app (.lam b) a))) (ho : occ 0 b = 1) :
    2 ≤ freeLeaves 0 a := by
  by_cases hf : freeLeaves 0 a ≤ 1
  · exact (hm.no_admin ((AdminBeta.linear b a ho (linearTaxOK_small_free b a hf)).fill C)).elim
  · omega

theorem capture_parameters {Q : Term} (h : FreeUnder 2 Q) :
    freeLeaves 0 Q = occ 0 Q + occ 1 Q := by
  have h0 := freeLeaves_split Q 0
  have h1 := freeLeaves_split Q 1
  have hz := freeLeaves_closed Q 2 h
  simp only [Nat.reduceAdd] at h0 h1
  omega

/-- Exact source-capture accounting for a root redex in the two-slot frame. -/
theorem root_beta_captures (b a : Term) (hs : FreeUnder 2 (.app (.lam b) a)) :
    freeLeaves 0 (contract b a) + freeLeaves 0 a =
      freeLeaves 0 (.app (.lam b) a) + occ 0 b * freeLeaves 0 a := by
  have hu := beta_freeUnder (Beta.beta b a) 2 hs
  rw [capture_parameters hu, capture_parameters hs, capture_parameters hs.2]
  simp only [contract, occ_substDec_ge b a 0 0 (by omega),
    occ_substDec_ge b a 1 0 (by omega), occ, Nat.reduceAdd, Nat.mul_add]
  omega

/-- Source price balance at a root redex. In a deeper context, the added
    s-tax uses only the argument leaves free outside that context. -/
theorem root_beta_price_delta (s : Nat) (b a : Term)
    (hs : FreeUnder 2 (.app (.lam b) a)) :
    (sourcePrice s (contract b a) : Int) - sourcePrice s (.app (.lam b) a) =
      ((occ 0 b : Int) - 1) * wire a +
      ((freeLeaves 0 a : Int) - 1) * occDepth 0 b -
      2 * occ 0 b - 4 - freeLeaves 1 b +
      s * (((occ 0 b : Int) - 1) * freeLeaves 0 a) := by
  have hw := wire_beta_delta b a
  have hf := congrArg (fun n : Nat => (n : Int)) (root_beta_captures b a hs)
  simp only [Int.natCast_add, Int.natCast_mul] at hf
  have he : (freeLeaves 0 (contract b a) : Int) - freeLeaves 0 (.app (.lam b) a) =
      ((occ 0 b : Int) - 1) * freeLeaves 0 a := by
    simp only [Int.sub_mul, Int.one_mul]
    omega
  have hm := congrArg (fun z : Int => (s : Int) * z) he
  simp only [Int.mul_sub] at hm
  simp only [sourcePrice, Int.natCast_add, Int.natCast_mul]
  omega

/-- A small fixed example of a linear redex whose contraction grows by
    two bits. It is not asserted to satisfy RigidNext. -/
def linearGrowthBody : Term := .lam (.lam (.lam (.lam (.var 4))))
def linearGrowthArg : Term := .app (.app (.var 0) (.var 0)) (.var 0)

theorem linear_growth_price :
    occ 0 linearGrowthBody = 1 ∧
    wire (.app (.lam linearGrowthBody) linearGrowthArg) = 28 ∧
    wire (contract linearGrowthBody linearGrowthArg) = 30 ∧
    freeLeaves 0 (.app (.lam linearGrowthBody) linearGrowthArg) = 3 ∧
    freeLeaves 0 (contract linearGrowthBody linearGrowthArg) = 3 := by decide

/-- Elementary least-number principle, without extra library imports. -/
theorem nat_least_witness (P : Nat → Prop) (hex : ∃ n, P n) :
    ∃ n, P n ∧ ∀ m, P m → n ≤ m := by
  obtain ⟨n, hn⟩ := hex
  induction n using Nat.strongRecOn with
  | ind n ih =>
    by_cases hlo : ∃ m, m < n ∧ P m
    · obtain ⟨m, hmn, hm⟩ := hlo
      exact ih m hmn hm
    · refine ⟨n, hn, ?_⟩
      intro m hm
      by_cases hmn : n ≤ m
      · exact hmn
      · exact (hlo ⟨m, by omega, hm⟩).elim

/-- Well-ordering supplies the proposed minimum-price/fewest-lambdas
    witness. Existence is not the missing classification theorem. -/
theorem minimumRigidNext_exists (s : Nat) : ∃ Q, MinimumRigidNext s Q := by
  have hex : ∃ n, ∃ Q, RigidNext Q ∧ sourcePrice s Q = n :=
    ⟨_, canonicalNext, rigid_of_next canonicalNext_is_Next, rfl⟩
  obtain ⟨n, ⟨Q0, hQ0, he0⟩, hn⟩ := nat_least_witness _ hex
  have hlex : ∃ l, ∃ Q, RigidNext Q ∧ sourcePrice s Q = n ∧ lamCount Q = l :=
    ⟨_, Q0, hQ0, he0, rfl⟩
  obtain ⟨l, ⟨Q, hQ, he, hl⟩, hlmin⟩ := nat_least_witness _ hlex
  refine ⟨Q, hQ, ?_, ?_⟩
  · intro U hU
    rw [he]
    exact hn _ ⟨U, hU, rfl⟩
  · intro U hU hp
    rw [hl]
    exact hlmin _ ⟨U, hU, hp.trans he, rfl⟩

/-- Any violation at either requested price has a lexicographically
    minimal witness at no greater price, satisfying no_admin. -/
theorem minimum_counterexample {s bound : Nat} {Q : Term}
    (hQ : RigidNext Q) (hbad : sourcePrice s Q < bound) :
    ∃ U, MinimumRigidNext s U ∧ sourcePrice s U < bound := by
  obtain ⟨U, hu⟩ := minimumRigidNext_exists s
  exact ⟨U, hu, Nat.lt_of_le_of_lt (hu.price Q hQ) hbad⟩

/- BEGIN ONE-LET SOURCE CERTIFICATE -/
namespace OneLet

/-- Partial inverse of weakening; terms referring to one of the removed
    binders cannot be extruded. -/
def unshift (d c : Nat) : Term → Option Term
  | .var n => if n < c then some (.var n)
      else if c + d ≤ n then some (.var (n-d)) else none
  | .lam b => (unshift d (c+1) b).map Term.lam
  | .app f a => do
      let f' ← unshift d c f
      let a' ← unshift d c a
      pure (.app f' a')

theorem unshift_shift (t : Term) (d c : Nat) :
    unshift d c (shift d c t) = some t := by
  induction t generalizing c with
  | var n =>
    by_cases hn : c ≤ n
    · simp [shift, unshift, hn, show ¬ n+d<c by omega, show c+d≤n+d by omega]
    · simp [shift, unshift, hn, show n<c by omega]
  | lam b ih => simp only [shift, unshift, ih, Option.map_some]
  | app f a ihf iha => simp [shift, unshift, ihf, iha]

/-- All possible arguments of a used substitution producing t. -/
def arguments (d : Nat) : Term → List Term
  | .var n => (unshift d 0 (.var n)).toList
  | .lam b => ((unshift d 0 (.lam b)).toList ++ arguments (d+1) b).eraseDups
  | .app f a => ((unshift d 0 (.app f a)).toList ++ arguments d f ++ arguments d a).eraseDups

theorem arguments_root {t a : Term} {d : Nat} (h : unshift d 0 t = some a) :
    a ∈ arguments d t := by
  cases t <;> simp [arguments, h]

theorem arguments_lam {t a : Term} {d : Nat} (h : a ∈ arguments (d+1) t) :
    a ∈ arguments d (.lam t) := by simp only [arguments, List.mem_eraseDups, List.mem_append]; exact Or.inr h

theorem arguments_appL {t u a : Term} {d : Nat} (h : a ∈ arguments d t) :
    a ∈ arguments d (.app t u) := by
  simp only [arguments, List.mem_eraseDups, List.mem_append]
  exact Or.inl (Or.inr h)

theorem arguments_appR {t u a : Term} {d : Nat} (h : a ∈ arguments d u) :
    a ∈ arguments d (.app t u) := by
  simp only [arguments, List.mem_eraseDups, List.mem_append]
  exact Or.inr h

/-- Occurrence completeness, independent of source size or multiplicity. -/
theorem arguments_complete (b a : Term) (d : Nat) (ho : 0 < occ d b) :
    a ∈ arguments d (substDec d (shift d 0 a) b) := by
  induction b generalizing d with
  | var n =>
    have hn : n = d := by
      by_cases h : n = d
      · exact h
      · simp [occ, h] at ho
    subst n
    simp only [substDec, ↓reduceIte]
    exact arguments_root (unshift_shift a d 0)
  | lam b ih =>
    have hh := arguments_lam (ih (d+1) ho)
    simpa only [substDec, shift_shift0 1 d 0 a (Nat.zero_le d), Nat.add_comm 1 d] using hh
  | app f x ihf ihx =>
    simp only [occ] at ho
    by_cases hf : 0 < occ d f
    · exact arguments_appL (ihf d hf)
    · exact arguments_appR (ihx d (by omega))

/-- Every inverse substitution body. Rebuilding a variable inserts the hole
    slot; cutting an equal subtree replaces it with the hole. -/
def inverse (j : Nat) (a : Term) : Term → List Term
  | .var n => (if .var n = a then [.var j] else []) ++ [.var (if n<j then n else n+1)]
  | .lam b => (if .lam b = a then [.var j] else []) ++
      (inverse (j+1) (shift 1 0 a) b).map Term.lam
  | .app f x => (if .app f x = a then [.var j] else []) ++
      (inverse j a f).flatMap (fun g => (inverse j a x).map (Term.app g))

theorem inverse_cut (j : Nat) (a : Term) : .var j ∈ inverse j a a := by
  cases a <;> simp [inverse]

theorem inverse_complete (b a : Term) (j : Nat) :
    b ∈ inverse j a (substDec j a b) := by
  induction b generalizing a j with
  | var n =>
    by_cases he : n = j
    · subst n; simp only [substDec, ↓reduceIte]; exact inverse_cut j a
    · by_cases hg : j < n
      · have hn : ¬ n-1<j := by omega
        simp only [substDec, if_neg he, if_pos hg, inverse, List.mem_append]
        right
        simp [hn, show n-1+1=n by omega]
      · have hn : n<j := by omega
        simp only [substDec, if_neg he, if_neg hg, inverse, List.mem_append]
        right; simp [hn]
  | lam b ih =>
    simp only [substDec, inverse, List.mem_append]
    right; exact List.mem_map.mpr ⟨b, ih _ _, rfl⟩
  | app f x ihf ihx =>
    simp only [substDec, inverse, List.mem_append]
    right
    exact List.mem_flatMap.mpr ⟨f, ihf _ _, List.mem_map.mpr ⟨x, ihx _ _, rfl⟩⟩

def cuts (t : Term) : List (Term × Term) :=
  (arguments 0 t).flatMap (fun a => (inverse 0 a t).map (fun b => (a,b)))

theorem cuts_complete (b a : Term) (ho : 0 < occ 0 b) :
    (a,b) ∈ cuts (contract b a) := by
  have hm := arguments_complete b a 0 ho
  simp only [shift_zero] at hm
  exact List.mem_flatMap.mpr ⟨a, hm, List.mem_map.mpr ⟨b, inverse_complete b a 0, rfl⟩⟩

def minOver (base : Nat) : List Nat → Nat
  | [] => base
  | x::xs => min x (minOver base xs)

theorem minOver_base (n : Nat) (xs : List Nat) : minOver n xs ≤ n := by
  induction xs with
  | nil => exact Nat.le_refl _
  | cons x xs ih => exact Nat.le_trans (Nat.min_le_right _ _) ih

theorem minOver_mem {n x : Nat} {xs : List Nat} (h : x ∈ xs) : minOver n xs ≤ x := by
  induction xs with
  | nil => simp at h
  | cons a xs ih =>
    simp only [List.mem_cons] at h
    rcases h with rfl | h
    · exact Nat.min_le_left _ _
    · exact Nat.le_trans (Nat.min_le_right _ _) (ih h)

theorem wire_two (t : Term) : 2 ≤ wire t := by cases t <;> simp only [wire_var, wire_lam, wire_app] <;> omega

/-- Structural Boolean pruning. Choices may occur in function position and
    may have further arguments. Only complete two-arm tag uses are admitted. -/
inductive Plain : Nat → Term → Term → Term → Prop
  | var (j n : Nat) (hn : n ≠ j) : Plain j (.var n) (.var n) (.var n)
  | lam {j b u v} : Plain (j+1) b u v → Plain j (.lam b) (.lam u) (.lam v)
  | app {j f f0 f1 a a0 a1} : Plain j f f0 f1 → Plain j a a0 a1 →
      Plain j (.app f a) (.app f0 a0) (.app f1 a1)
  | select {j s s0 s1 t t0 t1} : Plain j s s0 s1 → Plain j t t0 t1 →
      Plain j (.app (.app (.var j) s) t) s0 t1

theorem Plain.single (bits : Bool) {j : Nat} {t u v : Term} (h : Plain j t u v) :
    SelfintClassNext.measure bits j u ≤ SelfintClassNext.measure bits j t ∧
    SelfintClassNext.measure bits j v ≤ SelfintClassNext.measure bits j t := by
  induction h with
  | var => exact ⟨Nat.le_refl _, Nat.le_refl _⟩
  | lam h ih => simp only [measure_lam]; constructor <;> omega
  | app hf ha ihf iha => simp only [measure_app]; constructor <;> omega
  | select hs ht ihs iht => simp only [measure_select]; constructor <;> omega

theorem Plain.absent {j : Nat} {t u v : Term} (h : Plain j t u v) :
    occ j u = 0 ∧ occ j v = 0 := by
  induction h with
  | var j n hn => simp [occ, hn]
  | lam h ih => exact ih
  | app hf ha ihf iha => simp [occ, ihf.1, ihf.2, iha.1, iha.2]
  | select hs ht ihs iht => exact ⟨ihs.1,iht.2⟩

theorem Plain.semantic (first : Bool) {j : Nat} {t u v : Term} (h : Plain j t u v) :
    Betas (substDec j (tagValue first) t)
      (substDec j churchTrue (if first then u else v)) := by
  induction h with
  | var j n hn => cases first <;> simp only [Bool.false_eq_true, ↓reduceIte, substDec, if_neg hn] <;> exact .refl _
  | lam h ih =>
    cases first <;>
      simpa only [Bool.false_eq_true, ↓reduceIte, substDec, tagValue_shift, shift_churchTrue] using betas_lam ih
  | app hf ha ihf iha =>
    cases first <;> exact betas_app ihf iha
  | select hs ht ihs iht =>
    rename_i j s s0 s1 t t0 t1
    have hh := select_beta first (substDec j (tagValue first) s) (substDec j (tagValue first) t)
    simp only [substDec, ↓reduceIte]
    cases first
    · exact betas_trans hh iht
    · exact betas_trans hh ihs

/-- The merge recurrence deliberately allows every shared application node;
    it needs no same-spine or source-normality restriction. -/
def merge (bits : Bool) (j : Nat) : Term → Term → Nat
  | .var n, .var m => if n=m then
      min (choicePrice bits j (.var n) (.var m)) (SelfintClassNext.measure bits j (.var n))
      else choicePrice bits j (.var n) (.var m)
  | .lam a, .lam b => min (choicePrice bits j (.lam a) (.lam b))
      (nodeCharge bits + merge bits (j+1) a b)
  | .app f a, .app g b => min (choicePrice bits j (.app f a) (.app g b))
      (nodeCharge bits + merge bits j f g + merge bits j a b)
  | a,b => choicePrice bits j a b

theorem merge_choice (bits : Bool) (j : Nat) (a b : Term) :
    merge bits j a b ≤ choicePrice bits j a b := by
  cases a <;> cases b <;> simp only [merge]
  all_goals try first | exact Nat.le_refl _ | exact Nat.min_le_left _ _
  split <;> first | exact Nat.le_refl _ | exact Nat.min_le_left _ _

theorem Plain.merged (bits : Bool) {j : Nat} {t u v : Term} (h : Plain j t u v) :
    merge bits j u v ≤ SelfintClassNext.measure bits j t := by
  induction h with
  | var => simp only [merge, ↓reduceIte]; exact Nat.min_le_right _ _
  | lam h ih =>
    simp only [merge, measure_lam]
    exact Nat.le_trans (Nat.min_le_right _ _) (Nat.add_le_add_left ih _)
  | app hf ha ihf iha =>
    simp only [merge, measure_app]
    exact Nat.le_trans (Nat.min_le_right _ _) (Nat.add_le_add (Nat.add_le_add_left ihf _) iha)
  | select hs ht ihs iht =>
    rename_i j s s0 s1 t t0 t1
    have h := merge_choice bits j s0 t1
    have hu := (hs.single bits).1
    have hv := (ht.single bits).2
    simp only [choicePrice, measure_select] at h ⊢
    exact Nat.le_trans h (Nat.add_le_add (Nat.add_le_add_left hu _) hv)

theorem merge_targets (e0 e1 : Bool) :
    90 ≤ merge true 0 (shift 1 0 (etaChoice e0 nextZero)) (shift 1 0 (etaChoice e1 nextOne)) ∧
    4 ≤ merge false 0 (shift 1 0 (etaChoice e0 nextZero)) (shift 1 0 (etaChoice e1 nextOne)) := by
  cases e0 <;> cases e1 <;> decide

/-- The semantic bridge only needs a normal, tag-absent projection. -/
theorem rigid_projection {Q t : Term} (h : RigidNext Q) (first : Bool)
    (hn : NFt t) (ha : occ 0 t = 0)
    (hr : Betas (.app Q (tagValue first)) (substDec 0 churchTrue t)) :
    ∃ e, t = shift 1 0 (etaChoice e (nextTarget first)) := by
  let w := substDec 0 churchTrue t
  have hw : NFt w := nft_subst_absent _ 0 churchTrue hn ha
  have hws : FreeUnder 2 w := SelfintClassNext.betas_scope hr 2 ⟨h.scope, by cases first <;> decide⟩
  have htn := nft_normal (show NFt (.app (nextTarget first) (.var 2)) from
    ⟨nextTarget_nonlam first, nextTarget_normal first, trivial⟩)
  have hl : Betas (.app w (.var 2)) (.app (nextTarget first) (.var 2)) :=
    betas_preserve_nf (betas_appL (.var 2) hr) (h.red first) htn
  have hp := normal_applied_fresh hw hws (nextTarget_normal first) (nextTarget_nonlam first)
    (nextTarget_scope first) ⟨_, hl, .refl _⟩
  have hi : shift 1 0 w = t := shift_subst_absent _ 0 churchTrue ha
  rcases hp with hp | hp
  · exact ⟨false, hi.symm.trans (congrArg (shift 1 0) hp)⟩
  · exact ⟨true, hi.symm.trans (congrArg (shift 1 0) hp)⟩

theorem plain_next_price {b u v : Term} (h : RigidNext (.lam b))
    (hp : Plain 0 b u v) (hu : NFt u) (hv : NFt v) : NextPrice (.lam b) := by
  obtain ⟨e0,h0⟩ := rigid_projection h true hu hp.absent.1
    (.head (.beta b (tagValue true)) (hp.semantic true))
  obtain ⟨e1,h1⟩ := rigid_projection h false hv hp.absent.2
    (.head (.beta b (tagValue false)) (hp.semantic false))
  have hm := merge_targets e0 e1
  have hb := hp.merged true
  have hc := hp.merged false
  rw [h0,h1] at hb hc
  refine ⟨?_, Nat.le_trans hm.2 hc⟩
  have hn : 90 ≤ wire b := Nat.le_trans hm.1 hb
  simp only [wire_lam]; omega

/-- The local one-let price; both branch-specific argument trees are merged
    into one source argument and therefore charged once. -/
def root (j : Nat) (t u : Term) : Nat :=
  minOver (6 + merge true (j+1) (shift 1 0 t) (shift 1 0 u))
    (((cuts t).map (fun ab => 4 + wire ab.1 + merge true (j+1) ab.2 (shift 1 0 u))) ++
     ((cuts u).map (fun ab => 4 + wire ab.1 + merge true (j+1) (shift 1 0 t) ab.2)) ++
     ((cuts t).flatMap (fun ab => (cuts u).map (fun cd =>
        4 + merge true j ab.1 cd.1 + merge true (j+1) ab.2 cd.2))))

theorem root_none (j : Nat) (t u : Term) :
    root j t u ≤ 6 + merge true (j+1) (shift 1 0 t) (shift 1 0 u) := minOver_base _ _

theorem root_left {j : Nat} {t u a b : Term} (h : (a,b) ∈ cuts t) :
    root j t u ≤ 4 + wire a + merge true (j+1) b (shift 1 0 u) := by
  apply minOver_mem
  exact List.mem_append_left _ (List.mem_append_left _ (List.mem_map.mpr ⟨(a,b),h,rfl⟩))

theorem root_right {j : Nat} {t u a b : Term} (h : (a,b) ∈ cuts u) :
    root j t u ≤ 4 + wire a + merge true (j+1) (shift 1 0 t) b := by
  apply minOver_mem
  exact List.mem_append_left _ (List.mem_append_right _ (List.mem_map.mpr ⟨(a,b),h,rfl⟩))

theorem root_both {j : Nat} {t u a b c d : Term}
    (h : (a,b) ∈ cuts t) (k : (c,d) ∈ cuts u) :
    root j t u ≤ 4 + merge true j a c + merge true (j+1) b d := by
  apply minOver_mem
  exact List.mem_append_right _ (List.mem_flatMap.mpr ⟨(a,b),h,List.mem_map.mpr ⟨(c,d),k,rfl⟩⟩)

theorem root_lower {j : Nat} {b b0 b1 a a0 a1 : Term}
    (hb : Plain (j+1) b b0 b1) (ha : Plain j a a0 a1) :
    root j (contract b0 a0) (contract b1 a1) ≤ wire (.app (.lam b) a) := by
  have hbm : merge true (j+1) b0 b1 ≤ wire b := hb.merged true
  have ham : merge true j a0 a1 ≤ wire a := ha.merged true
  have ha0 : wire a0 ≤ wire a := (ha.single true).1
  have ha1 : wire a1 ≤ wire a := (ha.single true).2
  have wa := wire_two a
  simp only [wire_app, wire_lam]
  by_cases h0 : occ 0 b0 = 0
  · have he0 := shift_subst_absent b0 0 a0 h0
    change shift 1 0 (contract b0 a0) = b0 at he0
    by_cases h1 : occ 0 b1 = 0
    · have he1 := shift_subst_absent b1 0 a1 h1
      change shift 1 0 (contract b1 a1) = b1 at he1
      have hm := root_none j (contract b0 a0) (contract b1 a1)
      rw [he0,he1] at hm
      omega
    · have hm := root_right (j:=j) (t:=contract b0 a0) (cuts_complete b1 a1 (by omega))
      rw [he0] at hm
      omega
  · by_cases h1 : occ 0 b1 = 0
    · have he1 := shift_subst_absent b1 0 a1 h1
      change shift 1 0 (contract b1 a1) = b1 at he1
      have hm := root_left (j:=j) (u:=contract b1 a1) (cuts_complete b0 a0 (by omega))
      rw [he1] at hm
      omega
    · have hm := root_both (j:=j) (cuts_complete b0 a0 (by omega)) (cuts_complete b1 a1 (by omega))
      omega

/-- A one-branch source lower bound when exactly one designated let is
    present; the +6 alternative covers a let erased by Boolean selection. -/
def singleBase (t : Term) : Nat :=
  minOver (wire t + 6) ((cuts t).map (fun ab => 4 + wire ab.1 + wire ab.2))

def singleExact : Term → Nat
  | .var n => singleBase (.var n)
  | .lam b => min (singleBase (.lam b)) (2 + singleExact b)
  | .app f a => min (singleBase (.app f a))
      (min (2 + singleExact f + wire a) (2 + wire f + singleExact a))

theorem singleExact_base (t : Term) : singleExact t ≤ singleBase t := by
  cases t <;> simp only [singleExact]
  · exact Nat.le_refl _
  · exact Nat.min_le_left _ _
  · exact Nat.min_le_left _ _

theorem singleExact_wire (t : Term) : singleExact t ≤ wire t + 6 :=
  Nat.le_trans (singleExact_base t) (minOver_base _ _)

theorem singleExact_let (b a : Term) :
    singleExact (contract b a) ≤ 4 + wire a + wire b := by
  by_cases hz : occ 0 b = 0
  · have he := shift_subst_absent b 0 a hz
    change shift 1 0 (contract b a) = b at he
    have hw := wire_shift (contract b a) 1 0
    change wire (shift 1 0 (contract b a)) = _ at hw
    rw [he] at hw
    have hb := singleExact_wire (contract b a)
    have ha := wire_two a
    omega
  · exact Nat.le_trans (singleExact_base _) (minOver_mem
      (List.mem_map.mpr ⟨(a,b),cuts_complete b a (by omega),rfl⟩))

theorem singleExact_lam (b : Term) : singleExact (.lam b) ≤ 2 + singleExact b :=
  Nat.min_le_right _ _

theorem singleExact_appL (f a : Term) : singleExact (.app f a) ≤ 2 + singleExact f + wire a :=
  Nat.le_trans (Nat.min_le_right _ _) (Nat.min_le_left _ _)

theorem singleExact_appR (f a : Term) : singleExact (.app f a) ≤ 2 + wire f + singleExact a :=
  Nat.le_trans (Nat.min_le_right _ _) (Nat.min_le_right _ _)

/-- Exactly one designated let in arbitrary context, including a discarded
    Boolean arm. Its two projections contract that let syntactically. -/
inductive Once : Nat → Term → Term → Term → Prop
  | lam {j b u v} : Once (j+1) b u v → Once j (.lam b) (.lam u) (.lam v)
  | appL {j f f0 f1 a a0 a1} : Once j f f0 f1 → Plain j a a0 a1 →
      Once j (.app f a) (.app f0 a0) (.app f1 a1)
  | appR {j f f0 f1 a a0 a1} : Plain j f f0 f1 → Once j a a0 a1 →
      Once j (.app f a) (.app f0 a0) (.app f1 a1)
  | selectL {j s s0 s1 t t0 t1} : Once j s s0 s1 → Plain j t t0 t1 →
      Once j (.app (.app (.var j) s) t) s0 t1
  | selectR {j s s0 s1 t t0 t1} : Plain j s s0 s1 → Once j t t0 t1 →
      Once j (.app (.app (.var j) s) t) s0 t1
  | letNode {j b b0 b1 a a0 a1} : Plain (j+1) b b0 b1 → Plain j a a0 a1 →
      Once j (.app (.lam b) a) (contract b0 a0) (contract b1 a1)

theorem Once.absent {j : Nat} {t u v : Term} (h : Once j t u v) :
    occ j u = 0 ∧ occ j v = 0 := by
  induction h with
  | lam h ih => exact ih
  | appL hf ha ih => simp [occ, ih.1, ih.2, ha.absent.1, ha.absent.2]
  | appR hf ha ih => simp [occ, ih.1, ih.2, hf.absent.1, hf.absent.2]
  | selectL hs ht ih => exact ⟨ih.1,ht.absent.2⟩
  | selectR hs ht ih => exact ⟨hs.absent.1,ih.2⟩
  | letNode hb ha =>
    rename_i j b b0 b1 a a0 a1
    simp [contract, occ_substDec_ge b0 a0 j 0 (Nat.zero_le j),
      occ_substDec_ge b1 a1 j 0 (Nat.zero_le j), hb.absent.1, hb.absent.2,
      ha.absent.1, ha.absent.2]

theorem Once.semantic (first : Bool) {j : Nat} {t u v : Term} (h : Once j t u v) :
    Betas (substDec j (tagValue first) t)
      (substDec j churchTrue (if first then u else v)) := by
  induction h with
  | lam h ih =>
    cases first <;>
      simpa only [Bool.false_eq_true, ↓reduceIte, substDec, tagValue_shift, shift_churchTrue] using betas_lam ih
  | appL hf ha ih => cases first <;> exact betas_app ih (ha.semantic _)
  | appR hf ha ih => cases first <;> exact betas_app (hf.semantic _) ih
  | selectL hs ht ih =>
    rename_i j s s0 s1 t t0 t1
    have hh := select_beta first (substDec j (tagValue first) s) (substDec j (tagValue first) t)
    simp only [substDec, ↓reduceIte]
    cases first
    · exact betas_trans hh (ht.semantic false)
    · exact betas_trans hh ih
  | selectR hs ht ih =>
    rename_i j s s0 s1 t t0 t1
    have hh := select_beta first (substDec j (tagValue first) s) (substDec j (tagValue first) t)
    simp only [substDec, ↓reduceIte]
    cases first
    · exact betas_trans hh ih
    · exact betas_trans hh (hs.semantic true)
  | letNode hb ha =>
    rename_i j b b0 b1 a a0 a1
    have hh := betas_app (betas_lam (hb.semantic first)) (ha.semantic first)
    have hr := Beta.beta (substDec (j+1) churchTrue (if first then b0 else b1))
      (substDec j churchTrue (if first then a0 else a1))
    cases first <;>
      simpa only [Bool.false_eq_true, ↓reduceIte, substDec, tagValue_shift,
        substDec_contract, shift_churchTrue] using betas_trans hh (.head hr (.refl _))

theorem Once.single {j : Nat} {t u v : Term} (h : Once j t u v) :
    singleExact u ≤ wire t ∧ singleExact v ≤ wire t := by
  induction h with
  | lam h ih =>
    rename_i j b u v
    have h0 := singleExact_lam u
    have h1 := singleExact_lam v
    simp only [wire_lam]; constructor <;> omega
  | appL hf ha ih =>
    rename_i j f f0 f1 a a0 a1
    have h0 := singleExact_appL f0 a0
    have h1 := singleExact_appL f1 a1
    have ha0 : wire a0 ≤ wire a := (ha.single true).1
    have ha1 : wire a1 ≤ wire a := (ha.single true).2
    simp only [wire_app]; constructor <;> omega
  | appR hf ha ih =>
    rename_i j f f0 f1 a a0 a1
    have h0 := singleExact_appR f0 a0
    have h1 := singleExact_appR f1 a1
    have hf0 : wire f0 ≤ wire f := (hf.single true).1
    have hf1 : wire f1 ≤ wire f := (hf.single true).2
    simp only [wire_app]; constructor <;> omega
  | selectL hs ht ih =>
    rename_i j s s0 s1 t t0 t1
    have h1 := singleExact_wire t1
    have ht1 : wire t1 ≤ wire t := (ht.single true).2
    simp only [wire_app, wire_var]; constructor <;> omega
  | selectR hs ht ih =>
    rename_i j s s0 s1 t t0 t1
    have h0 := singleExact_wire s0
    have hs0 : wire s0 ≤ wire s := (hs.single true).1
    simp only [wire_app, wire_var]; constructor <;> omega
  | letNode hb ha =>
    rename_i j b b0 b1 a a0 a1
    have h0 := singleExact_let b0 a0
    have h1 := singleExact_let b1 a1
    have hb0 : wire b0 ≤ wire b := (hb.single true).1
    have hb1 : wire b1 ≤ wire b := (hb.single true).2
    have ha0 : wire a0 ≤ wire a := (ha.single true).1
    have ha1 : wire a1 ≤ wire a := (ha.single true).2
    simp only [wire_app, wire_lam]; constructor <;> omega

/-- Recurrence for the entire source context around its one let. -/
def exactBase (j : Nat) (t u : Term) : Nat :=
  min (root j t u) (min (j+6+singleExact t+wire u) (j+6+wire t+singleExact u))

def mergeExact (j : Nat) : Term → Term → Nat
  | .lam b, .lam c => min (exactBase j (.lam b) (.lam c)) (2+mergeExact (j+1) b c)
  | .app f a, .app g b => min (exactBase j (.app f a) (.app g b))
      (min (2+mergeExact j f g+merge true j a b) (2+merge true j f g+mergeExact j a b))
  | t,u => exactBase j t u

theorem mergeExact_base (j : Nat) (t u : Term) : mergeExact j t u ≤ exactBase j t u := by
  cases t <;> cases u <;> simp only [mergeExact]
  all_goals first | exact Nat.le_refl _ | exact Nat.min_le_left _ _

theorem mergeExact_root (j : Nat) (t u : Term) : mergeExact j t u ≤ root j t u :=
  Nat.le_trans (mergeExact_base j t u) (Nat.min_le_left _ _)

theorem mergeExact_choiceL (j : Nat) (t u : Term) :
    mergeExact j t u ≤ j+6+singleExact t+wire u :=
  Nat.le_trans (mergeExact_base j t u)
    (Nat.le_trans (Nat.min_le_right _ _) (Nat.min_le_left _ _))

theorem mergeExact_choiceR (j : Nat) (t u : Term) :
    mergeExact j t u ≤ j+6+wire t+singleExact u :=
  Nat.le_trans (mergeExact_base j t u)
    (Nat.le_trans (Nat.min_le_right _ _) (Nat.min_le_right _ _))

theorem Once.merged {j : Nat} {t u v : Term} (h : Once j t u v) :
    mergeExact j u v ≤ wire t := by
  induction h with
  | lam h ih =>
    simp only [mergeExact, wire_lam]
    apply Nat.le_trans (Nat.min_le_right _ _)
    omega
  | appL hf ha ih =>
    rename_i j f f0 f1 a a0 a1
    have ham : merge true j a0 a1 ≤ wire a := ha.merged true
    simp only [mergeExact, wire_app]
    apply Nat.le_trans (Nat.le_trans (Nat.min_le_right _ _) (Nat.min_le_left _ _))
    omega
  | appR hf ha ih =>
    rename_i j f f0 f1 a a0 a1
    have hfm : merge true j f0 f1 ≤ wire f := hf.merged true
    simp only [mergeExact, wire_app]
    apply Nat.le_trans (Nat.le_trans (Nat.min_le_right _ _) (Nat.min_le_right _ _))
    omega
  | selectL hs ht ih =>
    rename_i j s s0 s1 t t0 t1
    have hm := mergeExact_choiceL j s0 t1
    have hs0 := hs.single.1
    have ht1 : wire t1 ≤ wire t := (ht.single true).2
    simp only [wire_app, wire_var]; omega
  | selectR hs ht ih =>
    rename_i j s s0 s1 t t0 t1
    have hm := mergeExact_choiceR j s0 t1
    have hs0 : wire s0 ≤ wire s := (hs.single true).1
    have ht1 := ht.single.2
    simp only [wire_app, wire_var]; omega
  | letNode hb ha => exact Nat.le_trans (mergeExact_root _ _ _) (root_lower hb ha)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 8000000 in
theorem mergeExact_targets (e0 e1 : Bool) :
    96 ≤ mergeExact 0 (shift 1 0 (etaChoice e0 nextZero)) (shift 1 0 (etaChoice e1 nextOne)) := by
  cases e0 <;> cases e1 <;> decide

theorem once_next_bits {b u v : Term} (h : RigidNext (.lam b))
    (hp : Once 0 b u v) (hu : NFt u) (hv : NFt v) : 98 ≤ wire (.lam b) := by
  obtain ⟨e0,h0⟩ := rigid_projection h true hu hp.absent.1
    (.head (.beta b (tagValue true)) (hp.semantic true))
  obtain ⟨e1,h1⟩ := rigid_projection h false hv hp.absent.2
    (.head (.beta b (tagValue false)) (hp.semantic false))
  have hm := mergeExact_targets e0 e1
  have hb := hp.merged
  rw [h0,h1] at hb
  have hh : 96 ≤ wire b := Nat.le_trans hm hb
  simp only [wire_lam]; omega

/-- A single shared argument introduced before the Boolean binder. -/
def outside (t u : Term) : Nat :=
  minOver (8 + merge true 0 (shift 1 1 t) (shift 1 1 u))
    ((arguments 1 t ++ arguments 1 u).flatMap (fun a =>
      (inverse 1 (shift 1 0 a) t).flatMap (fun b =>
        (inverse 1 (shift 1 0 a) u).map (fun c => 6 + wire a + merge true 0 b c))))

theorem outside_none (t u : Term) :
    outside t u ≤ 8 + merge true 0 (shift 1 1 t) (shift 1 1 u) := minOver_base _ _

theorem outside_used {t u a b c : Term}
    (ha : a ∈ arguments 1 t ++ arguments 1 u)
    (hb : b ∈ inverse 1 (shift 1 0 a) t)
    (hc : c ∈ inverse 1 (shift 1 0 a) u) :
    outside t u ≤ 6 + wire a + merge true 0 b c := by
  apply minOver_mem
  exact List.mem_flatMap.mpr ⟨a,ha,List.mem_flatMap.mpr ⟨b,hb,List.mem_map.mpr ⟨c,hc,rfl⟩⟩⟩

theorem outside_lower {b u v : Term} (a : Term) (h : Plain 0 b u v) :
    outside (substDec 1 (shift 1 0 a) u) (substDec 1 (shift 1 0 a) v) ≤
      wire (.app (.lam (.lam b)) a) := by
  have hm : merge true 0 u v ≤ wire b := h.merged true
  have wa := wire_two a
  simp only [wire_app, wire_lam]
  by_cases h0 : occ 1 u = 0
  · by_cases h1 : occ 1 v = 0
    · have he0 := shift_subst_absent u 1 (shift 1 0 a) h0
      have he1 := shift_subst_absent v 1 (shift 1 0 a) h1
      have hh := outside_none (substDec 1 (shift 1 0 a) u) (substDec 1 (shift 1 0 a) v)
      rw [he0,he1] at hh
      omega
    · have hh := outside_used
        (List.mem_append_right _ (arguments_complete v a 1 (by omega)))
        (inverse_complete u (shift 1 0 a) 1) (inverse_complete v (shift 1 0 a) 1)
      omega
  · have hh := outside_used
      (List.mem_append_left _ (arguments_complete u a 1 (by omega)))
      (inverse_complete u (shift 1 0 a) 1) (inverse_complete v (shift 1 0 a) 1)
    omega

theorem outside_absent (a u : Term) (hu : occ 0 u = 0) :
    occ 0 (substDec 1 (shift 1 0 a) u) = 0 := by
  rw [occ_substDec_lt u (shift 1 0 a) 0 1 (by omega), hu, occ_shift_eq]
  omega

theorem outside_semantic (first : Bool) (a : Term) {b u v : Term} (h : Plain 0 b u v) :
    Betas (.app (.app (.lam (.lam b)) a) (tagValue first))
      (substDec 0 churchTrue (substDec 1 (shift 1 0 a) (if first then u else v))) := by
  have hh := SelfintControl.betas_subst (h.semantic first) 0 a
  rw [substDec_substDec b (tagValue first) a 0 0 (Nat.le_refl 0),
    substDec_substDec (if first then u else v) churchTrue a 0 0 (Nat.le_refl 0),
    substDec_churchTrue] at hh
  have ht : substDec 0 a (tagValue first) = tagValue first := by
    cases first <;> simp [tagValue, substDec_churchTrue, substDec_churchFalse]
  rw [ht] at hh
  exact .head (.appL (tagValue first) (.beta (.lam b) a))
    (.head (.beta (substDec 1 (shift 1 0 a) b) (tagValue first)) hh)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 8000000 in
theorem outside_targets (e0 e1 : Bool) :
    99 ≤ outside (shift 1 0 (etaChoice e0 nextZero)) (shift 1 0 (etaChoice e1 nextOne)) := by
  cases e0 <;> cases e1 <;> decide

theorem outside_next_bits {a b u v : Term} (h : RigidNext (.app (.lam (.lam b)) a))
    (hp : Plain 0 b u v) (hu : NFt (substDec 1 (shift 1 0 a) u))
    (hv : NFt (substDec 1 (shift 1 0 a) v)) : 99 ≤ wire (.app (.lam (.lam b)) a) := by
  obtain ⟨e0,h0⟩ := rigid_projection h true hu (outside_absent a u hp.absent.1)
    (outside_semantic true a hp)
  obtain ⟨e1,h1⟩ := rigid_projection h false hv (outside_absent a v hp.absent.2)
    (outside_semantic false a hp)
  have hm := outside_targets e0 e1
  have hb := outside_lower a hp
  rw [h0,h1] at hb
  exact Nat.le_trans hm hb

/-- Precisely the source family settled here. Normality is imposed on the
    two projections, after the designated let contraction, not on the source. -/
inductive Covered : Term → Prop
  | plain {b u v} : Plain 0 b u v → NFt u → NFt v → Covered (.lam b)
  | once {b u v} : Once 0 b u v → NFt u → NFt v → Covered (.lam b)
  | outside {a b u v} : Plain 0 b u v → NFt (substDec 1 (shift 1 0 a) u) →
      NFt (substDec 1 (shift 1 0 a) v) → Covered (.app (.lam (.lam b)) a)

theorem covered_frontier {Q : Term} (h : RigidNext Q) (hc : Covered Q) : FrontierPrice Q := by
  cases hc with
  | plain hp hu hv =>
    have hn := plain_next_price h hp hu hv
    have hq := hn.bits
    have hf := hn.captures
    constructor <;> omega
  | once hp hu hv => exact large_rigid_next_frontier h (once_next_bits h hp hu hv)
  | outside hp hu hv =>
    have hq := outside_next_bits h hp hu hv
    exact large_rigid_next_frontier h (by omega)

/-- Any number of previously proved cost-safe administrative contractions
    may precede the covered endpoint. -/
theorem covered_admin_frontier {Q Q0 : Term} (h : RigidNext Q)
    (hr : AdminBetas Q Q0) (hc : Covered Q0) : FrontierPrice Q := by
  have hs := SelfintClassNext.betas_scope hr.betas 2 h.scope
  have h0 : RigidNext Q0 := ⟨hs, fun first => ⟨_,
    betas_preserve_nf (betas_appL (.var 2) (betas_appL (tagValue first) hr.betas))
      (h.red first) (nft_normal ⟨nextTarget_nonlam first, nextTarget_normal first, trivial⟩),
    .refl _⟩⟩
  have hp := covered_frontier h0 hc
  have hm := hr.price h.scope
  have hb := hp.bits
  have hd := hp.depth_three
  constructor <;> omega

/-- The old two-arm normal fragment embeds in the new projection grammar. -/
theorem plain_of_tagged {k : Bool} {j : Nat} {t : Term} (h : Tagged k j t) :
    Plain j t (prune true j t) (prune false j t) := by
  induction h with
  | var hn => exact .var _ _ hn
  | app hf ha ihf iha =>
    rw [prune_ordinary_app true hf, prune_ordinary_app false hf]
    exact .app ihf iha
  | neutral h ih => exact ih
  | lam h ih => exact .lam ih
  | select hu hv ihu ihv =>
    simp only [prune_select, Bool.false_eq_true, ↓reduceIte]
    exact .select ihu ihv

theorem next_covered {Q : Term} (h : Next Q) : Covered Q := by
  obtain ⟨b,he⟩ := h.lambda
  subst Q
  have ht : Tagged false 0 b :=
    (tagged_of_twoArm b 0 0 (normal_nft (t:=.lam b) h.normal) (h.twoArm b rfl)).1 rfl
  exact .plain (plain_of_tagged ht) (prune_normal true ht).1 (prune_normal false ht).1

set_option maxRecDepth 100000 in
set_option maxHeartbeats 12000000 in
theorem fixed_target_values (e0 e1 : Bool) :
    let t := shift 1 0 (etaChoice e0 nextZero)
    let u := shift 1 0 (etaChoice e1 nextOne)
    merge true 0 t u = (if e0 then if e1 then 101 else 105 else if e1 then 106 else 90) ∧
    merge false 0 t u = (if e0 then if e1 then 4 else 5 else if e1 then 5 else 4) ∧
    mergeExact 0 t u = (if e0 then if e1 then 103 else 110 else if e1 then 110 else 96) ∧
    outside t u = (if e0 then if e1 then 110 else 113 else if e1 then 112 else 99) := by
  cases e0 <;> cases e1 <;> decide

/-- A fixed head-position choice witnesses a strict widening of the old
    two-arm restriction, while both projections are already normal. -/
def canonicalCont : Term := match canonicalBody with | .app _ a => a | _ => .var 0

def headChoiceNext : Term := .lam
  (.app (.app (.app (.var 0) (.var 2)) (.var 2)) canonicalCont)

theorem canonicalCont_tagged : Tagged false 0 canonicalCont :=
  (tagged_of_twoArm canonicalCont 0 0 (by decide)
    (by simp only [canonicalCont, canonicalBody, canonicalNext, TwoArmUse]; decide)).1 rfl

theorem headChoice_covered : Covered headChoiceNext := by
  exact .plain (.app (.select (.var 0 2 (by decide)) (.var 0 2 (by decide)))
    (plain_of_tagged canonicalCont_tagged)) (by decide) (by decide)

theorem headChoice_laws : RigidNext headChoiceNext := by
  refine ⟨by decide, fun first => ⟨_, ?_, .refl _⟩⟩
  apply normalSteps_sound (n:=5)
  cases first <;> decide

theorem headChoice_not_old : ¬ Next headChoiceNext := by
  intro h
  have hh := h.twoArm _ rfl
  have hn : 3 = 2 := hh.1.1.1 rfl
  omega

theorem headChoice_prices : wire headChoiceNext = 102 ∧ freeLeaves 0 headChoiceNext = 5 := by decide

/-- One administrative identity let attains the 98-bit source bound. -/
def identityNext : Term := .lam (.app (.app (.lam (.var 0)) (.var 2)) canonicalCont)

theorem identityNext_covered : Covered identityNext := by
  exact .once (.appL (.letNode (.var 1 0 (by decide)) (.var 0 2 (by decide)))
    (plain_of_tagged canonicalCont_tagged)) (by decide) (by decide)

theorem identityNext_laws : RigidNext identityNext :=
  RigidNext.of_betas (by decide)
    (normalSteps_sound (by decide : normalSteps 1 identityNext = some canonicalNext))
    (rigid_of_next canonicalNext_is_Next)

theorem identityNext_prices : wire identityNext = 98 ∧ freeLeaves 0 identityNext = 4 := by decide

theorem outside_99_covered : Covered (shareP canonicalNext) := by
  have ht : Tagged false 0 canonicalBody :=
    (tagged_of_twoArm canonicalBody 0 0 (by decide) canonicalBody_twoArm).1 rfl
  exact .outside (plain_of_tagged (bindHole_tagged ht 1 (by decide))) (by decide) (by decide)

/-- All three family bounds are attained by explicit rigid NEXT sources. -/
theorem sharp_witnesses :
    (RigidNext canonicalNext ∧ Covered canonicalNext ∧ wire canonicalNext = 92) ∧
    (RigidNext identityNext ∧ Covered identityNext ∧ wire identityNext = 98) ∧
    (RigidNext (shareP canonicalNext) ∧ Covered (shareP canonicalNext) ∧ wire (shareP canonicalNext) = 99) := by
  exact ⟨⟨rigid_of_next canonicalNext_is_Next, next_covered canonicalNext_is_Next, by decide⟩,
    ⟨identityNext_laws, identityNext_covered, by decide⟩,
    ⟨shareP_laws (rigid_of_next canonicalNext_is_Next), outside_99_covered, by decide⟩⟩

end OneLet

#print axioms OneLet.covered_admin_frontier

/- END ONE-LET SOURCE CERTIFICATE -/
#print axioms unrestricted_next_assembly_lower
#print axioms counterexample_is_interpreter
#print axioms unrestricted_knot_multiplicity
#print axioms sub162_knot_localization
#print axioms frontier_dominated_full
#print axioms frontier_optimal_iff_reader_floor
end Blc.SelfintWiden
