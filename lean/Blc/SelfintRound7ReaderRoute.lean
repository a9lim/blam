/-
A compositional obstruction after a captured hand-off has exposed a lambda.
The old rigid-head judgment is too strong at that intermediate point: a
term can instead be locked to an old head after one further argument.

This file excludes an unbounded family of normal three-lambda helpers in
four-lambda diagonal root lets. The helper is

  H[p] = λu v. u (λz. u p[u,v,z]).

The payload p is an arbitrary applicative tree with a route to v through
first arguments of u and z; arbitrary extra right operands are allowed.
Both pending operands are rigid. No size, beta-fuel, or minimality premise
is used for this exclusion. A source-cost induction then closes every
payload in the displayed diagonal schema at weight below 46: missing
middle binders erase c, and the sole remaining cheap feedback shape has
a symbolic positive-head self-embedding. This is a family theorem, not a
closure of the remaining cells.
-/
import Blc.SelfintRound6ReaderFourth

namespace Blc.SelfintRound7ReaderRoute
open Term SelfintClass SelfintLowerBound SelfintWireCost SelfintFloor
open SelfintSourceCost SelfintLocalCost SelfintDispatchAudit SelfintWidenHoist SelfintControl
open SelfintFlatMinimum SelfintRootFlat SelfintSourceFront SelfintNeededHead
open SelfintLambdaSink SelfintNestedLets WeakHeadClock
open SelfintRootLetPowers (reader_betas)
open SelfintRootLetOrbit (count_fn count_spine_fn)
open SelfintRootLetForcing (count_endpoint)
set_option maxRecDepth 10000
set_option maxHeartbeats 3000000

/-- An application-only payload over the helper's three binders. -/
inductive Payload where
  | first
  | middle
  | last
  | app : Payload → Payload → Payload
  deriving DecidableEq

def realize : Payload → Term → Term → Term → Term
  | .first, x, _, _ => x
  | .middle, _, y, _ => y
  | .last, _, _, z => z
  | .app p q, x, y, z => .app (realize p x y z) (realize q x y z)

theorem realize_shift (p : Payload) (x y z : Term) (d c : Nat) :
    shift d c (realize p x y z)=
      realize p (shift d c x) (shift d c y) (shift d c z) := by
  induction p with
  | first => rfl
  | middle => rfl
  | last => rfl
  | app p q ihp ihq => simp only [realize,shift,ihp,ihq]

theorem realize_subst (p : Payload) (x y z s : Term) (j : Nat) :
    substDec j s (realize p x y z)=
      realize p (substDec j s x) (substDec j s y) (substDec j s z) := by
  induction p with
  | first => rfl
  | middle => rfl
  | last => rfl
  | app p q ihp ihq => simp only [realize,substDec,ihp,ihq]

def capture (p : Payload) (x y : Term) : Term :=
  .lam (.app (shift 1 0 x) (realize p (shift 1 0 x) (shift 1 0 y) (.var 0)))

theorem capture_subst (p : Payload) (x y s : Term) (j : Nat) :
    substDec j s (capture p x y)=
      capture p (substDec j s x) (substDec j s y) := by
  simp only [capture,substDec,realize_subst]
  rw [← shift_substDec_lt x s j 0 (by omega),
    ← shift_substDec_lt y s j 0 (by omega)]
  simp

theorem capture_beta (p : Payload) (x y z : Term) :
    Beta (.app (capture p x y) z) (.app x (realize p x y z)) := by
  simpa only [capture,contract,substDec,realize_subst,substDec_shift,if_true] using
    Beta.beta (.app (shift 1 0 x)
      (realize p (shift 1 0 x) (shift 1 0 y) (.var 0))) z

def helper (p : Payload) : Term :=
  .lam (.lam (.app (.var 1) (capture p (.var 1) (.var 0))))

def helperPartial (p : Payload) (x : Term) : Term :=
  .lam (.app (shift 1 0 x) (capture p (shift 1 0 x) (.var 0)))

theorem helper_beta (p : Payload) (x : Term) :
    Beta (.app (helper p) x) (helperPartial p x) := by
  simpa [helper,helperPartial,contract,substDec,capture_subst] using
    Beta.beta (.lam (.app (.var 1) (capture p (.var 1) (.var 0)))) x

theorem helperPartial_beta (p : Payload) (x y : Term) :
    Beta (.app (helperPartial p x) y) (.app x (capture p x y)) := by
  simpa [helperPartial,contract,substDec,capture_subst,substDec_shift] using
    Beta.beta (.app (shift 1 0 x) (capture p (shift 1 0 x) (.var 0))) y

