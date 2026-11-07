/- A source callback cannot hide behind unary data.
   General structural theorems; no term generation or bounded reductions. -/
import RoleAlgebra
import Blc.SelfintProjections
import Blc.NormalOrder

namespace Blc.Round3Prove46
open Term Round3Role SelfintControl SelfintProjections SelfintLowerBound

set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

/- Atoms are the input stream, F, and independent rigid parameters.
   In particular N=0, c=1, and the later opaque argument j=2. -/
def atoms (n : Nat) : Nat → Term
  | 0 => unary n
  | 1 => churchFalse
  | k+2 => .var k

theorem atoms_value (n k : Nat) : Value n 0 (atoms n k) := by
  cases k with
  | zero => exact .stream 0 (by omega)
  | succ k => cases k with
    | zero => exact .bit
    | succ k => exact .neutral (.param k)

/-- An arbitrary lambda-free callback body, with one distinguished bound name. -/
inductive Flat
  | atom : Nat → Flat
  | bound : Flat
  | app : Flat → Flat → Flat

def Flat.eval (ρ : Nat → Term) (x : Term) : Flat → Term
  | .atom k => ρ k
  | .bound => x
  | .app f a => .app (f.eval ρ x) (a.eval ρ x)

def Flat.charge (b : Nat) : Flat → Nat
  | .atom _ => 0
  | .bound => b
  | .app f a => f.charge b + a.charge b + 1

def Flat.close (B : Flat) (n : Nat) : Term :=
  .lam (B.eval (fun k => shift 1 0 (atoms n k)) (.var 0))

theorem flat_contract (B : Flat) (ρ : Nat → Term) (a : Term) :
    contract (B.eval (fun k => shift 1 0 (ρ k)) (.var 0)) a = B.eval ρ a := by
  induction B with
  | atom k => exact substDec_shift (ρ k) a 0
  | bound => rfl
  | app f x ihf ihx =>
      change Term.app (contract (f.eval (fun k => shift 1 0 (ρ k)) (.var 0)) a)
        (contract (x.eval (fun k => shift 1 0 (ρ k)) (.var 0)) a) = _
      rw [ihf, ihx]
      rfl

theorem close_apply (B : Flat) (n : Nat) (a : Term) :
    Betas (.app (B.close n) a) (B.eval (atoms n) a) := by
  have h := Beta.beta (B.eval (fun k => shift 1 0 (atoms n k)) (.var 0)) a
  rw [flat_contract] at h
  exact .head h (.refl _)

theorem flat_value (B : Flat) {n b : Nat} {a : Term}
    (ha : Value n b a) (hn : B.charge b + 2 ≤ n) :
    ∃ v, Betas (B.eval (atoms n) a) v ∧ Value n (B.charge b) v := by
  induction B with
  | atom k => exact ⟨_, .refl _, atoms_value n k⟩
  | bound => exact ⟨_, .refl _, ha⟩
  | app f x ihf ihx =>
      have hn' : f.charge b + x.charge b + 3 ≤ n := hn
      obtain ⟨fv, hfr, hfv⟩ := ihf (by omega)
      obtain ⟨xv, hxr, hxv⟩ := ihx (by omega)
      obtain ⟨v, hr, hv⟩ := value_apply hfv hxv hn'
      exact ⟨v, betas_trans (betas_app hfr hxr) hr, hv⟩

theorem close_value (B : Flat) {n b : Nat} {a : Term}
    (ha : Value n b a) (hn : B.charge b + 2 ≤ n) :
    ∃ v, Betas (.app (B.close n) a) v ∧ Value n (B.charge b) v := by
  obtain ⟨v, hr, hv⟩ := flat_value B ha hn
  exact ⟨v, betas_trans (close_apply B n a) hr, hv⟩

/-- Applications around one literal callback. The callback may be in function
    position, so source redexes are included. No restriction on body duplication. -/
inductive Marked
  | atom : Nat → Marked
  | callback : Marked
  | app : Marked → Marked → Marked

def Marked.uses : Marked → Nat
  | .atom _ => 0
  | .callback => 1
  | .app f a => f.uses + a.uses

def Marked.eval (B : Flat) (n : Nat) : Marked → Term
  | .atom k => atoms n k
  | .callback => B.close n
  | .app f a => .app (f.eval B n) (a.eval B n)

/-- A deliberately loose, explicit source-dependent offset bound. -/
def Marked.charge (B : Flat) : Marked → Nat
  | .atom _ | .callback => 0
  | .app f a => max (f.charge B + a.charge B + 1)
      (max (B.charge (a.charge B)) (B.charge 0 + f.charge B + 2))

theorem marked_charge_app (f a : Marked) (B : Flat) :
    f.charge B + a.charge B + 1 ≤ (Marked.app f a).charge B ∧
    B.charge (a.charge B) ≤ (Marked.app f a).charge B ∧
    B.charge 0 + f.charge B + 2 ≤ (Marked.app f a).charge B := by
  simp only [Marked.charge]
  omega

