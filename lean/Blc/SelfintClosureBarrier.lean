/-
Shared continuation factories cannot read. Let e be any finite application
tree, with A applications, over the stream, I, F, rigid parameters, the
continuation towers C_m = λ^m. c and the factories H_m = λx. x C_m. If e on
the zero stream joins r j, then on every unary stream of length n ≥ A+2 it
fails to join c U_(n-1) N (`factories_cannot_read`). The same holds for a
literal nonlinear sharing let over that grammar (`sharing_cannot_read`), and
no source beta-equal to such an expression on every probe meets the zero law
and every unary law (`represented_reader_impossible`). This is a sharing
obstruction for the grammar, not a reader floor. `docs/classical/self-interpreter/class-bound.md`.
All variables are 0-based: the suffix N=0, c=1, j=2, r=3.
-/
import Blc.SelfintRoleAlgebra
import Blc.SelfintClass
import Blc.SelfintProjections
import Blc.NormalOrder
namespace Blc.SelfintClosureBarrier
open Term SelfintRoleAlgebra SelfintClass SelfintLowerBound SelfintControl SelfintProjections

set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

/-- A tower of vacuous binders around the rigid continuation c=1. -/
def cTower : Nat → Term
  | 0 => .var 1
  | n+1 => .lam (shift 1 0 (cTower n))

/-- The source factory H_m = λx. x (λ^m.c). -/
def factory (m : Nat) : Term := .lam (.app (.var 0) (shift 1 0 (cTower m)))

theorem tower_apply (m : Nat) (a : Term) :
    Betas (.app (cTower (m+1)) a) (cTower m) := by
  simpa only [cTower, contract, substDec_shift] using
    (Betas.head (Beta.beta (shift 1 0 (cTower m)) a) (.refl _))

theorem factory_apply (m : Nat) (a : Term) :
    Betas (.app (factory m) a) (.app a (cTower m)) := by
  simpa only [factory, contract, substDec, Nat.reduceAdd, ↓reduceIte, substDec_shift] using
    (Betas.head (Beta.beta (.app (.var 0) (shift 1 0 (cTower m))) a) (.refl _))

theorem factory_false (m : Nat) :
    Betas (.app (factory m) churchFalse) ident :=
  betas_trans (factory_apply m _) (false_apply _)

theorem factory_ident (m : Nat) :
    Betas (.app (factory m) ident) (cTower m) :=
  betas_trans (factory_apply m _) (ident_apply _)

theorem unary_factory (m n : Nat) :
    Betas (.app (unary (n+1)) (factory m)) (unary n) :=
  betas_trans (unary_callback n _)
    (betas_trans (betas_appL _ (factory_false m)) (ident_apply _))

theorem unary_tower_one (n : Nat) :
    Betas (.app (unary (n+1)) (cTower 1)) (.app cont (unary n)) :=
  betas_trans (unary_callback n _) (betas_appL _ (tower_apply 0 _))

theorem unary_tower_many (m n : Nat) :
    Betas (.app (unary (n+1)) (cTower (m+2))) (cTower m) :=
  betas_trans (unary_callback n _)
    (betas_trans (betas_appL _ (tower_apply (m+1) _)) (tower_apply m _))

/-- Function values are data, a fixed continuation tower, or a fixed factory.
    No dynamically captured lambda is admitted. -/
inductive UValue (n budget : Nat) : Term → Prop
  | data {t : Term} : Value n budget t → UValue n budget t
  | tower (m : Nat) : UValue n budget (cTower m)
  | factory (m : Nat) : UValue n budget (SelfintClosureBarrier.factory m)

theorem uvalue_mono {n a b : Nat} {t : Term} (h : UValue n a t) (hab : a ≤ b) :
    UValue n b t := by
  cases h with
  | data hv => exact .data (value_mono hv hab)
  | tower m => exact .tower m
  | factory m => exact .factory m