theorem helper_two (p : Payload) (x y : Term) :
    Betas (.app (.app (helper p) x) y) (.app x (capture p x y)) :=
  .head (.appL y (helper_beta p x)) (.head (helperPartial_beta p x y) (.refl _))

/-- After any further argument, a locked term exposes an old rigid
    head from the permitted set. The term itself may expose a lambda. -/
def Locked (heads : Nat → Prop) (t : Term) : Prop :=
  ∀ a, ∃ u k, Betas (.app t a) u ∧ RigidHead k u ∧ heads k

def Preserves (heads : Nat → Prop) (t : Term) : Prop :=
  ∀ a, Locked heads a → Locked heads (.app t a)

theorem rigid_locked {heads : Nat → Prop} {k : Nat} {t : Term}
    (ht : RigidHead k t) (hk : heads k) : Locked heads t := by
  intro a
  exact ⟨_,k,.refl _,.app a ht,hk⟩

theorem locked_app {heads : Nat → Prop} {t : Term} (ht : Locked heads t) (a : Term) :
    Locked heads (.app t a) := by
  intro b
  obtain ⟨u,k,hu,hh,hk⟩ := ht a
  exact ⟨_,k,betas_app hu (.refl b),.app b hh,hk⟩

theorem locked_preserves {heads : Nat → Prop} {t : Term} (ht : Locked heads t) :
    Preserves heads t :=
  fun a _ => locked_app ht a

theorem locked_before_betas {heads : Nat → Prop} {t u : Term} (hu : Locked heads u)
    (h : Betas t u) : Locked heads t := by
  intro a
  obtain ⟨v,k,hv,hh,hk⟩ := hu a
  exact ⟨v,k,betas_trans (betas_app h (.refl a)) hv,hh,hk⟩

/-- The hand-off helper preserves a lock independently of its payload. -/
theorem helper_preserves (p : Payload) (heads : Nat → Prop) :
    Preserves heads (helper p) := by
  intro a ha b
  obtain ⟨u,k,hu,hh,hk⟩ := ha (capture p a b)
  exact ⟨u,k,betas_trans (helper_two p a b) hu,hh,hk⟩

/-- A route may pass through the first or last binder, and arbitrary
    additional operands may hang off every node on that route. -/
inductive Routed : Payload → Prop where
  | middle : Routed .middle
  | first {p : Payload} : Routed p → Routed (.app .first p)
  | last {p : Payload} : Routed p → Routed (.app .last p)
  | app {p : Payload} (q : Payload) : Routed p → Routed (.app p q)

theorem routed_locked {p : Payload} (hp : Routed p) {heads : Nat → Prop} (x y z : Term)
    (hx : Preserves heads x) (hy : Locked heads y) (hz : Preserves heads z) :
    Locked heads (realize p x y z) := by
  induction hp with
  | middle => exact hy
  | first hp ih => exact hx _ ih
  | last hp ih => exact hz _ ih
  | app q hp ih => exact locked_app ih _

/-- Capturing a rigid middle parameter produces another lock-preserving
    hand-off. This fact composes through any number of routed captures. -/
theorem capture_preserves {p : Payload} (hp : Routed p) {heads : Nat → Prop} (x y : Term)
    (hx : Preserves heads x) (hy : Locked heads y) :
    Preserves heads (capture p x y) := by
  intro z hz
  have hbody := hx _ (routed_locked hp x y z hx hy (locked_preserves hz))
  exact locked_before_betas hbody (.head (capture_beta p x y z) (.refl _))

def diagonal (p : Payload) (c d : Term) : Term :=
  SelfintRound6ReaderFourth.root (.app (.var 0) (.var 0))
    (.app (.var 1) (capture p (.var 1) (.var 0))) c d

def residual (p : Payload) (c d : Term) : Term :=
  realize p (helper p) c (capture p (capture p (helper p) c) d)

theorem diagonal_reduces (p : Payload) (c d : Term) :
    Betas (diagonal p c d) (.app (helper p) (residual p c d)) := by
  have h0 : Beta (diagonal p c d)
      (.app (.app (.app (helper p) (helper p)) c) d) := by
    exact .appL d (.appL c (by
      simpa [helper,contract,substDec] using
        Beta.beta (.app (.var 0) (.var 0)) (helper p)))
  refine .head h0 (betas_trans (betas_app (helper_two p (helper p) c) (.refl d)) ?_)
  exact betas_trans (helper_two p (capture p (helper p) c) d)
    (.head (capture_beta p (helper p) c (capture p (capture p (helper p) c) d))
      (.refl _))