theorem value_callback (B : Flat) {n b : Nat} {f : Term}
    (hf : Value n b f) (hn : B.charge 0 + b + 4 ≤ n) :
    ∃ v, Betas (.app f (B.close n)) v ∧
      (Value n (B.charge 0 + b + 2) v ∨ v = B.close n) := by
  cases hf with
  | stream k hk =>
      have hp : 0 < n-k := by omega
      obtain ⟨m, hm⟩ := Nat.exists_eq_succ_of_ne_zero (Nat.ne_of_gt hp)
      have htail : n-(k+1) = m := by omega
      have ht : Value n (b+1) (unary m) := by
        rw [← htail]; exact .stream (k+1) (by omega)
      obtain ⟨v, hr, hv⟩ := close_value B (n := n) (b := 0) .bit (by omega)
      obtain ⟨w, hwr, hw⟩ := value_apply hv ht hn
      refine ⟨w, ?_, Or.inl hw⟩
      rw [hm]
      exact betas_trans (unary_callback m _) (betas_trans (betas_appL _ hr) hwr)
  | bit => exact ⟨_, false_apply _, Or.inl .id⟩
  | id => exact ⟨_, ident_apply _, Or.inr rfl⟩
  | const => exact ⟨_, constant_apply _, Or.inl (.neutral .suffix)⟩
  | neutral hr => exact ⟨_, .refl _, Or.inl (.neutral (.app _ hr))⟩

/-- One flat callback can survive only as that same bare callback. It cannot
    become a data-supplied wrapper enclosing a continuation or a callback. -/
theorem marked_value (e : Marked) (B : Flat) (n : Nat)
    (hu : e.uses ≤ 1) (hn : e.charge B + 2 ≤ n) :
    ∃ v, Betas (e.eval B n) v ∧
      (Value n (e.charge B) v ∨ (e.uses = 1 ∧ v = B.close n)) := by
  induction e with
  | atom k => exact ⟨_, .refl _, Or.inl (atoms_value n k)⟩
  | callback => exact ⟨_, .refl _, Or.inr ⟨rfl, rfl⟩⟩
  | app f a ihf iha =>
      obtain ⟨hb, hc, hd⟩ := marked_charge_app f a B
      have hu' : f.uses + a.uses ≤ 1 := hu
      obtain ⟨fv, hfr, hfv⟩ := ihf (by omega) (by omega)
      obtain ⟨av, har, hav⟩ := iha (by omega) (by omega)
      rcases hfv with hfv | ⟨hfu, rfl⟩
      · rcases hav with hav | ⟨hau, rfl⟩
        · obtain ⟨v, hr, hv⟩ := value_apply hfv hav (by omega)
          exact ⟨v, betas_trans (betas_app hfr har) hr,
            Or.inl (value_mono hv hb)⟩
        · obtain ⟨v, hr, hv⟩ := value_callback B hfv (by omega)
          refine ⟨v, betas_trans (betas_app hfr har) hr, ?_⟩
          rcases hv with hv | hv
          · exact Or.inl (value_mono hv hd)
          · exact Or.inr ⟨by simp only [Marked.uses]; omega, hv⟩
      · rcases hav with hav | ⟨hau, _⟩
        · obtain ⟨v, hr, hv⟩ := close_value B hav (by omega)
          exact ⟨v, betas_trans (betas_app hfr har) hr,
            Or.inl (value_mono hv hc)⟩
        · omega

def finishCharge (e : Marked) (B : Flat) (b : Nat) : Nat :=
  max (e.charge B + b + 1) (B.charge b)

/-- Supplying one more data argument activates any surviving flat callback.
    This includes nonliteral operands and arbitrary redexes around its one copy. -/
theorem marked_finish (e : Marked) (B : Flat) {n b : Nat} {a : Term}
    (hu : e.uses ≤ 1) (ha : Value n b a)
    (hn : finishCharge e B b + 2 ≤ n) :
    ∃ v, Betas (.app (e.eval B n) a) v ∧ Value n (finishCharge e B b) v := by
  have h0 : e.charge B + b + 1 ≤ finishCharge e B b := Nat.le_max_left _ _
  have h1 : B.charge b ≤ finishCharge e B b := Nat.le_max_right _ _
  obtain ⟨v, hr, hv⟩ := marked_value e B n hu (by omega)
  rcases hv with hv | ⟨_, rfl⟩
  · obtain ⟨w, hw, hW⟩ := value_apply hv ha (by omega)
    exact ⟨w, betas_trans (betas_appL _ hr) hw, value_mono hW h0⟩
  · obtain ⟨w, hw, hW⟩ := close_value B ha (by omega)
    exact ⟨w, betas_trans (betas_appL _ hr) hw, value_mono hW h1⟩

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

def output (n : Nat) : Term := .app (.app cont (unary (n-1))) suffix

/-- A data/neutral result cannot absorb a later opaque j and return c V N. -/
theorem value_trailing_hole {n b : Nat} {v : Term}
    (hv : Value n b v) (hn : b+1 ≤ n) :
    ¬ BetaJoin (.app v (.var 2)) (output n) := by
  have hout : Rigid (output n) := .app _ (.app _ (.var 1))
  have useRed {t : Term} (hr : Betas (.app v (.var 2)) t)
      (hnj : ¬ BetaJoin t (output n)) :
      ¬ BetaJoin (.app v (.var 2)) (output n) := by
    intro hj
    exact hnj (join_trans (join_symm (join_of_betas hr)) hj)
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
      have he := rigid_join_head (.var 2) (.var 0) hlast
      simp [headKey] at he

/-- Complete semantic obstruction, not only arithmetic: one flat callback
    followed by a long data argument and then j cannot implement the variable law. -/
theorem one_callback_trailing_hole (e : Marked) (B : Flat) {n b : Nat} {a : Term}
    (hu : e.uses ≤ 1) (ha : Value n b a)
    (hn : finishCharge e B b + 2 ≤ n) :
    ¬ BetaJoin (.app (.app (e.eval B n) a) (.var 2)) (output n) := by
  obtain ⟨v, hr, hv⟩ := marked_finish e B hu ha hn
  intro hj
  apply value_trailing_hole hv (by omega)
  exact join_trans (join_symm (join_of_betas (betas_appL _ hr))) hj

end Blc.Round3Prove46
