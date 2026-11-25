import Blc.SelfintSingleObjectChecks
namespace Blc.SelfintFiniteChain
open Term SelfintLowerBound
structure Algebra (n : Nat) where
  ap : Fin (n+1) → Fin (n+1) → Fin (n+1)
  floor : Fin (n+1)
  mono : ∀ i j, i ≤ j → ∀ x, ap i x ≤ ap j x
  monoR : ∀ i x y, x ≤ y → ap i x ≤ ap i y
  top : ∀ x, ap ⟨n, by omega⟩ x = ⟨n, by omega⟩
variable {n : Nat}
local notation "F" => Fin (n+1)
abbrev Env (n : Nat) := Nat → Fin (n+1)
def push (k : F) (e : Env n) : Env n
  | 0 => k
  | j+1 => e j
inductive Typed (G : Algebra n) : Env n → Term → F → Prop where
  | var (e : Env n) (i : Nat) {k : F} : e i ≤ k → Typed G e (.var i) k
  | app {e f a i j k} : Typed G e f i → Typed G e a j → G.ap i j ≤ k → Typed G e (.app f a) k
  | lam {e b k} : G.floor ≤ k → (∀ a, Typed G (push a e) b (G.ap k a)) → Typed G e (.lam b) k
variable {G : Algebra n}
local notation "T" => Typed G
theorem Typed.weaken {e : Env n} {t : Term} {k : F} (h : T e t k) (l : F) (hl : k ≤ l) : T e t l := by
  induction h generalizing l with
  | var e n h => exact .var e n (Nat.le_trans h hl)
  | app hf ha h _ _ => exact .app hf ha (Nat.le_trans h hl)
  | lam h hb ih => exact .lam (Nat.le_trans h hl) (fun a => ih a _ (G.mono _ _ hl a))
def bumped (d c n : Nat) := if c≤n then n+d else n