theorem diagonal_lambda_endpoint (p : Payload) (c d : Term) :
    Betas (diagonal p c d) (helperPartial p (residual p c d)) :=
  betas_trans (diagonal_reduces p c d)
    (.head (helper_beta p (residual p c d)) (.refl _))

/-- Either old pending head may survive. This formulation also covers
    reduced pending computations, rather than only literal variables. -/
theorem diagonal_locked {p : Payload} (hp : Routed p) {heads : Nat → Prop} (c d : Term)
    (hc : Locked heads c) (hd : Locked heads d) : Locked heads (diagonal p c d) := by
  have hh := helper_preserves p heads
  have h1 := capture_preserves hp (helper p) c hh hc
  have h2 := capture_preserves hp (capture p (helper p) c) d h1 hd
  have hr := routed_locked hp (helper p) c (capture p (capture p (helper p) c) d) hh hc h2
  exact locked_before_betas (hh _ hr) (diagonal_reduces p c d)

theorem locked_not_reader {heads : Nat → Prop} {t : Term} (ht : Locked heads t)
    (hk : ¬ heads 3) :
    ¬ Reader t := by
  intro hr
  obtain ⟨u,k,hu,hh,hhead⟩ := ht Z
  have hend := betas_preserve_nf hu hr.zero_red zeroOut_normal
  have hfinal := rigidHead_betas hend hh
  have he := SelfintFlatSemantics.rigidHead_unique hfinal
    (show RigidHead 3 zeroOut from .app _ .var)
  exact hk (he ▸ hhead)

/-- Unbounded exclusion for the four-lambda normal-component family.
    Rigid pending operands need not be equal or share a head. -/
theorem diagonal_not_reader {p : Payload} (hp : Routed p) (c d : Term)
    (hc : Rigid c) (hd : Rigid d) : ¬ Reader (diagonal p c d) := by
  intro hr
  have hcs : FreeUnder 2 c := hr.scope.1.2
  have hds : FreeUnder 2 d := hr.scope.2
  obtain ⟨kc,hkc⟩ := SelfintFlatSemantics.rigidHead_exists hc
  obtain ⟨kd,hkd⟩ := SelfintFlatSemantics.rigidHead_exists hd
  have hcl := SelfintRound6ReaderFourth.rigidHead_scope hkc hcs
  have hdl := SelfintRound6ReaderFourth.rigidHead_scope hkd hds
  exact locked_not_reader
    (diagonal_locked (heads:=fun k => k<2) hp c d
      (rigid_locked hkc hcl) (rigid_locked hkd hdl))
    (by omega) hr

def price : Payload → Nat
  | .first => 4
  | .middle => 3
  | .last => 2
  | .app p q => 2+price p+price q

def middleUses : Payload → Nat
  | .first => 0
  | .middle => 1
  | .last => 0
  | .app p q => middleUses p+middleUses q

theorem payload_source (p : Payload) :
    lamCount (realize p (.var 2) (.var 1) (.var 0))=0 ∧
    FreeUnder 3 (realize p (.var 2) (.var 1) (.var 0)) ∧
    holeCost 4 (realize p (.var 2) (.var 1) (.var 0))=price p := by
  induction p with
  | first => decide
  | middle => decide
  | last => decide
  | app p q ihp ihq =>
    simp only [realize,lamCount,FreeUnder,holeCost,price]
    exact ⟨by omega,⟨ihp.2.1,ihq.2.1⟩,by rw [ihp.2.2,ihq.2.2]⟩

theorem helper_closed (p : Payload) : Closed (helper p) := by
  simpa [Closed,helper,capture,shift,FreeUnder] using (payload_source p).2.1

/-- Every payload in this schema has exactly four source lambdas and
    normal components. Its unbounded payload is charged exactly. -/
theorem diagonal_source (p : Payload) :
    lamCount (diagonal p (.var 0) (.var 1))=4 ∧
    depth (diagonal p (.var 0) (.var 1))=0 ∧
    occ 1 (diagonal p (.var 0) (.var 1))=1 ∧
    cost (diagonal p (.var 0) (.var 1))=33+price p := by
  have hl := (payload_source p).1
  have hp := (payload_source p).2.2
  have ho := occ_of_freeUnder _ 3 4 (payload_source p).2.1 (by omega)
  have hd := occDepth_zero ho
  simp [diagonal,SelfintRound6ReaderFourth.root,capture,spine,shift,
    lamCount,depth,occDepth,occ,cost,holeCost,hl,ho,hd,hp]
  omega

