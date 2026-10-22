import EtaPrice
import Blc.SelfintValuesTransfer
namespace Blc.RootcertEta
open Term SelfintClass SelfintLowerBound SelfintSourceCost SelfintLocalCost RootletEta
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

inductive Eta : Term → Term → Prop where
 | root (p : Term) : Eta (etaExpand p) p
 | lam {b b'} : Eta b b' → Eta (.lam b) (.lam b')
 | appL {f f'} (a) : Eta f f' → Eta (.app f a) (.app f' a)
 | appR (f) {a a'} : Eta a a' → Eta (.app f a) (.app f a')
inductive Etas : Term → Term → Prop where
 | refl (t) : Etas t t
 | head {t u v} : Eta t u → Etas u v → Etas t v

theorem etas_one {t u} (h : Eta t u) : Etas t u := .head h (.refl _)
theorem etas_trans {t u v} (h : Etas t u) (g : Etas u v) : Etas t v := by
 induction h with
 | refl => exact g
 | head h _ ih => exact .head h (ih g)
theorem etas_lam {t u} (h : Etas t u) : Etas (.lam t) (.lam u) := by
 induction h with
 | refl => exact .refl _
 | head h _ ih => exact .head (.lam h) ih
theorem etas_appL {t u} (h : Etas t u) (a) : Etas (.app t a) (.app u a) := by
 induction h with
 | refl => exact .refl _
 | head h _ ih => exact .head (.appL a h) ih
theorem etas_appR {t u} (h : Etas t u) (f) : Etas (.app f t) (.app f u) := by
 induction h with
 | refl => exact .refl _
 | head h _ ih => exact .head (.appR f h) ih

theorem shift_etaExpand (p : Term) (c : Nat) :
 shift 1 c (etaExpand p)=etaExpand (shift 1 c p) := by
 simp only [etaExpand,shift]
 rw [shift_shift p 0 c (Nat.zero_le c)]
 simp

theorem eta_shift {t u : Term} (h : Eta t u) (c : Nat) :
 Eta (shift 1 c t) (shift 1 c u) := by
 induction h generalizing c with
 | root p => rw [shift_etaExpand]; exact .root _
 | lam h ih => exact .lam (ih (c+1))
 | appL a h ih => exact .appL _ (ih c)
 | appR f h ih => exact .appR _ (ih c)

theorem subst_etaExpand (p s : Term) (j : Nat) :
 substDec j s (etaExpand p)=etaExpand (substDec j s p) := by
 simp only [etaExpand,substDec]
 rw [←shift_substDec_lt p s j 0 (Nat.zero_le j)]
 simp

theorem eta_subst {t u : Term} (h : Eta t u) (j : Nat) (s : Term) :
 Eta (substDec j s t) (substDec j s u) := by
 induction h generalizing j s with
 | root p => rw [subst_etaExpand]; exact .root _
 | lam h ih => exact .lam (ih (j+1) (shift 1 0 s))
 | appL a h ih => exact .appL _ (ih j s)
 | appR f h ih => exact .appR _ (ih j s)

theorem eta_subst_arg {s s' : Term} (h : Eta s s') (t : Term) (j : Nat) :
 Etas (substDec j s t) (substDec j s' t) := by
 induction t generalizing s s' j with
 | var n =>
  simp only [substDec]
  split
  · exact etas_one h
  · exact .refl _
 | lam b ih => exact etas_lam (ih (eta_shift h 0) (j+1))
 | app f a ihf iha =>
  exact etas_trans (etas_appL (ihf h j) _) (etas_appR (iha h j) _)

theorem beta_shift_inv (t : Term) (c : Nat) {u : Term}
 (h : Beta (shift 1 c t) u) : ∃ v, Beta t v ∧ u=shift 1 c v := by
 induction t generalizing c u with
 | var n => simp only [shift] at h; split at h <;> cases h
 | lam b ih =>
  cases h with
  | lam hb =>
   obtain ⟨v,hv,he⟩ := ih (c+1) hb
   exact ⟨.lam v,.lam hv,congrArg Term.lam he⟩
 | app f a ihf iha =>
  change Beta (.app (shift 1 c f) (shift 1 c a)) u at h
  generalize he : shift 1 c f = g at h
  cases h with
  | appL _ hb =>
   obtain ⟨v,hv,hv'⟩ := ihf c (he ▸ hb)
   exact ⟨.app v a,.appL a hv,by simp [shift,hv']⟩
  | appR _ hb =>
   obtain ⟨v,hv,hv'⟩ := iha c hb
   exact ⟨.app f v,.appR f hv,by simp [shift,he,hv']⟩
  | beta b _ =>
   cases f with
   | var n => simp only [shift] at he; split at he <;> contradiction
   | app f a => contradiction
   | lam b' =>
    have hbb : shift 1 (c+1) b'=b := Term.lam.inj he
    subst b
    exact ⟨contract b' a,.beta b' a, by simp [shift,contract,shift_substDec b' a 0 c (Nat.zero_le c)]⟩

/-- A zero-or-one beta step. Strong commutation preserves this bound. -/
def BOpt (t u : Term) : Prop := t=u ∨ Beta t u

theorem bopt_betas {t u} (h : BOpt t u) : Betas t u := by
 rcases h with rfl|h
 · exact .refl _
 · exact .head h (.refl _)
theorem bopt_lam {t u} (h : BOpt t u) : BOpt (.lam t) (.lam u) := by
 rcases h with rfl|h
 · exact .inl rfl
 · exact .inr (.lam h)
theorem bopt_appL {t u} (h : BOpt t u) (a) : BOpt (.app t a) (.app u a) := by
 rcases h with rfl|h
 · exact .inl rfl
 · exact .inr (.appL a h)
theorem bopt_appR {t u} (h : BOpt t u) (f) : BOpt (.app f t) (.app f u) := by
 rcases h with rfl|h
 · exact .inl rfl
 · exact .inr (.appR f h)

/-- Oriented eta/beta square; beta does not multiply on the eta side. -/
theorem eta_beta {t u v : Term} (he : Eta t u) (hb : Beta t v) :
 ∃ w, BOpt u w ∧ Etas v w := by
 induction he generalizing v with
 | root p =>
  change Beta (.lam (.app (shift 1 0 p) (.var 0))) v at hb
  generalize heq : shift 1 0 p = f at hb
  cases hb with
  | lam hb =>
   cases hb with
   | appL _ hp =>
    obtain ⟨q,hq,hq'⟩ := beta_shift_inv p 0 (heq ▸ hp)
    subst hq'
    exact ⟨q,.inr hq,etas_one (.root q)⟩
   | appR _ hx => cases hx
   | beta b a =>
    cases p with
    | var n => simp [shift] at heq
    | app f a => contradiction
    | lam b' =>
     have hbb : shift 1 1 b'=b := Term.lam.inj heq
     subst b
     refine ⟨.lam b',.inl rfl,?_⟩
     simpa [contract,substDec_var_shift] using Etas.refl (.lam b')

 | lam he ih =>
  cases hb with
  | lam hb =>
   obtain ⟨w,hw,hew⟩ := ih hb
   exact ⟨.lam w,bopt_lam hw,etas_lam hew⟩
 | @appL f f' a he ih =>
  cases hb with
  | appL _ hb =>
   obtain ⟨w,hw,hew⟩ := ih hb
   exact ⟨.app w a,bopt_appL hw a,etas_appL hew a⟩
  | appR _ hb =>
   exact ⟨_,.inr (.appR f' hb),etas_one (.appL _ he)⟩
  | beta b a =>
   cases he with
   | root =>
    refine ⟨.app f' a,.inl rfl,?_⟩
    simpa [etaExpand,contract,substDec,substDec_shift] using Etas.refl (.app f' a)
   | lam he =>
    exact ⟨_,.inr (.beta _ _),etas_one (eta_subst he 0 a)⟩
 | @appR f a a' he ih =>
  cases hb with
  | appL _ hb => exact ⟨_,.inr (.appL a' hb),etas_one (.appR _ he)⟩
  | appR _ hb =>
   obtain ⟨w,hw,hew⟩ := ih hb
   exact ⟨.app f w,bopt_appR hw f,etas_appR hew f⟩
  | beta b a => exact ⟨_,.inr (.beta _ _),eta_subst_arg he b 0⟩

/-- Finite eta residuals commute across one beta contraction. -/
theorem etas_beta {t u v : Term} (he : Etas t u) (hb : Beta t v) :
 ∃ w, BOpt u w ∧ Etas v w := by
 induction he generalizing v with
 | refl t => exact ⟨v,.inr hb,.refl _⟩
 | head he hes ih =>
  obtain ⟨w,hw,hew⟩ := eta_beta he hb
  rcases hw with rfl|hw
  · exact ⟨_,.inl rfl,etas_trans hew hes⟩
  · obtain ⟨q,hq,heq⟩ := ih hw
    exact ⟨q,hq,etas_trans hew heq⟩

/-- The required oriented postponement theorem; no normalization of t itself
    is assumed beyond the supplied beta reduction to v. -/
theorem postpone {t u v : Term} (he : Etas t u) (hb : Betas t v) :
 ∃ w, Betas u w ∧ Etas v w := by
 induction hb generalizing u with
 | refl t => exact ⟨u,.refl _,he⟩
 | head hb hbs ih =>
  obtain ⟨q,hq,heq⟩ := etas_beta he hb
  obtain ⟨w,hw,hew⟩ := ih heq
  exact ⟨w,betas_trans (bopt_betas hq) hw,hew⟩

/-- Syntactic absence of eta redexes, expressed through occurrence counts. -/
def NotEtaBody : Term → Prop
 | .app f (.var 0) => occ 0 f ≠ 0
 | _ => True

def EFree : Term → Prop
 | .var _ => True
 | .app f a => EFree f ∧ EFree a
 | .lam b => EFree b ∧ NotEtaBody b

theorem body_shift (b : Term) (c : Nat) :
 NotEtaBody (shift 1 (c+1) b) ↔ NotEtaBody b := by
 cases b with
 | var n => simp only [shift]; split <;> trivial
 | lam b => trivial
 | app f a =>
  cases a with
  | lam a => trivial
  | app f a => trivial
  | var n =>
   cases n with
   | zero => simpa [shift,NotEtaBody] using
       (show occ 0 (shift 1 (c+1) f) ≠ 0 ↔ occ 0 f ≠ 0 by
         rw [occ_shift_lt f 0 (c+1) (by omega)])
   | succ n =>
    simp only [shift]
    split <;> simp [NotEtaBody,Nat.add_assoc]

theorem efree_shift {t : Term} (h : EFree t) (c : Nat) : EFree (shift 1 c t) := by
 induction t generalizing c with
 | var n => simp only [shift]; split <;> trivial
 | app f a ihf iha => exact ⟨ihf h.1 c,iha h.2 c⟩
 | lam b ih => exact ⟨ih h.1 (c+1),(body_shift b c).mpr h.2⟩

theorem efree_no_eta {t u : Term} (he : Eta t u) (hn : EFree t) : False := by
 induction he with
 | root p =>
  have hh : occ 0 (shift 1 0 p) ≠ 0 := hn.2
  exact hh (occ_shift_eq p 0)
 | lam he ih => exact ih hn.1
 | appL a he ih => exact ih hn.1
 | appR f he ih => exact ih hn.2

theorem efree_etas_eq {t u : Term} (h : Etas t u) (hn : EFree t) : u=t := by
 cases h with
 | refl => rfl
 | head he hs => exact (efree_no_eta he hn).elim

theorem eta_preserves_target {t u n : Term} (he : Eta t u)
 (hb : Betas t n) (hn : EFree n) : Betas u n := by
 obtain ⟨w,hw,hew⟩ := postpone (etas_one he) hb
 have hh := efree_etas_eq hew hn
 exact hh ▸ hw

theorem shift_ne_zero (t : Term) : shift 1 0 t ≠ .var 0 := by
 cases t <;> simp [shift]

theorem app_not_eta (f a : Term) (h : a ≠ .var 0) : NotEtaBody (.app f a) := by
 cases a with
 | var n => cases n with
   | zero => exact (h rfl).elim
   | succ n => trivial
 | lam => trivial
 | app => trivial

theorem efree_pair {b r : Term} (hb : EFree b) (hr : EFree r) : EFree (pairT b r) :=
 ⟨⟨⟨trivial,efree_shift hb 0⟩,efree_shift hr 0⟩,
   app_not_eta _ _ (shift_ne_zero r)⟩

theorem efree_bit (b : Bool) : EFree (churchBit b) := by
 cases b <;> simp [churchBit,churchTrue,churchFalse,EFree,NotEtaBody]

theorem efree_stream (bs : List Bool) : EFree (streamOf bs (.var 2)) := by
 induction bs with
 | nil => trivial
 | cons b bs ih => rw [streamOf_cons]; exact efree_pair (efree_bit b) ih

theorem normal_shift {t : Term} (hn : NormalForm t) (c : Nat) :
 NormalForm (shift 1 c t) := by
 intro u hu
 obtain ⟨v,hv,_⟩ := beta_shift_inv t c hu
 exact hn v hv

theorem normal_pair {b r : Term} (hb : NormalForm b) (hr : NormalForm r) :
 NormalForm (pairT b r) := by
 apply SelfintClassNext.nft_normal
 exact ⟨fun h => h,⟨fun h => h,trivial,
   SelfintClassNext.normal_nft (normal_shift hb 0)⟩,
   SelfintClassNext.normal_nft (normal_shift hr 0)⟩

theorem normal_stream (bs : List Bool) : NormalForm (streamOf bs (.var 2)) := by
 induction bs with
 | nil => intro u hu; cases hu
 | cons b bs ih =>
  rw [streamOf_cons]
  apply normal_pair _ ih
  cases b <;> exact SelfintClassNext.nft_normal (by decide)

theorem unary_normal (n : Nat) :
 NormalForm (.app (.app (.var 0) (streamOf (vbits n) (.var 2))) (.var 2)) := by
 apply SelfintClassNext.nft_normal
 exact ⟨fun h => h,⟨fun h => h,trivial,
   SelfintClassNext.normal_nft (normal_stream _)⟩,trivial⟩

theorem scope_unshift (t : Term) (c k : Nat) (hc : c ≤ k)
 (h : FreeUnder (k+1) (shift 1 c t)) : FreeUnder k t := by
 induction t generalizing c k with
 | var n => simp only [shift] at h; split at h <;> simp only [FreeUnder] at * <;> omega
 | lam b ih => exact ih (c+1) (k+1) (by omega) h
 | app f a ihf iha => exact ⟨ihf c k hc h.1,iha c k hc h.2⟩

theorem eta_scope {t u : Term} (he : Eta t u) (k : Nat) (ht : FreeUnder k t) :
 FreeUnder k u := by
 induction he generalizing k with
 | root p => exact scope_unshift p 0 k (by omega) ht.1
 | lam he ih => exact ih (k+1) ht
 | appL a he ih => exact ⟨ih k ht.1,ht.2⟩
 | appR f he ih => exact ⟨ht.1,ih k ht.2⟩

theorem eta_occ {t u : Term} (he : Eta t u) (j : Nat) : occ j t=occ j u := by
 induction he generalizing j with
 | root p =>
  simp only [etaExpand,occ]
  rw [occ_shift_ge p j 0 (by omega)]
  simp
 | lam he ih => exact ih (j+1)
 | appL a he ih => simp only [occ,ih]
 | appR f he ih => simp only [occ,ih]

/-- Source eta contraction preserves every exact reader law, not merely
    the two probes, because all their targets are eta-free beta normal forms. -/
theorem readerLaws_eta {r r' : Term} (hr : ReaderLaws r) (he : Eta r r') :
 ReaderLaws r' := by
 refine ⟨eta_scope he 2 hr.scope,?_,?_⟩
 · exact ⟨zeroOut,eta_preserves_target (.appL Z he) hr.probes.zero_red
     (by simp [zeroOut,EFree]),.refl _⟩
 · intro n
   have hb := join_normal (hr.unary n) (unary_normal n)
   have hn : EFree (.app (.app (.var 0) (streamOf (vbits n) (.var 2))) (.var 2)) :=
     ⟨⟨trivial,efree_stream _⟩,trivial⟩
   exact ⟨_,eta_preserves_target (.appL _ he) hb hn,.refl _⟩

theorem eta_fill (C : SelfintWireCost.Context) {t u : Term} (he : Eta t u) :
 Eta (C.fill t) (C.fill u) := by
 induction C with
 | hole => exact he
 | lam C ih => exact .lam ih
 | appL C a ih => exact .appL a ih
 | appR f C ih => exact .appR f ih

theorem source_eta_laws (C : SelfintWireCost.Context) (p : Term)
 (hr : ReaderLaws (C.fill (etaExpand p))) : ReaderLaws (C.fill p) :=
 readerLaws_eta hr (eta_fill C (.root p))

theorem minimum_no_eta (C : SelfintWireCost.Context) (p : Term) :
 ¬ MinimumReader (C.fill (etaExpand p)) := by
 intro hr
 have he := eta_fill C (Eta.root p)
 have hocc : occ 1 (C.fill p)=1 := (eta_occ he 1).symm.trans hr.oneHole
 have hm := hr.minimal (C.fill p) (readerLaws_eta hr.laws he) hocc
 exact (Nat.not_le_of_gt (eta_context_strict C p)) hm

#print axioms postpone
#print axioms readerLaws_eta
#print axioms minimum_no_eta
end Blc.RootcertEta