theorem uvalue_apply {n a b : Nat} {f x : Term}
    (hf : UValue n a f) (hx : UValue n b x) (hn : a+b+3 ≤ n) :
    ∃ t, Betas (.app f x) t ∧ UValue n (a+b+1) t := by
  cases hf with
  | tower m =>
    cases m with
    | zero => exact ⟨_, .refl _, .data (.neutral (.app x .cont))⟩
    | succ m => exact ⟨_, tower_apply m x, .tower m⟩
  | factory m =>
    have hh := factory_apply m x
    cases hx with
    | tower k =>
      cases k with
      | zero => exact ⟨_, hh, .data (.neutral (.app _ .cont))⟩
      | succ k => exact ⟨_, betas_trans hh (tower_apply k _), .tower k⟩
    | factory k =>
      have hr := betas_trans hh (factory_apply k _)
      cases m with
      | zero => exact ⟨_, hr, .data (.neutral (.app _ .cont))⟩
      | succ m => exact ⟨_, betas_trans hr (tower_apply m _), .tower m⟩
    | data hv =>
      cases hv with
      | bit => exact ⟨_, betas_trans hh (false_apply _), .data .id⟩
      | id => exact ⟨_, betas_trans hh (ident_apply _), .tower m⟩
      | const => exact ⟨_, betas_trans hh (constant_apply _), .data (.neutral .suffix)⟩
      | neutral hneut => exact ⟨_, hh, .data (.neutral (.app _ hneut))⟩
      | stream k hk =>
        have hp : 0 < n-k := by omega
        obtain ⟨p, hp⟩ := Nat.exists_eq_succ_of_ne_zero (Nat.ne_of_gt hp)
        cases m with
        | zero =>
          refine ⟨.app (.app cont churchFalse) (unary p), betas_trans hh ?_, .data (.neutral (.app _ (.app _ .cont)))⟩
          rw [hp]; exact unary_callback p cont
        | succ m =>
          cases m with
          | zero =>
            refine ⟨.app cont (unary p), betas_trans hh ?_, .data (.neutral (.app _ .cont))⟩
            rw [hp]; exact unary_tower_one p
          | succ m =>
            refine ⟨_, betas_trans hh ?_, .tower m⟩
            rw [hp]; exact unary_tower_many m p
  | data hv =>
    cases hx with
    | data hw =>
      obtain ⟨t, ht, hc⟩ := value_apply hv hw hn
      exact ⟨t, ht, .data hc⟩
    | tower m =>
      cases hv with
      | bit => exact ⟨_, false_apply _, .data .id⟩
      | id => exact ⟨_, ident_apply _, .tower m⟩
      | const => exact ⟨_, constant_apply _, .data (.neutral .suffix)⟩
      | neutral hneut => exact ⟨_, .refl _, .data (.neutral (.app _ hneut))⟩
      | stream k hk =>
        have hp : 0 < n-k := by omega
        obtain ⟨p, hp⟩ := Nat.exists_eq_succ_of_ne_zero (Nat.ne_of_gt hp)
        cases m with
        | zero =>
          refine ⟨.app (.app cont churchFalse) (unary p), ?_, .data (.neutral (.app _ (.app _ .cont)))⟩
          rw [hp]; exact unary_callback p cont
        | succ m =>
          cases m with
          | zero =>
            refine ⟨.app cont (unary p), ?_, .data (.neutral (.app _ .cont))⟩
            rw [hp]; exact unary_tower_one p
          | succ m =>
            refine ⟨_, ?_, .tower m⟩
            rw [hp]; exact unary_tower_many m p
    | factory m =>
      cases hv with
      | bit => exact ⟨_, false_apply _, .data .id⟩
      | id => exact ⟨_, ident_apply _, .factory m⟩
      | const => exact ⟨_, constant_apply _, .data (.neutral .suffix)⟩
      | neutral hneut => exact ⟨_, .refl _, .data (.neutral (.app _ hneut))⟩
      | stream k hk =>
        have hp : 0 < n-k := by omega
        obtain ⟨p, hp⟩ := Nat.exists_eq_succ_of_ne_zero (Nat.ne_of_gt hp)
        have he : n-(k+1) = p := by omega
        refine ⟨unary p, ?_, .data ?_⟩
        · rw [hp]; exact unary_factory m p
        · rw [← he]; exact .stream (k+1) (by omega)

inductive Expr
  | stream | bit | ident
  | param : Nat → Expr
  | tower : Nat → Expr
  | factory : Nat → Expr
  | app : Expr → Expr → Expr