theorem helper_normal (p : Payload) : NormalForm (helper p) := by
  apply SelfintClassNext.nft_normal
  have hn := SelfintRootFlat.flat_nf _ (payload_source p).1
  simpa [helper,capture,shift,NFt,IsLam] using hn

def routedLastMiddle : Payload := .app .last .middle
def routedFirstMiddle : Payload := .app .first .middle
def routedLastLastMiddle : Payload := .app .last routedLastMiddle

/-- Three fixed witnesses of the enlarged scope. These are exact syntax
    checks, not an enumerated source inventory. -/
theorem new_weight_examples :
    cost (diagonal routedLastMiddle (.var 0) (.var 1))=40 ∧
    cost (diagonal routedFirstMiddle (.var 0) (.var 1))=42 ∧
    cost (diagonal routedLastLastMiddle (.var 0) (.var 1))=44 := by decide

theorem routedLastMiddle_not_reader :
    ¬ Reader (diagonal routedLastMiddle (.var 0) (.var 1)) :=
  diagonal_not_reader (.last .middle) _ _ (.var _) (.var _)

theorem routedFirstMiddle_not_reader :
    ¬ Reader (diagonal routedFirstMiddle (.var 0) (.var 1)) :=
  diagonal_not_reader (.first .middle) _ _ (.var _) (.var _)

theorem routedLastLastMiddle_not_reader :
    ¬ Reader (diagonal routedLastLastMiddle (.var 0) (.var 1)) :=
  diagonal_not_reader (.last (.last .middle)) _ _ (.var _) (.var _)