theorem typed_shift {e : Env n} {t : Term} {k : F} (h : T e t k)
    (d c : Nat) (e' : Env n) (he : ∀ n, e' (bumped d c n)=e n) :
    T e' (shift d c t) k := by
  induction h generalizing c e' with
  | var e n hk =>
    have hv := Typed.var (G := G) e' (bumped d c n) (k:=_) (by rw [he n]; exact hk)
    by_cases hn : c≤n <;> simpa [shift,bumped,hn] using hv
  | app hf ha hk ihf iha => exact .app (ihf c e' he) (iha c e' he) hk
  | @lam e b k hk hb ih =>
    apply Typed.lam hk
    intro a
    apply ih a (c+1) (push a e')
    intro n
    cases n with
    | zero => simp [bumped,push]
    | succ n =>
      by_cases hn : c≤n
      · have hn' : c+1≤n+1 := by omega
        simpa [bumped,push,hn,hn',show n+1+d=(n+d)+1 by omega] using he n
      · have hn' : ¬ c+1≤n+1 := by omega
        simpa [bumped,push,hn,hn'] using he n

theorem typed_shift_one {e : Env n} {t : Term} {k : F} (h : T e t k)
    (l : F) : T (push l e) (shift 1 0 t) k :=
  typed_shift h 1 0 (push l e) (by intro n; simp [bumped,push])

def cutEnv (e : Env n) (j : Nat) : Env n := fun n => if n<j then e n else e (n+1)

theorem cutEnv_push (e : Env n) (j : Nat) (k : F) :
    cutEnv (push k e) (j+1)=push k (cutEnv e j) := by
  funext n
  cases n <;> simp [cutEnv,push]

theorem typed_subst {e : Env n} {t s : Term} {k : F} (h : T e t k)
    (j : Nat) (hs : T (cutEnv e j) s (e j)) :
    T (cutEnv e j) (substDec j s t) k := by
  induction h generalizing j s with
  | var e n hk =>
    simp only [substDec]
    split
    · rename_i hn; subst n; exact hs.weaken _ hk
    · rename_i hn
      split
      · rename_i hgt
        apply Typed.var
        have he : cutEnv e j (n-1)=e n := by
          simp only [cutEnv,show ¬ n-1<j by omega,if_false]
          congr 1; omega
        simpa only [he] using hk
      · rename_i hgt
        apply Typed.var
        have he : cutEnv e j n=e n := by simp [cutEnv,show n<j by omega]
        simpa only [he] using hk
  | app hf ha hk ihf iha => exact .app (ihf j hs) (iha j hs) hk
  | @lam e b k hk hb ih =>
    simp only [substDec]
    apply Typed.lam hk
    intro a
    simpa only [cutEnv_push] using
      ih a (j+1) (s:=shift 1 0 s) (by
        simpa only [cutEnv_push,push] using typed_shift_one hs a)

theorem typed_contract {e : Env n} {b a : Term} {k l : F}
    (hb : T (push k e) b l) (ha : T e a k) : T e (contract b a) l := by
  have he : cutEnv (push k e) 0=e := by funext n; simp [cutEnv,push]
  simpa only [contract,he] using typed_subst hb 0 (by simpa only [he,push] using ha)

theorem typed_beta {e : Env n} {t u : Term} {k : F}
    (hb : Beta t u) (ht : T e t k) : T e u k := by
  induction hb generalizing e k with
  | beta b a =>
    cases ht with
    | app hf ha hk =>
      cases hf with
      | lam hn hb => exact (typed_contract (hb _) ha).weaken _ hk
  | lam hb ih => cases ht with | lam hk ht => exact .lam hk (fun a => ih (ht a))
  | appL a hb ih => cases ht with
    | app hf ha hk => exact .app (ih hf) ha hk
  | appR f hb ih => cases ht with
    | app hf ha hk => exact .app hf (ih ha) hk

theorem typed_betas {e : Env n} {t u : Term} {k : F}
    (hb : Betas t u) (ht : T e t k) : T e u k := by
  induction hb with
  | refl => exact ht
  | head hb hr ih => exact ih (typed_beta hb ht)

def fits (G : Algebra n) (f : F → F) (i : F) : Bool :=
  decide (G.floor ≤ i) && (List.finRange (n+1)).all (fun j => decide (f j ≤ G.ap i j))
private def choose (n : Nat) (p : Fin (n+1) → Bool) : List (Fin (n+1)) → Fin (n+1)
  | [] => ⟨n,by omega⟩
  | x :: xs => if p x then (if x ≤ choose n p xs then x else choose n p xs) else choose n p xs
private theorem choose_good (p : F → Bool) (hp : p ⟨n,by omega⟩ = true) (xs : List F) :
    p (choose n p xs) = true := by
  induction xs with
  | nil => exact hp
  | cons x xs ih =>
    simp only [choose]
    split
    · rename_i h
      by_cases hle : x ≤ choose n p xs
      · simpa [hle] using h
      · simpa [hle] using ih
    · exact ih
private theorem choose_le (p : F → Bool) {a : F} (ha : p a = true) {xs : List F} (hx : a ∈ xs) :
    choose n p xs ≤ a := by
  induction xs with
  | nil => simp at hx
  | cons x xs ih =>
    rcases List.mem_cons.mp hx with rfl | hx
    · simp only [choose,ha,if_true]; split <;> omega
    · simp only [choose]
      split
      · have hh := ih hx; split <;> omega
      · exact ih hx
def pick (G : Algebra n) (f : F → F) : F := choose n (fits G f) (List.finRange (n+1))
theorem pick_fits (G : Algebra n) (f : F → F) : fits G f (pick G f) = true := by
  apply choose_good
  simp only [fits, Bool.and_eq_true, decide_eq_true_eq, List.all_eq_true]
  exact ⟨by have := G.floor.isLt; change _ ≤ n; omega, fun j _ => by simp [G.top]; have := (f j).isLt; change _ ≤ n; omega⟩
theorem pick_le (G : Algebra n) (f : F → F) {k : F} (h : fits G f k = true) : pick G f ≤ k :=
  choose_le _ h (by simp)
def eval (G : Algebra n) (e : Env n) : Term → F
  | .var j => e j
  | .app f a => G.ap (eval G e f) (eval G e a)
  | .lam b => pick G (fun a => eval G (push a e) b)
theorem typed_eval (t : Term) (e : Env n) : T e t (eval G e t) := by
  induction t generalizing e with
  | var j => exact .var _ _ (Nat.le_refl _)
  | app f a ih jh => exact .app (ih _) (jh _) (Nat.le_refl _)
  | lam b ih =>
    let q := fun a => eval G (push a e) b
    have h := pick_fits G q
    simp only [fits, Bool.and_eq_true, decide_eq_true_eq, List.all_eq_true] at h
    exact .lam h.1 (fun a => (ih _).weaken _ (h.2 a (by simp)))
theorem marker {t : Term} (G : Algebra n) (a : F) (h : Betas t (.var 0)) :
    a ≤ eval G (fun _ => a) t := by
  cases typed_betas h (typed_eval (G := G) t (fun _ => a)) with
  | var _ _ hv => exact hv
theorem eval_le {t : Term} {e : Env n} {k : F} (h : Typed G e t k) : eval G e t ≤ k := by
  induction h with
  | var e j hk => exact hk
  | app hf ha hk ihf iha =>
    exact Nat.le_trans (G.mono _ _ ihf _) (Nat.le_trans (G.monoR _ _ _ iha) hk)
  | lam hk hb ih =>
    apply pick_le
    simp only [fits,Bool.and_eq_true,decide_eq_true_eq,List.all_eq_true]
    exact ⟨hk,fun j _ => ih j⟩
theorem reduct_le (G : Algebra n) (e : Env n) {t u : Term} (hr : Betas t u) :
    eval G e u ≤ eval G e t := eval_le (typed_betas hr (typed_eval t e))
theorem pairGrade {a b : Term} {e : Env n} {x y z : F} (ha : T e a x) (hb : T e b y)
    (hl : G.floor ≤ z) (hc : ∀ j, G.ap (G.ap j x) y ≤ G.ap z j) : T e (pairT a b) z := by
  apply Typed.lam hl
  intro j
  apply Typed.app _ (typed_shift_one hb j) (hc j)
  exact Typed.app (Typed.var _ 0 (Nat.le_refl _)) (typed_shift_one ha j) (Nat.le_refl _)

def rho (c r : F) : Env n := fun j => if j=1 then c else r
theorem necessary (G : Algebra n) {m t : Term} {c r s z : F}
    (hm : Closed m) (hn : NFt (.app (.app (.var 1) (.lam m)) (.var 0)))
    (hs : Typed G (rho c r) (streamOf (blcCode m) (.var 0)) s)
    (he : IsSelfInterpreter t) (ht : eval G (rho c r) t = z) :
    eval G (rho c r) (.app (.app (.var 1) (.lam m)) (.var 0)) ≤ G.ap (G.ap z c) s := by
  have ha := typed_eval (G := G) t (rho c r)
  rw [ht] at ha
  have hc : Typed G (rho c r) (.var 1) c := .var _ _ (Nat.le_refl _)
  have h := Typed.app (Typed.app ha hc (Nat.le_refl _)) hs (Nat.le_refl _)
  obtain ⟨v,hv,hv'⟩ := SelfintControl.contract_join he hm (.var 1) (.var 0)
  have eq := normalForm_betas_eq (fun _ => nft_no_beta hn) hv'
  exact eval_le (typed_betas (eq ▸ hv) h)
end Blc.SelfintFiniteChain