def Expr.apps : Expr → Nat
  | .app f a => f.apps + a.apps + 1
  | _ => 0

def Expr.eval (s : Term) : Expr → Term
  | .stream => s
  | .bit => churchFalse
  | .ident => SelfintRoleAlgebra.ident
  | .param k => .var k
  | .tower m => cTower m
  | .factory m => SelfintClosureBarrier.factory m
  | .app f a => .app (f.eval s) (a.eval s)

/-- Arbitrarily many copies and arbitrary specialization arguments are allowed.
    The bound depends on applications, not on normalization fuel. -/
theorem expr_uvalue (e : Expr) (n : Nat) (hn : e.apps+2 ≤ n) :
    ∃ t, Betas (e.eval (unary n)) t ∧ UValue n e.apps t := by
  induction e with
  | stream => exact ⟨_, .refl _, .data (.stream 0 (by omega))⟩
  | bit => exact ⟨_, .refl _, .data .bit⟩
  | ident => exact ⟨_, .refl _, .data .id⟩
  | param k => exact ⟨_, .refl _, .data (.neutral (.param k))⟩
  | tower m => exact ⟨_, .refl _, .tower m⟩
  | factory m => exact ⟨_, .refl _, .factory m⟩
  | app f a ihf iha =>
    have hn' : f.apps + a.apps + 3 ≤ n := hn
    obtain ⟨u, hu, hv⟩ := ihf (by omega)
    obtain ⟨v, hv', hw⟩ := iha (by omega)
    obtain ⟨w, hr, hc⟩ := uvalue_apply hv hw hn'
    exact ⟨w, betas_trans (betas_app hu hv') hr, hc⟩

def headKey : Term → Option Nat
  | .var k => some k
  | .lam _ => none
  | .app f _ => headKey f

theorem headKey_beta {t u : Term} (hr : Rigid t) (hb : Beta t u) :
    headKey t = headKey u := by
  induction hb with
  | beta b a => cases hr with | app _ h => cases h
  | appL a hb ih => cases hr with | app _ hf => exact ih hf
  | appR f hb ih => rfl
  | lam hb ih => cases hr

theorem headKey_betas {t u : Term} (hr : Rigid t) (hb : Betas t u) :
    headKey t = headKey u := by
  induction hb with
  | refl => rfl
  | head hb hs ih => exact (headKey_beta hr hb).trans (ih (rigid_beta hr hb))

theorem rigid_join_head {t u : Term} (ht : Rigid t) (hu : Rigid u)
    (hj : BetaJoin t u) : headKey t = headKey u := by
  obtain ⟨w, htw, huw⟩ := hj
  exact (headKey_betas ht htw).trans (headKey_betas hu huw).symm

theorem lam_not_join_rigid (b : Term) {t : Term} (ht : Rigid t) :
    ¬ BetaJoin (.lam b) t := by
  rintro ⟨w, hw, htw⟩
  obtain ⟨v, rfl, _⟩ := lam_betas_shape hw
  exact rigid_not_lam (rigid_betas ht htw) _ rfl

theorem lam_not_join_var (b : Term) (k : Nat) : ¬ BetaJoin (.lam b) (.var k) :=
  lam_not_join_rigid b (.var k)

def output (n : Nat) : Term := .app (.app cont (unary (n-1))) suffix

theorem normal_join_eq {t u : Term} (ht : NFt t) (hu : NFt u)
    (h : BetaJoin t u) : t = u := by
  obtain ⟨v, hv, hv'⟩ := h
  exact (normalForm_betas_eq (SelfintClassNext.nft_normal ht) hv).symm.trans
    (normalForm_betas_eq (SelfintClassNext.nft_normal hu) hv')

theorem var_not_join_app (k : Nat) {f a : Term} (hf : Rigid f) :
    ¬ BetaJoin (.var k) (.app f a) := by
  intro h
  obtain ⟨v, hl, hr⟩ := h
  have he := normalForm_betas_eq (SelfintClassNext.nft_normal (show NFt (.var k) from trivial)) hl
  obtain ⟨g, b, hg, _, _⟩ := rigid_app_betas hr rfl hf
  rw [he] at hg
  cases hg

theorem tower_not_join_j (m : Nat) : ¬ BetaJoin (cTower m) (.var 2) := by
  cases m with
  | zero =>
      intro h
      have he := normal_join_eq (by decide : NFt (cTower 0)) (by decide) h
      cases he
  | succ m => exact lam_not_join_var _ _

theorem tower_not_join_output (m n : Nat) : ¬ BetaJoin (cTower m) (output n) := by
  cases m with
  | zero => exact var_not_join_app 1 (.app _ (.var 1))
  | succ m => exact lam_not_join_rigid _ (.app _ (.app _ (.var 1)))

theorem value_trailing_hole {n b : Nat} {v : Term}
    (hv : UValue n b v) (hn : b+1 ≤ n) :
    ¬ BetaJoin (.app v (.var 2)) (output n) := by
  have hout : Rigid (output n) := .app _ (.app _ (.var 1))
  have useRed {t : Term} (hr : Betas (.app v (.var 2)) t)
      (hnj : ¬ BetaJoin t (output n)) :
      ¬ BetaJoin (.app v (.var 2)) (output n) := by
    intro hj
    exact hnj (join_trans (join_symm (join_of_betas hr)) hj)
  cases hv with
  | factory m =>
      apply useRed (factory_apply m _)
      intro hj
      have he := rigid_join_head (.app _ (.var 2)) hout hj
      simp [headKey, output, cont] at he
  | tower m =>
      cases m with
      | zero =>
          intro hj
          have hlast := (rigid_app_join (.var 1) (.app _ (.var 1)) hj).2
          have he := normal_join_eq (by decide : NFt (.var 2)) (by decide) hlast
          cases he
      | succ m => exact useRed (tower_apply m _) (tower_not_join_output m n)
  | data hv =>
    cases hv with
    | stream k hk =>
        have hp : 0 < n-k := by omega
        obtain ⟨m, hm⟩ := Nat.exists_eq_succ_of_ne_zero (Nat.ne_of_gt hp)
        have hr : Betas (.app (unary (n-k)) (.var 2))
            (.app (.app (.var 2) churchFalse) (unary m)) := by
          rw [hm]; exact unary_callback m _
        apply useRed hr
        intro hj
        have he := rigid_join_head (.app _ (.app _ (.var 2))) hout hj
        simp [headKey, output, cont] at he
    | bit => exact useRed (false_apply _) (lam_not_join_rigid _ hout)
    | id =>
        apply useRed (ident_apply _)
        intro hj
        have he := rigid_join_head (.var 2) hout hj
        simp [headKey, output, cont] at he
    | const =>
        apply useRed (constant_apply _)
        intro hj
        have he := rigid_join_head (.var 0) hout hj
        simp [headKey, output, cont] at he
    | neutral hv =>
        have hrig {t : Term} (h : Neutral t) : Rigid t := by
          induction h with
          | suffix => exact .var 0
          | cont => exact .var 1
          | param k => exact .var k
          | app a h ih => exact .app a ih
        intro hj
        have hlast := (rigid_app_join (hrig hv) (.app _ (.var 1)) hj).2
        have he := normal_join_eq (by decide : NFt (.var 2)) (by decide) hlast
        cases he

def zero : Term := pairT churchTrue (.var 3)
def zeroConstant : Term := .lam (.var 4)
def zeroTarget : Term := .app (.var 3) (.var 2)

theorem zero_callback (a : Term) :
    Betas (.app zero a) (.app (.app a churchTrue) (.var 3)) :=
  betas_of_spineReds (spine_pairT _ _ _)

theorem zero_square : Betas (.app zero zero) zeroConstant :=
  SelfintClass.normalSteps_sound (by decide : SelfintClass.normalSteps 5
    (.app zero zero) = some zeroConstant)

theorem zero_constant_apply (a : Term) :
    Betas (.app zeroConstant a) (.var 3) := by
  exact .head (.beta _ _) (.refl _)

theorem zero_ident : Betas (.app zero ident) zeroConstant :=
  SelfintClass.normalSteps_sound (by decide : SelfintClass.normalSteps 3
    (.app zero ident) = some zeroConstant)

theorem zero_false : Betas (.app zero churchFalse) (.var 3) :=
  betas_trans (zero_callback _) (betas_of_spineReds (spine_false2 _ _))

theorem zero_factory (m : Nat) : Betas (.app zero (factory m)) (cTower m) :=
  betas_trans (zero_callback _)
    (betas_trans (betas_appL _ (factory_apply m _))
      (betas_of_spineReds (spine_true2 _ _)))

theorem zero_tower_one : Betas (.app zero (cTower 1)) (.app cont (.var 3)) :=
  betas_trans (zero_callback _) (betas_appL _ (tower_apply 0 _))

theorem zero_tower_many (m : Nat) :
    Betas (.app zero (cTower (m+2))) (cTower m) :=
  betas_trans (zero_callback _)
    (betas_trans (betas_appL _ (tower_apply (m+1) _)) (tower_apply m _))

/-- Uniform zero values retain their meanings in the unary evaluation.
    Constants around r/c may change meaning; they can never expose a j. -/
inductive Paired (n b : Nat) : Term → Term → Prop
  | stream : Paired n b zero (unary n)
  | bit : Paired n b churchFalse churchFalse
  | ident : Paired n b SelfintRoleAlgebra.ident SelfintRoleAlgebra.ident
  | factory (m : Nat) : Paired n b (SelfintClosureBarrier.factory m) (SelfintClosureBarrier.factory m)
  | tower {u : Term} (m : Nat) : UValue n b u → Paired n b (cTower m) u
  | constant {u : Term} : UValue n b u → Paired n b zeroConstant u
  | neutral {z u : Term} : Rigid z → UValue n b u →
      (BetaJoin z (.var 2) → BetaJoin u (.var 2)) →
      (BetaJoin z zeroTarget → ¬ BetaJoin u (output n)) → Paired n b z u

theorem paired_uvalue {n b : Nat} {z u : Term} (h : Paired n b z u) : UValue n b u := by
  cases h with
  | stream => exact .data (.stream 0 (by omega))
  | bit => exact .data .bit
  | ident => exact .data .id
  | factory m => exact .factory m
  | tower _ h => exact h
  | constant h => exact h
  | neutral _ h _ _ => exact h

theorem paired_mono {n a b : Nat} {z u : Term} (h : Paired n a z u) (hab : a ≤ b) :
    Paired n b z u := by
  cases h with
  | stream => exact .stream
  | bit => exact .bit
  | ident => exact .ident
  | factory m => exact .factory m
  | tower m h => exact .tower m (uvalue_mono h hab)
  | constant h => exact .constant (uvalue_mono h hab)
  | neutral hr hv hj ho => exact .neutral hr (uvalue_mono hv hab) hj ho

theorem paired_j {n b : Nat} {z u : Term} (h : Paired n b z u)
    (hj : BetaJoin z (.var 2)) : BetaJoin u (.var 2) := by
  cases h with
  | stream => exact (lam_not_join_var _ _ hj).elim
  | bit => exact (lam_not_join_var _ _ hj).elim
  | ident => exact (lam_not_join_var _ _ hj).elim
  | factory m => exact (lam_not_join_var _ _ hj).elim
  | constant hv => exact (lam_not_join_var _ _ hj).elim
  | tower m hv => exact (tower_not_join_j m hj).elim
  | neutral _ _ hj' _ => exact hj' hj

theorem paired_bad {n b : Nat} {z u : Term} (h : Paired n b z u)
    (hz : BetaJoin z zeroTarget) : ¬ BetaJoin u (output n) := by
  cases h with
  | stream => exact (lam_not_join_rigid _ (.app _ (.var 3)) hz).elim
  | bit => exact (lam_not_join_rigid _ (.app _ (.var 3)) hz).elim
  | ident => exact (lam_not_join_rigid _ (.app _ (.var 3)) hz).elim
  | factory m => exact (lam_not_join_rigid _ (.app _ (.var 3)) hz).elim
  | constant hv => exact (lam_not_join_rigid _ (.app _ (.var 3)) hz).elim
  | tower m hv =>
      cases m with
      | zero => exact (var_not_join_app 1 (.var 3) hz).elim
      | succ m => exact (lam_not_join_rigid _ (.app _ (.var 3)) hz).elim
  | neutral _ _ _ ho => exact ho hz

/-- Safe zero neutrals have the wrong shape or last argument on zero input. -/
theorem paired_safe {n b : Nat} {z u : Term} (hz : Rigid z) (hu : UValue n b u)
    (hj : ¬ BetaJoin z (.var 2)) (ho : ¬ BetaJoin z zeroTarget) : Paired n b z u :=
  .neutral hz hu (fun h => (hj h).elim) (fun h => (ho h).elim)

theorem paired_var_safe {n b k : Nat} {u : Term} (hu : UValue n b u) (hk : k ≠ 2) :
    Paired n b (.var k) u := by
  refine paired_safe (.var k) hu ?_ (var_not_join_app k (.var 3))
  intro hj
  have he := normal_join_eq (show NFt (.var k) from trivial) (by decide) hj
  exact hk (Term.var.inj he)

theorem rigid_app_not_j {z a : Term} (hz : Rigid z) :
    ¬ BetaJoin (.app z a) (.var 2) := by
  intro h
  exact var_not_join_app 2 hz (join_symm h)

theorem paired_safe_last {n b : Nat} {z a u : Term} (hz : Rigid z) (hu : UValue n b u)
    (ha : ¬ BetaJoin a (.var 2)) : Paired n b (.app z a) u := by
  refine paired_safe (.app a hz) hu (rigid_app_not_j hz) ?_
  intro h
  exact ha (rigid_app_join hz (.var 3) h).2

theorem paired_c_head {n b : Nat} {a u : Term} (hu : UValue n b u) :
    Paired n b (.app cont a) u := by
  refine paired_safe (.app a (.var 1)) hu (rigid_app_not_j (.var 1)) ?_
  intro h
  have he := rigid_join_head (.app a (.var 1)) (.app _ (.var 3)) h
  simp [headKey] at he

theorem r_not_j : ¬ BetaJoin (.var 3) (.var 2) := by
  intro h
  have he := normal_join_eq (by decide : NFt (.var 3)) (by decide) h
  cases he

/-- The paired algebra prices sharing semantically: no expanded copy count
    or assumption that different uses have different source origins. -/
theorem paired_apply {n a b : Nat} {fz fu az au : Term}
    (hf : Paired n a fz fu) (ha : Paired n b az au) (hn : a+b+3 ≤ n) :
    ∃ z u, Betas (.app fz az) z ∧ Betas (.app fu au) u ∧ Paired n (a+b+1) z u := by
  obtain ⟨u, hu, hv⟩ := uvalue_apply (paired_uvalue hf) (paired_uvalue ha) hn
  cases hf with
  | ident =>
      exact ⟨_, _, ident_apply _, ident_apply _, paired_mono ha (by omega)⟩
  | bit => exact ⟨_, _, false_apply _, false_apply _, .ident⟩
  | constant hfu =>
      exact ⟨_, u, zero_constant_apply _, hu, paired_var_safe hv (by decide)⟩
  | tower m hfu =>
      cases m with
      | zero => exact ⟨_, u, .refl _, hu, paired_c_head hv⟩
      | succ m => exact ⟨_, u, tower_apply m _, hu, .tower m hv⟩
  | neutral hrig hfu hj ho =>
      refine ⟨_, u, .refl _, hu, .neutral (.app az hrig) hv ?_ ?_⟩
      · intro hbad; exact (rigid_app_not_j hrig hbad).elim
      · intro hz hout
        have haj := paired_j ha (rigid_app_join hrig (.var 3) hz).2
        have happ := join_appR fu haj
        apply value_trailing_hole hfu (by omega)
        exact join_trans (join_symm happ) (join_trans (join_of_betas hu) hout)
  | factory m =>
      cases ha with
      | ident => exact ⟨_, _, factory_ident m, factory_ident m, .tower m (.tower m)⟩
      | bit => exact ⟨_, _, factory_false m, factory_false m, .ident⟩
      | constant hau =>
          exact ⟨_, u, betas_trans (factory_apply m _) (zero_constant_apply _), hu,
            paired_var_safe hv (by decide)⟩
      | neutral hr hau hj ho =>
          exact ⟨_, u, factory_apply m _, hu, paired_safe_last hr hv (tower_not_join_j m)⟩
      | tower k hau =>
          cases k with
          | zero => exact ⟨_, u, factory_apply m _, hu, paired_c_head hv⟩
          | succ k =>
              exact ⟨_, u, betas_trans (factory_apply m _) (tower_apply k _), hu, .tower k hv⟩
      | factory k =>
          have hz := betas_trans (factory_apply m _) (factory_apply k _)
          cases m with
          | zero => exact ⟨_, u, hz, hu, paired_c_head hv⟩
          | succ m => exact ⟨_, u, betas_trans hz (tower_apply m _), hu, .tower m hv⟩
      | stream =>
          have hz := factory_apply m zero
          cases m with
          | zero =>
              exact ⟨_, u, betas_trans hz (zero_callback _), hu,
                paired_safe_last (.app _ (.var 1)) hv r_not_j⟩
          | succ m =>
              cases m with
              | zero => exact ⟨_, u, betas_trans hz zero_tower_one, hu, paired_c_head hv⟩
              | succ m => exact ⟨_, u, betas_trans hz (zero_tower_many m), hu, .tower m hv⟩
  | stream =>
      have hp : 0 < n := by omega
      obtain ⟨p, hp⟩ := Nat.exists_eq_succ_of_ne_zero (Nat.ne_of_gt hp)
      cases ha with
      | stream =>
          refine ⟨_, _, zero_square, ?_, .constant (.data .const)⟩
          exact betas_of_spineReds (skip_self n suffix)
      | ident =>
          refine ⟨_, _, zero_ident, ?_, .constant (.data .id)⟩
          rw [hp]; exact unary_ident p
      | bit =>
          refine ⟨_, u, zero_false, hu, paired_var_safe hv (by decide)⟩
      | factory m =>
          exact ⟨_, u, zero_factory m, hu, .tower m hv⟩
      | constant hau =>
          exact ⟨_, u, betas_trans (zero_callback _) (betas_appL _ (zero_constant_apply _)), hu,
            paired_safe_last (.var 3) hv r_not_j⟩
      | neutral hr hau hj ho =>
          exact ⟨_, u, zero_callback _, hu, paired_safe_last (.app _ hr) hv r_not_j⟩
      | tower m hau =>
          cases m with
          | zero =>
              exact ⟨_, u, zero_callback _, hu, paired_safe_last (.app _ (.var 1)) hv r_not_j⟩
          | succ m =>
              cases m with
              | zero => exact ⟨_, u, zero_tower_one, hu, paired_c_head hv⟩
              | succ m => exact ⟨_, u, zero_tower_many m, hu, .tower m hv⟩

/-- This invariant simultaneously handles both input families and unrestricted
    application structure. Factories can occur any number of times. -/
theorem expr_paired (e : Expr) (n : Nat) (hn : e.apps+2 ≤ n) :
    ∃ z u, Betas (e.eval zero) z ∧ Betas (e.eval (unary n)) u ∧ Paired n e.apps z u := by
  induction e with
  | stream => exact ⟨_, _, .refl _, .refl _, .stream⟩
  | bit => exact ⟨_, _, .refl _, .refl _, .bit⟩
  | ident => exact ⟨_, _, .refl _, .refl _, .ident⟩
  | factory m => exact ⟨_, _, .refl _, .refl _, .factory m⟩
  | tower m => exact ⟨_, _, .refl _, .refl _, .tower m (.tower m)⟩
  | param k =>
      refine ⟨_, _, .refl _, .refl _, .neutral (.var k) (.data (.neutral (.param k)))
        (fun h => h) ?_⟩
      intro h
      exact (var_not_join_app k (.var 3) h).elim
  | app f a ihf iha =>
      have hn' : f.apps+a.apps+3 ≤ n := hn
      obtain ⟨fz, fu, hfz, hfu, hf⟩ := ihf (by omega)
      obtain ⟨az, au, haz, hau, ha⟩ := iha (by omega)
      obtain ⟨z, u, hz, hu, hpair⟩ := paired_apply hf ha hn'
      exact ⟨z, u, betas_trans (betas_app hfz haz) hz, betas_trans (betas_app hfu hau) hu, hpair⟩

/-- A whole sharing context made solely from these atoms is not a reader,
    however many copies or different specialization arguments it uses. -/
theorem factories_cannot_read (e : Expr) (hz : BetaJoin (e.eval zero) zeroTarget)
    (n : Nat) (hn : e.apps+2 ≤ n) :
    ¬ BetaJoin (e.eval (unary n)) (output n) := by
  obtain ⟨z, u, hzr, hur, hp⟩ := expr_paired e n hn
  intro hu
  exact paired_bad hp (join_trans (join_symm (join_of_betas hzr)) hz)
    (join_trans (join_symm (join_of_betas hur)) hu)

/-- An arbitrary application context for a shared definition. The hole can
    occur nonlinearly, under different specialization arguments. -/
inductive SharingContext
  | atom : Expr → SharingContext
  | hole : SharingContext
  | app : SharingContext → SharingContext → SharingContext

def SharingContext.eval (ρ : Expr → Term) (h : Term) : SharingContext → Term
  | .atom e => ρ e
  | .hole => h
  | .app f a => .app (f.eval ρ h) (a.eval ρ h)

def SharingContext.expand (A : Expr) : SharingContext → Expr
  | .atom e => e
  | .hole => A
  | .app f a => .app (f.expand A) (a.expand A)

def share (C : SharingContext) (A : Expr) (s : Term) : Term :=
  .app (.lam (C.eval (fun e => shift 1 0 (e.eval s)) (.var 0))) (A.eval s)

theorem sharing_contract (C : SharingContext) (ρ : Expr → Term) (a : Term) :
    contract (C.eval (fun e => shift 1 0 (ρ e)) (.var 0)) a = C.eval ρ a := by
  induction C with
  | atom e => exact substDec_shift _ _ _
  | hole => rfl
  | app f x ihf ihx =>
      change Term.app (contract (f.eval (fun e => shift 1 0 (ρ e)) (.var 0)) a)
        (contract (x.eval (fun e => shift 1 0 (ρ e)) (.var 0)) a) = _
      rw [ihf, ihx]; rfl

theorem sharing_expand (C : SharingContext) (A : Expr) (s : Term) :
    C.eval (fun e => e.eval s) (A.eval s) = (C.expand A).eval s := by
  induction C with
  | atom e => rfl
  | hole => rfl
  | app f a ihf iha => simp only [SharingContext.eval, SharingContext.expand, Expr.eval, ihf, iha]

theorem share_reduces (C : SharingContext) (A : Expr) (s : Term) :
    Betas (share C A s) ((C.expand A).eval s) := by
  have h := Beta.beta (C.eval (fun e => shift 1 0 (e.eval s)) (.var 0)) (A.eval s)
  rw [sharing_contract, sharing_expand] at h
  exact .head h (.refl _)

/-- Literal nonlinear sharing of any expression in the grammar cannot evade
    the result; the theorem does not charge its expanded copies. -/
theorem sharing_cannot_read (C : SharingContext) (A : Expr)
    (hz : BetaJoin (share C A zero) zeroTarget)
    (n : Nat) (hn : (C.expand A).apps+2 ≤ n) :
    ¬ BetaJoin (share C A (unary n)) (output n) := by
  intro hu
  exact factories_cannot_read (C.expand A)
    (join_trans (join_symm (join_of_betas (share_reduces C A zero))) hz) n hn
    (join_trans (join_symm (join_of_betas (share_reduces C A (unary n)))) hu)

/-- Any source representation beta-equal to such a context is excluded. This
    also transports the result through a finite sequence of sharing lets. -/
theorem represented_reader_impossible (R : Term) (e : Expr)
    (hzrep : BetaJoin (.app R zero) (e.eval zero))
    (hurep : ∀ n, BetaJoin (.app R (unary (n+1))) (e.eval (unary (n+1))))
    (hz : BetaJoin (.app R zero) zeroTarget)
    (hu : ∀ n, BetaJoin (.app R (unary (n+1))) (output (n+1))) : False := by
  apply factories_cannot_read e (join_trans (join_symm hzrep) hz) (e.apps+2) (by omega)
  exact join_trans (join_symm (hurep (e.apps+1))) (hu (e.apps+1))

#print axioms factories_cannot_read
#print axioms sharing_cannot_read
#print axioms represented_reader_impossible
end Blc.SelfintClosureBarrier