theorem realize_middle_irrelevant {p : Payload} (hp : middleUses p=0)
    (x y y' z : Term) : realize p x y z=realize p x y' z := by
  induction p with
  | first => rfl
  | middle => simp [middleUses] at hp
  | last => rfl
  | app p q ihp ihq =>
    have hh : middleUses p+middleUses q=0 := hp
    simp only [realize,ihp (by omega),ihq (by omega)]

theorem capture_middle_irrelevant {p : Payload} (hp : middleUses p=0)
    (x y y' : Term) : capture p x y=capture p x y' := by
  unfold capture
  rw [realize_middle_irrelevant hp _ _ (shift 1 0 y') _]

theorem residual_middle_irrelevant {p : Payload} (hp : middleUses p=0)
    (c d : Term) : residual p c d=residual p d d := by
  unfold residual
  rw [capture_middle_irrelevant hp (helper p) c d]
  exact realize_middle_irrelevant hp _ c d _

theorem realize_occ_zero (p : Payload) (x y z : Term) (j : Nat)
    (hx : occ j x=0) (hy : occ j y=0) (hz : occ j z=0) :
    occ j (realize p x y z)=0 := by
  induction p with
  | first => exact hx
  | middle => exact hy
  | last => exact hz
  | app p q ihp ihq => simp only [realize,occ,ihp,ihq,Nat.zero_add]

theorem capture_occ_zero (p : Payload) (x y : Term) (j : Nat)
    (hx : occ j x=0) (hy : occ j y=0) : occ j (capture p x y)=0 := by
  have hx' : occ (j+1) (shift 1 0 x)=0 := by
    rw [occ_shift_ge x j 0 (by omega),hx]
  have hy' : occ (j+1) (shift 1 0 y)=0 := by
    rw [occ_shift_ge y j 0 (by omega),hy]
  have hz : occ (j+1) (.var 0)=0 := by simp [occ]
  simp only [capture,occ,hx',realize_occ_zero p _ _ _ _ hx' hy' hz,Nat.zero_add]

/-- A missing middle binder erases the sole c before the stream arrives.
    This is another unbounded payload-family exclusion. -/
theorem absent_middle_not_reader {p : Payload} (hp : middleUses p=0) :
    ¬ Reader (diagonal p (.var 0) (.var 1)) := by
  intro hr
  have hred := diagonal_reduces p (.var 0) (.var 1)
  rw [residual_middle_irrelevant hp] at hred
  have hr' := reader_betas hr hred
  have hh : occ 0 (helper p)=0 :=
    occ_of_freeUnder _ 0 0 (helper_closed p) (by omega)
  have hd : occ 0 (.var 1)=0 := by decide
  have h1 := capture_occ_zero p (helper p) (.var 1) 0 hh hd
  have h2 := capture_occ_zero p (capture p (helper p) (.var 1)) (.var 1) 0 h1 hd
  have ho := realize_occ_zero p (helper p) (.var 1)
    (capture p (capture p (helper p) (.var 1)) (.var 1)) 0 hh hd h2
  have hc := reader_c hr'
  change 1≤occ 0 (helper p)+occ 0 (residual p (.var 1) (.var 1)) at hc
  change occ 0 (residual p (.var 1) (.var 1))=0 at ho
  omega

theorem price_positive (p : Payload) : 2≤price p := by
  cases p <;> simp only [price] <;> omega

theorem middle_price {p : Payload} (hp : 0<middleUses p) : 3≤price p := by
  cases p with
  | first => simp [middleUses] at hp
  | middle => decide
  | last => simp [middleUses] at hp
  | app p q => have hp := price_positive p; have hq := price_positive q; simp only [price]; omega

theorem small_middle {p : Payload} (hp : 0<middleUses p) (hw : price p≤5) :
    p=.middle := by
  cases p with
  | first => simp [middleUses] at hp
  | middle => rfl
  | last => simp [middleUses] at hp
  | app p q =>
    have hpp := price_positive p
    have hpq := price_positive q
    simp only [price] at hw; omega

theorem small_absent {p : Payload} (hp : middleUses p=0) (hw : price p≤3) :
    p=.last := by
  cases p with
  | first => simp [price] at hw
  | middle => simp [middleUses] at hp
  | last => rfl
  | app p q =>
    have hpp := price_positive p
    have hpq := price_positive q
    simp only [price] at hw; omega

def feedbackPayload : Payload := .app (.app .last .last) .middle

/-- A source-cost induction, with no generated inventory: below the
    family budget, a live middle binder either has a route or appears
    after a literal last-binder self-application. -/
theorem payload_twelve (p : Payload) (hw : price p≤12) :
    Routed p ∨ middleUses p=0 ∨ p=feedbackPayload := by
  induction p with
  | first => exact .inr (.inl rfl)
  | middle => exact .inl .middle
  | last => exact .inr (.inl rfl)
  | app f a ihf iha =>
    have hfp := price_positive f
    have hap := price_positive a
    have hfsmall : price f≤12 := by change 2+price f+price a≤12 at hw; omega
    have hasmall : price a≤12 := by change 2+price f+price a≤12 at hw; omega
    rcases ihf hfsmall with hfr | hfz | hfe
    · exact .inl (.app a hfr)
    · by_cases haz : middleUses a=0
      · exact .inr (.inl (by simp [middleUses,hfz,haz]))
      · have hal : 0<middleUses a := by omega
        have haw := middle_price hal
        cases f with
        | first =>
          rcases iha hasmall with har | haz | hae
          · exact .inl (.first har)
          · omega
          · subst a; simp [price,feedbackPayload] at hw
        | last =>
          rcases iha hasmall with har | haz | hae
          · exact .inl (.last har)
          · omega
          · subst a; simp [price,feedbackPayload] at hw
        | middle => simp [middleUses] at hfz
        | app f g =>
          have hpf := price_positive f
          have hpg := price_positive g
          have hcost := hw
          simp only [price] at hcost
          have haeq : a=.middle := small_middle hal (by omega)
          subst a
          have huses : middleUses f+middleUses g=0 := hfz
          have hfeq : f=.last := small_absent (by omega) (by simp only [price] at hcost; omega)
          have hgeq : g=.last := small_absent (by omega) (by simp only [price] at hcost; omega)
          subst f; subst g
          exact .inr (.inr rfl)
    · subst f; simp only [feedbackPayload,price] at hw; omega

theorem capture_step (p : Payload) (x y z : Term) :
    weakStep (.app (capture p x y) z)=some (.app x (realize p x y z)) := by
  simp only [capture,weakStep,contract,substDec,realize_subst,substDec_shift,if_true]

def feedbackInner (c : Term) : Term := capture feedbackPayload (helper feedbackPayload) c
def feedbackOuter (c d : Term) : Term := capture feedbackPayload (feedbackInner c) d
def feedbackLoop (c d : Term) : Term := .app (feedbackOuter c d) (feedbackOuter c d)
def feedbackBody (c d : Term) : Term :=
  .app (.app (.app (feedbackLoop c d) d) (.app (feedbackLoop c d) d)) c

/-- A genuine weak-head contraction, followed by three beta contractions,
    returns to the same applied loop with an extended argument stack.
    The returned first operand is d, independently of the current a. -/
theorem feedback_embedding (c d a : Term) :
    Interleaved 1 (.app (feedbackLoop c d) a)
      (spine (.app (feedbackLoop c d) d)
        [.app (feedbackLoop c d) d,c,capture feedbackPayload (feedbackBody c d) a]) := by
  have hstep : weakStep (.app (feedbackLoop c d) a)=
      some (.app (.app (feedbackInner c) (.app (feedbackLoop c d) d)) a) := by
    simpa only [feedbackLoop,feedbackOuter,feedbackPayload,realize] using
      weak_app (capture_step feedbackPayload (feedbackInner c) d (feedbackOuter c d)) a
  have hbody : Beta
      (.app (feedbackInner c) (.app (feedbackLoop c d) d))
      (.app (helper feedbackPayload) (feedbackBody c d)) := by
    simpa only [feedbackInner,feedbackBody,feedbackPayload,realize] using
      capture_beta feedbackPayload (helper feedbackPayload) c (.app (feedbackLoop c d) d)
  exact .head hstep (SelfintRootLetEmbedding.Interleaved.of_betas
    (.head (.appL a hbody) (helper_two feedbackPayload (feedbackBody c d) a)))

theorem feedback_loop_no_count (c d : Term) (n : Nat) :
    ¬ Count (.app (feedbackLoop c d) d) n :=
  SelfintRootLetEmbedding.self_embedding_no_count (feedback_embedding c d d) (by decide) n

theorem feedback_loop_arg_no_count (c d a : Term) (n : Nat) :
    ¬ Count (.app (feedbackLoop c d) a) n := by
  intro hc
  obtain ⟨m,hm,hcm⟩ := SelfintRootLetEmbedding.Interleaved.remaining hc
    (feedback_embedding c d a)
  obtain ⟨q,hq,hcq⟩ := count_spine_fn
    [.app (feedbackLoop c d) d,c,capture feedbackPayload (feedbackBody c d) a] hcm
  exact feedback_loop_no_count c d q hcq

/-- The exceptional routed-payload complement diverges after the stream
    arrives, for arbitrary pending operands. No failed reducer run is used. -/
theorem feedback_not_reader (c d : Term) : ¬ Reader (diagonal feedbackPayload c d) := by
  intro hr
  have hred := betas_trans
    (betas_app (diagonal_reduces feedbackPayload c d) (.refl Z))
    (helper_two feedbackPayload (residual feedbackPayload c d) Z)
  obtain ⟨n,hcn⟩ := hasNormalForm_count ⟨zeroOut,hr.zero_red,zeroOut_normal⟩
  obtain ⟨m,hm,hcm⟩ := count_reduct n hcn hred
  obtain ⟨q,hq,hcq⟩ := count_fn m hcm
  exact feedback_loop_arg_no_count c d c q hcq

/-- Complete sub-46 closure of the captured-head diagonal schema,
    allowing every applicative payload over all three helper binders. -/
theorem diagonal_budget_not_reader (p : Payload)
    (hw : cost (diagonal p (.var 0) (.var 1))≤45) :
    ¬ Reader (diagonal p (.var 0) (.var 1)) := by
  have hp := (diagonal_source p).2.2.2
  have hbound : price p≤12 := by omega
  rcases payload_twelve p hbound with hroute | habsent | rfl
  · exact diagonal_not_reader hroute _ _ (.var _) (.var _)
  · exact absent_middle_not_reader habsent
  · exact feedback_not_reader _ _

theorem diagonal_reader_weight_floor (p : Payload)
    (hr : Reader (diagonal p (.var 0) (.var 1))) :
    46≤weight 0 (diagonal p (.var 0) (.var 1)) := by
  have hcost : 46≤cost (diagonal p (.var 0) (.var 1)) := by
    by_cases h : 46≤cost (diagonal p (.var 0) (.var 1))
    · exact h
    · exact (diagonal_budget_not_reader p (by omega) hr).elim
  rw [weight_eq_class]
  omega

#print axioms capture_preserves
#print axioms diagonal_locked
#print axioms locked_not_reader
#print axioms diagonal_not_reader
#print axioms absent_middle_not_reader
#print axioms payload_twelve
#print axioms feedback_not_reader
#print axioms diagonal_budget_not_reader
#print axioms diagonal_reader_weight_floor
end Blc.SelfintRound7ReaderRoute
