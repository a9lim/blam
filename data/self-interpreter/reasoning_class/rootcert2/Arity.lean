import Certificates
namespace Blc.Rootcert2Arity
open Term SelfintClass HandlerLet
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
set_option linter.unusedSimpArgs false

abbrev Ty := Nat → Prop
abbrev Env := Nat → Ty
def Sub (S T : Ty) : Prop := ∀ i, S i → T i
def ext (S : Ty) (Γ : Env) : Env
 | 0 => S
 | i+1 => Γ i

def tick (l : Nat) : Nat := (l / 3)*3 + min (l%3+1) 2

variable (dom cod : Nat → Ty)
/-- Recursive flow types: 0..11 are rigid head/arity pairs; >=12 are lambda labels.
No acyclicity or termination assumption is made about dom/cod. -/
inductive Typed : Env → Term → Ty → Prop
 | var {Γ i T} : Sub (Γ i) T → Typed Γ (.var i) T
 | lam {Γ b T l} : 12≤l → T l → Typed (ext (dom l) Γ) b (cod l) → Typed Γ (.lam b) T
 | app {Γ f a F A T} : Typed Γ f F → Typed Γ a A →
     (∀ l, F l → if l<12 then T (tick l) else Sub A (dom l) ∧ Sub (cod l) T) →
     Typed Γ (.app f a) T

variable {dom cod}
theorem mono {Γ t S T} (h : Typed dom cod Γ t S) (hs : Sub S T) : Typed dom cod Γ t T := by
 cases h with
 | var hv => exact .var (fun i hi => hs i (hv i hi))
 | lam hl ht hb => exact .lam hl (hs _ ht) hb
 | app hf ha hr =>
  apply Typed.app hf ha
  intro l hl
  have h := hr l hl
  by_cases hl4 : l<12
  · simp only [hl4, if_pos] at h ⊢; exact hs (tick l) h
  · simp only [hl4, if_neg] at h ⊢; exact ⟨h.1,fun i hi => hs i (h.2 i hi)⟩

