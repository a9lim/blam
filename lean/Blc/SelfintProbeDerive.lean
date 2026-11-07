/-
Probe-to-interface derivations for the actual assembly
`SelfintClass.assemble T R Q`. From the literal separated shape (`Sep`), the
public self-interpreter contract, the head controls C1/C2 and a beta-reducing
zero step, RET/VAL's semantic equations are derived rather than assumed
(`derive_from_source_hypotheses`); every self-interpreter satisfies the
semantic RET/VAL probe equations (`semantic_retval_from_contract`). Builds on
`SelfintProbe` and `SelfintProbeSlots`.
`docs/classical/self-interpreter/class-bound.md`.
-/
import Blc.SelfintProbeSlots
import Blc.SelfintClass

namespace Blc.SelfintProbeDerive
open Term SelfintControl SelfintProjections SelfintProbe SelfintProbeSlots
set_option maxRecDepth 8192
set_option maxHeartbeats 1500000

/-- Actual assembly, with the same hygienic source tree as the class bound. -/
def parser (T R Q : Term) : Term := SelfintClass.assemble T R Q

def body (R Q : Term) : Term := substDec 1 Q R
/-- The actual reader in its one-free-variable continuation frame. -/
def reader (T R Q : Term) : Term := substDec 1 (parser T R Q) (body R Q)
def next (T R Q : Term) : Term := substDec 1 (parser T R Q) Q
/-- Insert the actual parser into a continuation template [c,p]. -/
def actual (T R Q A : Term) : Term := substDec 1 (parser T R Q) A
def atC (A c : Term) : Term := substDec 0 c A

def run (P c s : Term) : Term := .app (.app P c) s
def output (c X N : Term) : Term := .app (.app c X) N
def quote (M N : Term) : Term := streamOf (blcCode M) N
def unary (n : Nat) (N : Term) : Term := streamOf (vbits n) N

def probeSource : Term := .lam omega

def lams : Nat → Term → Term
  | 0, M => M
  | n + 1, M => .lam (lams n M)

structure Sep (T R Q : Term) : Prop where
  knot_scope : FreeUnder 1 T
  reader_scope : FreeUnder 2 R
  next_scope : FreeUnder 2 Q
  knot : BetaJoin T (.app (.var 0) T)

theorem Sep.closed {T R Q : Term} (h : Sep T R Q) : Closed (parser T R Q) :=
  SelfintClass.subst_scope T (SelfintClass.functional R Q) 0 0 (by omega)
    h.knot_scope (SelfintClass.functional_closed h.reader_scope h.next_scope)

theorem Sep.actual_reader_scope {T R Q : Term} (h : Sep T R Q) : FreeUnder 1 (reader T R Q) := by
  apply SelfintClass.subst_scope _ _ 1 1 (by omega)
  · exact SelfintClass.subst_scope R Q 1 2 (by omega)
      (freeUnder_mono (by omega : 2 ≤ 3) h.reader_scope) h.next_scope
  · exact closed_freeUnder h.closed 1

theorem Sep.actual_scope {T R Q A : Term} (h : Sep T R Q) (hA : FreeUnder 2 A) :
    FreeUnder 1 (actual T R Q A) :=
  SelfintClass.subst_scope A (parser T R Q) 1 1 (by omega) hA
    (closed_freeUnder h.closed 1)

theorem Sep.unfold {T R Q : Term} (h : Sep T R Q) :
    BetaJoin (parser T R Q) (.app (SelfintClass.functional R Q) (parser T R Q)) := by
  have hu := join_inst [SelfintClass.functional R Q] 0 h.knot
  simpa [instN, inst_app, parser, SelfintClass.assemble, shift_zero, substDec] using hu

