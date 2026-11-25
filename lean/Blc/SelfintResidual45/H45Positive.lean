import Blc.SelfintRecursiveTypes
import Blc.SelfintResidual45.H45Base

set_option Elab.async false
namespace Blc.H45.Positive
open Term SelfintRecursiveTypes
def Fits (s t : List Nat) := ∀ j ∈ s, j ∈ t
theorem fits_of {s t : List Nat} (h : s.all (fun j => decide (j ∈ t)) = true) : Fits s t :=
  fun j hj => of_decide_eq_true ((List.all_eq_true.mp h) j hj)
def All (m : Table) (ρ : Env) (t : Term) (s : List Nat) := ∀ j ∈ s, has m ρ t j = true
theorem none {m ρ t} : All m ρ t [] := by intro i hi; cases hi
theorem consAll {m ρ t i s} (a : has m ρ t i = true) (b : All m ρ t s) : All m ρ t (i::s) := by
  intro j hj
  rcases List.mem_cons.mp hj with e | h
  · simpa [e] using a
  · exact b _ h
theorem variableAt {m ρ v i} (h : i ∈ ρ v) : has m ρ (.var v) i=true := by simp [has,h]
theorem lamAt {m ρ b j d c} (hd : D m j=d) (hc : C m j=c)
    (h : All m (SelfintRecursiveTypes.cons d ρ) b c) : has m ρ (.lam b) (j+1)=true := by
  simpa only [All,has,hd,hc,List.all_eq_true] using h
theorem appAt {m ρ f a i j d} (hj : j < m.dom.length) (hd : D m j=d) (hc : i ∈ C m j)
    (hf : has m ρ f (j+1)=true) (ha : All m ρ a d) : has m ρ (.app f a) i=true := by
  simp only [has,Bool.or_eq_true,List.any_eq_true,Bool.and_eq_true,decide_eq_true_eq,List.all_eq_true]
  exact Or.inr ⟨j,List.mem_range.mpr hj,⟨Or.inl hc,hf⟩,hd ▸ ha⟩
theorem appBottom {m ρ f a i} (hf : has m ρ f 0=true) : has m ρ (.app f a) i=true := by simp [has,hf]
theorem smaller {m ρ t xs ys} (h : All m ρ t ys) (sub : Fits xs ys) : All m ρ t xs :=
  fun i hi => h i (sub i hi)
theorem varAll {m ρ v xs} (h : Fits xs (ρ v)) : All m ρ (.var v) xs :=
  fun _ hi => variableAt (h _ hi)
theorem botAll {m ρ f a xs} (h : has m ρ f 0=true) : All m ρ (.app f a) xs :=
  fun _ _ => appBottom h
theorem appAll {m ρ f a j d c xs} (hj : j<m.dom.length) (hd : D m j=d) (hc : C m j=c)
    (hsub : Fits xs c) (hf : has m ρ f (j+1)=true) (ha : All m ρ a d) :
    All m ρ (.app f a) xs := fun i hi => appAt hj hd (hc ▸ hsub i hi) hf ha
end Blc.H45.Positive