theorem shift_typed {Γ t T} (h : Typed dom cod Γ t T) :
 ∀ d c Δ, (∀ i, Δ (if c≤i then i+d else i) = Γ i) →
 Typed dom cod Δ (shift d c t) T := by
 induction h with
 | @var Γ i T hv =>
  intro d c Δ he
  by_cases hi : c≤i
  · simp only [shift,hi,if_pos]
    exact .var (by simpa only [← he i, if_pos hi] using hv)
  · simp only [shift,hi,if_neg]
    exact .var (by simpa only [← he i, if_neg hi] using hv)
 | @lam Γ b T l hl ht hb ih =>
  intro d c Δ he
  apply Typed.lam hl ht
  apply ih d (c+1) (ext (dom l) Δ)
  intro i
  cases i with
  | zero => simp [ext]
  | succ i =>
   by_cases hi : c≤i
   · have hi' : c+1≤i+1 := by omega
     simpa [hi,hi',show i+1+d=(i+d)+1 by omega,ext] using he i
   · have hi' : ¬ c+1≤i+1 := by omega
     simpa [hi,hi',ext] using he i
 | @app Γ f a F A T hf ha hr ihf iha =>
  intro d c Δ he
  exact .app (ihf d c Δ he) (iha d c Δ he) hr

theorem subst_typed {Γ t T} (h : Typed dom cod Γ t T) :
 ∀ j s Δ, Typed dom cod Δ s (Γ j) →
   (∀ i, i≠j → Δ (if j<i then i-1 else i) = Γ i) →
 Typed dom cod Δ (substDec j s t) T := by
 induction h with
 | @var Γ i T hv =>
  intro j s Δ ha he
  by_cases hi : i=j
  · subst i; simpa [substDec] using mono ha hv
  · simp only [substDec,hi,if_neg]
    by_cases hij : j<i
    · simp only [hij,if_pos]
      apply Typed.var
      simpa only [← he i hi, if_pos hij] using hv
    · simp only [hij,if_neg]
      apply Typed.var
      simpa only [← he i hi, if_neg hij] using hv
 | @lam Γ b T l hl ht hb ih =>
  intro j s Δ ha he
  apply Typed.lam hl ht
  apply ih (j+1) (shift 1 0 s) (ext (dom l) Δ)
  · exact shift_typed ha 1 0 _ (by intro i; simp [ext])
  · intro i hi
    cases i with
    | zero => simp [ext]
    | succ i =>
      have hij : i≠j := by omega
      by_cases hj : j<i
      · have hi0 : 0<i := by omega
        have heq : i+1-1=(i-1)+1 := by omega
        simpa [show j+1<i+1 from Nat.succ_lt_succ hj,heq,ext,hj] using he i hij
      · have hj' : ¬j+1<i+1 := by omega
        simpa [hj,hj',ext] using he i hij
 | @app Γ f a F A T hf ha hr ihf iha =>
  intro j s Δ hs he
  exact .app (ihf j s Δ hs he) (iha j s Δ hs he) hr

theorem beta_typed {t u : Term} (h : Beta t u) :
 ∀ Γ T, Typed dom cod Γ t T → Typed dom cod Γ u T := by
 induction h with
 | beta b a =>
  intro Γ T ht
  cases ht with
  | @app _ _ _ F A _ hf ha hr =>
   cases hf with
   | @lam _ _ _ l hl ht hb =>
    have hd := hr l ht
    simp only [show ¬l<12 by omega,if_neg] at hd
    apply mono (T := T) (S := cod l) _ hd.2
    apply subst_typed hb 0 a Γ (mono ha hd.1)
    intro i hi
    cases i with
    | zero => exact False.elim (hi rfl)
    | succ i => simp [ext]
 | lam hb ih =>
  intro Γ T ht
  cases ht with
  | lam hl ht hb => exact .lam hl ht (ih _ _ hb)
 | appL a hb ih =>
  intro Γ T ht
  cases ht with
  | app hf ha hr => exact .app (ih _ _ hf) ha hr
 | appR f hb ih =>
  intro Γ T ht
  cases ht with
  | app hf ha hr => exact .app hf (ih _ _ ha) hr

theorem betas_typed {t u : Term} (h : Betas t u) {Γ T}
 (ht : Typed dom cod Γ t T) : Typed dom cod Γ u T := by
 induction h with
 | refl => exact ht
 | head hb hs ih => exact ih (beta_typed hb _ _ ht)

def rigidEnv : Env := fun i n => n=i*3

theorem zero_has_r {T : Ty} (h : Typed dom cod rigidEnv zeroOut T) : T 10 := by
 cases h with
 | app hf ha hr =>
  cases hf with
  | var hv =>
   have hh := hr 9 (hv 9 rfl)
   simpa [tick] using hh

abbrev FTy := List Nat
abbrev FEnv := Nat → FTy
def sem (xs : FTy) : Ty := fun i => i∈xs
def subb (xs ys : FTy) : Bool := xs.all (fun i => ys.contains i)
theorem subb_sound {xs ys : FTy} (h : subb xs ys=true) : Sub (sem xs) (sem ys) := by
 intro i hi
 exact List.mem_of_elem_eq_true ((List.all_eq_true.mp h) i hi)

inductive Ann where
 | var (i : Nat) (ty : FTy)
 | lam (label : Nat) (body : Ann) (ty : FTy)
 | app (fn arg : Ann) (ty : FTy)
 deriving Repr

def erase : Ann → Term
 | .var i _ => .var i
 | .lam _ b _ => .lam (erase b)
 | .app f a _ => .app (erase f) (erase a)
def typ : Ann → FTy
 | .var _ t | .lam _ _ t | .app _ _ t => t

def fext (T : FTy) (Γ : FEnv) : FEnv
 | 0 => T
 | i+1 => Γ i

def check (D C : Nat → FTy) (Γ : FEnv) : Ann → Bool
 | .var i T => subb (Γ i) T
 | .lam l b T => decide (12≤l) && T.contains l &&
       check D C (fext (D l) Γ) b && subb (typ b) (C l)
 | .app f a T => check D C Γ f && check D C Γ a &&
       (typ f).all (fun l => if l<12 then T.contains (tick l)
          else subb (typ a) (D l) && subb (C l) T)

theorem check_sound (D C : Nat → FTy) {a : Ann} :
 ∀ Γ, check D C Γ a=true →
 Typed (fun l => sem (D l)) (fun l => sem (C l))
    (fun i => sem (Γ i)) (erase a) (sem (typ a)) := by
 induction a with
 | var i T =>
  intro Γ h; exact .var (subb_sound h)
 | lam l b T ih =>
  intro Γ h
  simp only [check,Bool.and_eq_true] at h
  obtain ⟨⟨⟨hl,ht⟩,hb⟩,hs⟩ := h
  have hb' := mono (ih (fext (D l) Γ) hb) (subb_sound hs)
  have he : (fun i => sem (fext (D l) Γ i)) = ext (sem (D l)) (fun i => sem (Γ i)) := by
    funext i; cases i <;> rfl
  rw [he] at hb'
  exact .lam (of_decide_eq_true hl) (List.mem_of_elem_eq_true ht) hb'
 | app f a T ihf iha =>
  intro Γ h
  simp only [check,Bool.and_eq_true] at h
  obtain ⟨⟨hf,ha⟩,hs⟩ := h
  apply Typed.app (ihf Γ hf) (iha Γ ha)
  intro l hl
  have hh := List.all_eq_true.mp hs l hl
  by_cases h4 : l<12
  · simp only [h4,if_pos] at hh ⊢
    exact List.mem_of_elem_eq_true hh
  · simp [h4] at hh ⊢
    exact ⟨subb_sound hh.1,subb_sound hh.2⟩

def tab (xs : List FTy) (i : Nat) : FTy := xs[i]?.getD []
def frigid : FEnv := fun i => [i*3]

theorem reject {r : Term} (ps : List (List Nat)) (D C : List FTy) (a : Ann)
 (he : betaSteps ps (.app r Z)=some (erase a))
 (hc : check (tab D) (tab C) frigid a=true)
 (hn : ¬ 10∈typ a) : ¬ Reader r := by
 intro hr
 have hb := betas_preserve_nf (betaSteps_sound ps he) hr.zero_red zeroOut_normal
 have ht := check_sound (tab D) (tab C) frigid hc
 have heq : (fun i => sem (frigid i))=rigidEnv := by
  funext i; funext n; simp [sem,frigid,rigidEnv]
 rw [heq] at ht
 exact hn (zero_has_r (betas_typed hb ht))

#print axioms betas_typed
#print axioms check_sound
#print axioms reject
end Blc.Rootcert2Arity