theorem functional_run (T R Q c s : Term) (hP : Closed (parser T R Q)) :
    Betas (run (.app (SelfintClass.functional R Q) (parser T R Q)) c s)
      (.app (atC (reader T R Q) c) s) := by
  unfold run SelfintClass.functional reader atC body
  apply Betas.head (.appL s (.appL c (.beta _ _)))
  simp only [contract, substDec, shift_closed 1 0 hP]
  exact .head (.appL s (.beta _ _)) (.refl _)

theorem Sep.run_reader {T R Q : Term} (h : Sep T R Q) (c s : Term) :
    BetaJoin (run (parser T R Q) c s) (.app (atC (reader T R Q) c) s) :=
  join_trans (join_appL s (join_appL c h.unfold))
    (join_of_betas (functional_run T R Q c s h.closed))

/-- ABS-only interface, sufficient for every unary length and ABS dataflow.
The zero equation is actual-P; the continuation is a fixed [c,p] template. -/
structure LambdaProtocol (T R Q : Term) where
  A : Term
  scopeA : FreeUnder 2 A
  zero : ∀ c (bit : Bool) r, BetaJoin
    (.app (atC (reader T R Q) c) (pairT churchTrue (pairT (churchBit bit) r)))
    (run (atC (next T R Q) c) (churchBit bit) r)
  controlA : ∀ c r, BetaJoin (run (atC (next T R Q) c) churchTrue r)
    (run (parser T R Q) (atC (actual T R Q A) c) r)

/-- APP adds its first-call template F and second-call template B. -/
structure Protocol (T R Q : Term) extends LambdaProtocol T R Q where
  F : Term
  B : Term
  scopeF : FreeUnder 2 F
  scopeB : FreeUnder 2 B
  controlF : ∀ c r, BetaJoin (run (atC (next T R Q) c) churchFalse r)
    (run (parser T R Q) (atC (actual T R Q F) c) r)
  control2 : ∀ c x y, BetaJoin
    (output (atC (actual T R Q F) c) x y)
    (run (parser T R Q) (.app (atC (actual T R Q B) c) x) y)

variable {T R Q : Term}

def kontA (h : LambdaProtocol T R Q) : Term := actual T R Q h.A
def kontF (h : Protocol T R Q) : Term := actual T R Q h.F
def kontB (h : Protocol T R Q) : Term := actual T R Q h.B

theorem parse_lam (hs : Sep T R Q) (hp : LambdaProtocol T R Q) (c M N : Term) :
    BetaJoin (run (parser T R Q) c (quote (.lam M) N))
      (run (parser T R Q) (atC (kontA hp) c) (quote M N)) := by
  apply join_trans (hs.run_reader _ _)
  apply join_trans (hp.zero c false (quote M N))
  exact hp.controlA c (quote M N)

/-- Iterating constructor continuations, with the same fixed actual parser
and no captured input or suffix at any depth. -/
def iterA (hp : LambdaProtocol T R Q) : Nat → Term → Term
  | 0, c => c
  | n + 1, c => iterA hp n (atC (kontA hp) c)

theorem iterA_scope (hs : Sep T R Q) (hp : LambdaProtocol T R Q) (n : Nat) (c : Term)
    (hc : FreeUnder 1 c) : FreeUnder 1 (iterA hp n c) := by
  induction n generalizing c with
  | zero => exact hc
  | succ n ih =>
    apply ih
    exact SelfintClass.subst_scope _ _ 0 1 (by omega)
      (freeUnder_mono (by omega : 1 ≤ 2) (hs.actual_scope hp.scopeA)) hc

theorem parse_prefix (hs : Sep T R Q) (hp : LambdaProtocol T R Q)
    (n : Nat) (c M N : Term) :
    BetaJoin (run (parser T R Q) c (quote (lams n M) N))
      (run (parser T R Q) (iterA hp n c) (quote M N)) := by
  induction n generalizing c with
  | zero => exact join_refl _
  | succ n ih =>
    exact join_trans (parse_lam hs hp c (lams n M) N) (ih (atC (kontA hp) c))

theorem lams_scope (n k : Nat) (M : Term) :
    FreeUnder k (lams n M) ↔ FreeUnder (k + n) M := by
  induction n generalizing k with
  | zero => simp [lams]
  | succ n ih => simpa [lams, FreeUnder, Nat.add_assoc, Nat.add_comm, Nat.add_left_comm] using ih (k + 1)

/-- For this literal fixed-point assembly, the public contract itself
supplies the closed unsolvable return equation. This is a conversion
statement, not an operational claim about the first returned closure. -/
theorem closed_probe_return {P : Term} (hi : IsSelfInterpreter P) (c N : Term) :
    ∃ v, Closed v ∧ ¬ Solvable (.app (.app v (.var 0)) (.var 1)) ∧
      BetaJoin (run P c (quote probeSource N)) (output c v N) := by
  refine ⟨probe, probe_closed, unsolvable_apps probe_unsolvable [.var 0, .var 1], ?_⟩
  exact contract_join hi (by decide : Closed probeSource) c N

theorem iterA_probe (hs : Sep T R Q) (hp : LambdaProtocol T R Q)
    (hi : IsSelfInterpreter (parser T R Q)) (n : Nat) :
    ∃ v X, ¬ Solvable v ∧ BetaJoin (output (iterA hp n (.var 0)) v (.var 1))
      (output (.var 0) X (.var 1)) := by
  obtain ⟨v, hv, hdiv, hret⟩ := closed_probe_return hi (iterA hp n (.var 0)) (.var 1)
  have hclosed : Closed (lams n probeSource) :=
    (lams_scope n 0 probeSource).mpr (closed_freeUnder (by decide : Closed probeSource) _)
  have hc := contract_join hi hclosed (.var 0) (.var 1)
  have hstrip := parse_prefix hs hp n (.var 0) probeSource (.var 1)
  refine ⟨v, .lam (lams n probeSource), unsolvable_of_two_rigid (.var 0) (.var 1) hdiv, ?_⟩
  exact join_trans (join_symm hret) (join_trans (join_symm hstrip) hc)

/-- No independent public-continuation channel in a parse with c abstract.
Here c=0, the forbidden extra C slot=1, and suffix N=2. -/
theorem run_no_second_C (P : Term) (hP : Closed P) (bits : List Bool) :
    occ 1 (run P (.var 0) (streamOf bits (.var 2))) = 0 := by
  have hPocc : occ 1 P = 0 := SelfintFloor.occ_of_freeUnder P 0 1 hP (by omega)
  have hstream : occ 1 (streamOf bits (.var 2)) = 0 := by
    induction bits with
    | nil => rfl
    | cons b bs ih =>
      rw [streamOf_cons]
      unfold pairT
      simp only [occ, occ_shift_ge, Nat.zero_le, ih]
      simp only [Nat.reduceAdd, reduceCtorEq, if_false, Nat.zero_add]
      have hc : occ 1 (churchBit b) = 0 :=
        SelfintFloor.occ_of_freeUnder _ 0 1 (churchBit_closed b) (by omega)
      omega
  simp [run, occ, hPocc, hstream]

/-- Every positive unary index, with c still abstract and the actual parser.
The source is lambda^(n+1).var(n); the innermost parse is U_(n+1)(N). -/
theorem variable_rest_parser (hs : Sep T R Q) (hp : LambdaProtocol T R Q)
    (hi : IsSelfInterpreter (parser T R Q)) (n : Nat) :
    ∃ X, Betas (run (parser T R Q) (.var 0) (unary (n + 1) (.var 2)))
      (output (.var 0) X (.var 2)) := by
  let kappa := iterA hp (n + 1) (.var 0)
  have hk : FreeUnder 1 kappa := iterA_scope hs hp (n + 1) (.var 0) (by decide)
  obtain ⟨v, X, hv, hpv⟩ := iterA_probe hs hp hi (n + 1)
  have hclosed : Closed (lams (n + 1) (.var n)) := by
    apply (lams_scope (n + 1) 0 (.var n)).mpr
    change n < 0 + (n + 1)
    omega
  have hc := contract_join hi hclosed (.var 0) (.var 1)
  have hstrip := parse_prefix hs hp (n + 1) (.var 0) (.var n) (.var 1)
  have hrun := join_trans (join_symm hstrip) hc
  have hinst : substDec 0 kappa (run (parser T R Q) (.var 0) (unary (n + 1) (.var 2))) =
      run (parser T R Q) kappa (quote (.var n) (.var 1)) := by
    unfold run unary quote
    rw [show substDec 0 kappa (.app (.app (parser T R Q) (.var 0))
      (streamOf (vbits (n + 1)) (.var 2))) =
      .app (.app (substDec 0 kappa (parser T R Q)) kappa)
        (streamOf (vbits (n + 1)) (.var 1)) by
      simp only [substDec, if_true, subst_streamOf]; rfl]
    rw [substDec_closed _ _ hs.closed, code_var, stream_vbits_succ, streamOf_cons]
    rfl
  have hnotC := run_no_second_C (parser T R Q) hs.closed (vbits (n + 1))
  obtain ⟨steps, A, B, hhead, hB⟩ := probe_two_argument_corollary hk hv hpv hnotC
    (by change BetaJoin (substDec 0 kappa (run (parser T R Q) (.var 0) (unary (n + 1) (.var 2)))) _; rw [hinst]; exact hrun)
  exact ⟨A, betas_trans (headReds_betas' hhead) (betas_appR _ hB)⟩

/-- Conversion to a rigid continuation result with a normal suffix gives
an actual reduction, even when the payload is not normalizing. -/
theorem output_join_reduces {t X : Term} (n : Nat)
    (h : BetaJoin t (output (.var 0) X (.var n))) :
    ∃ Y, Betas t (output (.var 0) Y (.var n)) := by
  obtain ⟨w, htw, how⟩ := h
  obtain ⟨g, b, hw, hg, hb⟩ := rigid_app_betas how rfl (.app _ (.var 0))
  have hb' := normalForm_betas_eq (fun _ hh => nft_no_beta (by trivial) hh) hb
  subst b
  obtain ⟨f, a, hg', hf, ha⟩ := rigid_app_betas hg rfl (.var 0)
  have hf' := normalForm_betas_eq (fun _ hh => nft_no_beta (by trivial) hh) hf
  subst f
  exact ⟨a, by simpa [output, hw, hg'] using htw⟩

/-- Hygienic substitution through a one-hole frame, with no extra source
variable above that frame. This identifies the real NEXT reader plug. -/
theorem plug_comp (r q p : Term) (j : Nat) (hr : FreeUnder (j + 1) r) :
    substDec j p (substDec j q r) = substDec j (substDec j p q) r := by
  induction r generalizing j q p with
  | var n =>
    change n < j + 1 at hr
    by_cases hn : n = j
    · simp [substDec, hn]
    · have hlt : ¬ n > j := by omega
      simp [substDec, hn, hlt]
  | lam b ih =>
    simp only [substDec]
    rw [ih _ _ (j + 1) hr, ← shift_substDec_lt q p j 0 (by omega)]
  | app f a ihf iha => simp only [substDec, ihf _ _ j hr.1, iha _ _ j hr.2]

theorem actual_reader_plug (hs : Sep T R Q) :
    reader T R Q = substDec 1 (next T R Q) R :=
  plug_comp R Q (parser T R Q) 1 hs.reader_scope

/-- (a) The actual-NEXT variable law's rest component for every positive
unary length, with the reader continuation independent and abstract. -/
theorem variable_rest_reader (hs : Sep T R Q) (hp : LambdaProtocol T R Q)
    (hi : IsSelfInterpreter (parser T R Q)) (n : Nat) :
    ∃ X, Betas (.app (substDec 1 (next T R Q) R) (unary (n + 1) (.var 2)))
      (output (.var 0) X (.var 2)) := by
  obtain ⟨X, hX⟩ := variable_rest_parser hs hp hi n
  have hread := hs.run_reader (.var 0) (unary (n + 1) (.var 2))
  have he : atC (reader T R Q) (.var 0) = reader T R Q :=
    subst_self _ 0 hs.actual_reader_scope
  rw [he, actual_reader_plug hs] at hread
  exact output_join_reduces 2 (join_trans (join_symm hread) (join_of_betas hX))

/-- (b) ABS returns the rest argument verbatim with the actual parser.
The payload remains allowed to depend on both abstract arguments. -/
theorem abs_dataflow (hs : Sep T R Q) (hp : LambdaProtocol T R Q)
    (hi : IsSelfInterpreter (parser T R Q)) :
    ∃ A, Betas (output (kontA hp) (.var 1) (.var 2))
      (output (.var 0) A (.var 2)) := by
  have hscope : FreeUnder 1 (kontA hp) := hs.actual_scope hp.scopeA
  obtain ⟨v, hv, hdiv, hret⟩ := closed_probe_return hi (atC (kontA hp) (.var 0)) (.var 1)
  have hparse := parse_lam hs hp (.var 0) probeSource (.var 1)
  have hclosed : Closed (.lam probeSource) := by decide
  have hc := contract_join hi hclosed (.var 0) (.var 1)
  have hjoin := join_trans (join_symm hret) (join_trans (join_symm hparse) hc)
  have he : atC (kontA hp) (.var 0) = kontA hp := subst_self _ 0 hscope
  rw [he] at hjoin
  exact lemmaA_after_two hscope hdiv hjoin

/-- APP's source header hands its first operand and its remaining stream
to the same closed parser, as required by actual Z + C1. -/
theorem parse_app (hs : Sep T R Q) (hp : Protocol T R Q) (c M L N : Term) :
    BetaJoin (run (parser T R Q) c (quote (.app M L) N))
      (run (parser T R Q) (atC (kontF hp) c) (quote M (quote L N))) := by
  apply join_trans (hs.run_reader _ _)
  have he : quote (.app M L) N = pairT churchTrue (pairT churchFalse (quote M (quote L N))) := by
    simp only [quote, blcCode, streamOf_cons, streamOf_append]
    rfl
  rw [he]
  exact join_trans (hp.zero c true (quote M (quote L N)))
    (hp.controlF c (quote M (quote L N)))

/-- (c) APP's second-operand continuation forwards the rest, with the
first value slot and second value slot both kept abstract. -/
theorem app_second_dataflow (hs : Sep T R Q) (hp : Protocol T R Q)
    (hi : IsSelfInterpreter (parser T R Q)) :
    ∃ A, Betas (output (.app (kontB hp) (.var 1)) (.var 2) (.var 3))
      (output (.var 0) A (.var 3)) := by
  have hBscope : FreeUnder 1 (kontB hp) := hs.actual_scope hp.scopeB
  have hFscope : FreeUnder 1 (kontF hp) := hs.actual_scope hp.scopeF
  let c : Term := .var 0
  let N : Term := .var 1
  let tail : Term := quote probeSource N
  have hstart := parse_app hs hp c probeSource probeSource N
  obtain ⟨v1, hv1, hd1, hr1⟩ := closed_probe_return hi (atC (kontF hp) c) tail
  have hC2 := hp.control2 c v1 tail
  obtain ⟨v2, hv2, hd2, hr2⟩ := closed_probe_return hi (.app (atC (kontB hp) c) v1) N
  have hfinish : BetaJoin
      (output (.app (atC (kontB hp) c) v1) v2 N)
      (output c (.lam (.app probeSource probeSource)) N) := by
    have hc := contract_join hi (by decide : Closed (.app probeSource probeSource)) c N
    exact join_trans (join_symm hr2)
      (join_trans (join_symm hC2) (join_trans (join_symm hr1) (join_trans (join_symm hstart) hc)))
  have he : atC (kontB hp) c = kontB hp := subst_self _ 0 hBscope
  rw [he] at hfinish
  apply lemmaA_two_slots
    (blind_of_unsolvable (unsolvable_of_two_rigid (.var 0) (.var 1) hd1))
    (blind_of_unsolvable (unsolvable_of_two_rigid (.var 0) (.var 1) hd2))
  simpa [output, substDec, substDec_of_freeUnder _ 1 v1 hBscope,
    substDec_of_freeUnder _ 1 v2 hBscope, substDec_closed 1 v2 hv1, c, N] using hfinish

/-- Source-level rigid C1/C2, before insertion of the actual parser.
Their conversion versions suffice; the stated head reductions imply them.
A/F/B are terms in the fixed [c,p] frame, with B a function of x. -/
structure RigidControls (Q A F B : Term) : Prop where
  scopeA : FreeUnder 2 A
  scopeF : FreeUnder 2 F
  scopeB : FreeUnder 2 B
  abs : BetaJoin (run Q churchTrue (.var 2)) (run (.var 1) A (.var 2))
  app : BetaJoin (run Q churchFalse (.var 2)) (run (.var 1) F (.var 2))
  second : BetaJoin (output F (.var 2) (.var 3))
    (run (.var 1) (.app B (.var 2)) (.var 3))

theorem inst3_frame (P c t A : Term) (hP : Closed P) (hA : FreeUnder 2 A) :
    instN [c, P, t] 0 A = substDec 0 c (substDec 1 P A) := by
  simp only [instN]
  rw [substDec_of_freeUnder A 2 _ hA, shift_closed 1 0 hP, shift_zero]

theorem inst4_frame (P c x y A : Term) (hP : Closed P) (hA : FreeUnder 2 A) :
    instN [c, P, x, y] 0 A = substDec 0 c (substDec 1 P A) := by
  simp only [instN]
  rw [substDec_of_freeUnder A 3 _ (freeUnder_mono (by omega : 2 ≤ 3) hA),
    substDec_of_freeUnder A 2 _ hA, shift_closed 1 0 hP, shift_zero]

theorem inst3_vars (P c t : Term) (hP : Closed P) :
    instN [c, P, t] 0 (.var 1) = P ∧ instN [c, P, t] 0 (.var 2) = t := by
  constructor
  · simp [instN, substDec, shift_closed 1 0 hP, substDec_closed _ _ hP]
  · simp [instN, substDec, substDec_shift0, shift_zero]

theorem inst4_vars (P c x y : Term) (hP : Closed P) :
    instN [c, P, x, y] 0 (.var 1) = P ∧
    instN [c, P, x, y] 0 (.var 2) = x ∧ instN [c, P, x, y] 0 (.var 3) = y := by
  constructor
  · simp [instN, substDec, shift_closed 1 0 hP, substDec_closed _ _ hP]
  · constructor <;> simp [instN, substDec, substDec_shift0, shift_zero]

theorem rigid_abs_instance {A : Term} (hs : Sep T R Q)
    (hA : FreeUnder 2 A)
    (ha : BetaJoin (run Q churchTrue (.var 2)) (run (.var 1) A (.var 2))) (c r : Term) :
    BetaJoin (run (atC (next T R Q) c) churchTrue r)
      (run (parser T R Q) (atC (actual T R Q A) c) r) := by
  have h := join_inst [c, parser T R Q, r] 0 ha
  have hv := inst3_vars (parser T R Q) c r hs.closed
  simpa only [run, inst_app, inst3_frame _ _ _ Q hs.closed hs.next_scope,
    inst3_frame _ _ _ A hs.closed hA, inst_closed _ _ (by decide : Closed churchTrue),
    hv.1, hv.2, atC, next, actual] using h

theorem rigid_app_instance {A F B : Term} (hs : Sep T R Q)
    (hc : RigidControls Q A F B) (c r : Term) :
    BetaJoin (run (atC (next T R Q) c) churchFalse r)
      (run (parser T R Q) (atC (actual T R Q F) c) r) := by
  have h := join_inst [c, parser T R Q, r] 0 hc.app
  have hv := inst3_vars (parser T R Q) c r hs.closed
  simpa only [run, inst_app, inst3_frame _ _ _ Q hs.closed hs.next_scope,
    inst3_frame _ _ _ F hs.closed hc.scopeF, inst_closed _ _ (by decide : Closed churchFalse),
    hv.1, hv.2, atC, next, actual] using h

theorem rigid_second_instance {A F B : Term} (hs : Sep T R Q)
    (hc : RigidControls Q A F B) (c x y : Term) :
    BetaJoin (output (atC (actual T R Q F) c) x y)
      (run (parser T R Q) (.app (atC (actual T R Q B) c) x) y) := by
  have h := join_inst [c, parser T R Q, x, y] 0 hc.second
  have hv := inst4_vars (parser T R Q) c x y hs.closed
  simpa only [run, output, inst_app, inst4_frame _ _ _ _ F hs.closed hc.scopeF,
    inst4_frame _ _ _ _ B hs.closed hc.scopeB, hv.1, hv.2.1, hv.2.2, atC, actual] using h

/-- The exact rigid source C1/C2 hypotheses imply the actual control
interface used by all three derived laws. No rigid dataflow law is assumed. -/
def Protocol.of_rigid {A F B : Term} (hs : Sep T R Q) (hc : RigidControls Q A F B)
    (hz : ∀ c (bit : Bool) r, BetaJoin
      (.app (atC (reader T R Q) c) (pairT churchTrue (pairT (churchBit bit) r)))
      (run (atC (next T R Q) c) (churchBit bit) r)) : Protocol T R Q where
  A := A
  F := F
  B := B
  scopeA := hc.scopeA
  scopeF := hc.scopeF
  scopeB := hc.scopeB
  zero := hz
  controlA := rigid_abs_instance hs hc.scopeA hc.abs
  controlF := rigid_app_instance hs hc
  control2 := rigid_second_instance hs hc

/-- The three derived actual-parser laws; no value identity, rest-free
constructor, rigid-j law, or rigid-p dataflow law is asserted. -/
structure ActualLaws (T R Q A B : Term) : Prop where
  variable_rest : ∀ n, ∃ X,
    Betas (.app (substDec 1 (next T R Q) R) (unary (n + 1) (.var 2)))
      (output (.var 0) X (.var 2))
  abs_rest : ∃ X, Betas (output (actual T R Q A) (.var 1) (.var 2))
    (output (.var 0) X (.var 2))
  app_second_rest : ∃ X,
    Betas (output (.app (actual T R Q B) (.var 1)) (.var 2) (.var 3))
      (output (.var 0) X (.var 3))

/-- End-to-end source theorem: literal assembly + its full contract,
actual zero handoff, and rigid source C1/C2 imply all three laws.
The public contract supplies the closed unsolvable probe return equation. -/
theorem derive_from_assembly {A F B : Term}
    (hs : Sep T R Q) (hi : IsSelfInterpreter (SelfintClass.assemble T R Q))
    (hc : RigidControls Q A F B)
    (hz : ∀ c (bit : Bool) r, BetaJoin
      (.app (atC (reader T R Q) c) (pairT churchTrue (pairT (churchBit bit) r)))
      (run (atC (next T R Q) c) (churchBit bit) r)) : ActualLaws T R Q A B := by
  let hp := Protocol.of_rigid hs hc hz
  exact ⟨variable_rest_reader hs hp.toLambdaProtocol hi, abs_dataflow hs hp.toLambdaProtocol hi,
    app_second_dataflow hs hp hi⟩

/-- The report's original head-reduction C1/C2 interface, stated literally
at rigid p,c,t,x,y, with fixed stream-independent source templates. -/
structure HeadControls (Q A F B : Term) : Prop where
  scopeA : FreeUnder 2 A
  scopeF : FreeUnder 2 F
  scopeB : FreeUnder 2 B
  abs : HeadReduces (run Q churchTrue (.var 2)) (run (.var 1) A (.var 2))
  app : HeadReduces (run Q churchFalse (.var 2)) (run (.var 1) F (.var 2))
  second : HeadReduces (output F (.var 2) (.var 3))
    (run (.var 1) (.app B (.var 2)) (.var 3))

theorem head_reduces_join {t u : Term} (h : HeadReduces t u) : BetaJoin t u := by
  obtain ⟨n, hn⟩ := h
  exact join_of_betas (headReds_betas' (headSteps_of_headReds hn))

theorem HeadControls.rigid {A F B : Term} (hc : HeadControls Q A F B) :
    RigidControls Q A F B :=
  ⟨hc.scopeA, hc.scopeF, hc.scopeB, head_reduces_join hc.abs,
    head_reduces_join hc.app, head_reduces_join hc.second⟩

/-- Literal Sep + public contract + head C1/C2 + beta-reducing actual Z.
RET/VAL's semantic equations are derived, not assumed. -/
theorem derive_from_source_hypotheses {A F B : Term}
    (hs : Sep T R Q) (hi : IsSelfInterpreter (SelfintClass.assemble T R Q))
    (hc : HeadControls Q A F B)
    (hz : ∀ c (bit : Bool) r, Betas
      (.app (atC (reader T R Q) c) (pairT churchTrue (pairT (churchBit bit) r)))
      (run (atC (next T R Q) c) (churchBit bit) r)) : ActualLaws T R Q A B :=
  derive_from_assembly hs hi hc.rigid (fun c bit r => join_of_betas (hz c bit r))

#print axioms derive_from_source_hypotheses

/-- The exact return/value equation required by the probe method. This
is beta-conversion to a closed unsolvable returned value, uniformly in c,N;
it makes no claim about the first closure encountered by a machine. -/
def SemanticRETVAL (P : Term) : Prop :=
  ∀ c N, ∃ v, Closed v ∧ ¬ Solvable (.app (.app v (.var 0)) (.var 1)) ∧
    BetaJoin (run P c (quote probeSource N)) (output c v N)

theorem semantic_retval_from_contract {P : Term} (hi : IsSelfInterpreter P) :
    SemanticRETVAL P := closed_probe_return hi

#print axioms semantic_retval_from_contract

/-- ABS-only source hypotheses: neither APP control nor C2 is required
for the every-n variable-rest induction or the ABS rest law. -/
theorem derive_abs_from_source {A : Term}
    (hs : Sep T R Q) (hi : IsSelfInterpreter (SelfintClass.assemble T R Q))
    (hA : FreeUnder 2 A)
    (ha : HeadReduces (run Q churchTrue (.var 2)) (run (.var 1) A (.var 2)))
    (hz : ∀ c (bit : Bool) r, Betas
      (.app (atC (reader T R Q) c) (pairT churchTrue (pairT (churchBit bit) r)))
      (run (atC (next T R Q) c) (churchBit bit) r)) :
    (∀ n, ∃ X, Betas (.app (substDec 1 (next T R Q) R) (unary (n + 1) (.var 2)))
      (output (.var 0) X (.var 2))) ∧
    (∃ X, Betas (output (actual T R Q A) (.var 1) (.var 2))
      (output (.var 0) X (.var 2))) := by
  let hp : LambdaProtocol T R Q := {
    A := A
    scopeA := hA
    zero := fun c bit r => join_of_betas (hz c bit r)
    controlA := rigid_abs_instance hs hA (head_reduces_join ha) }
  exact ⟨variable_rest_reader hs hp hi, abs_dataflow hs hp hi⟩

end Blc.SelfintProbeDerive
