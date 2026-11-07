/-
Structural helper classifications used by `SelfintStreamSpecializer`. Every
c-containing, j-free helper of at most 13 bits beneath the stream binder lies
on a fixed list (`capture_thirteen`), and every root helper of at most 9 bits
on a ten-term list (`root_nine`). Both completeness proofs follow the wire
recursion; neither enumerates terms. `docs/classical/self-interpreter/class-bound.md`.
All variables are 0-based; at the root of a reader c=0 and j=1, with probe
suffix N=2 and zero tag r=3; beneath the stream binder s=0, c=1, j=2.
-/
import Blc.SelfintClosedSpecializer
namespace Blc.SelfintStreamHelpers
open Term SelfintClass SelfintLowerBound SelfintWireCost SelfintFloor
open SelfintSourceCost SelfintHelperPair SelfintClosedSpecializer

set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def inner5 : List Term :=
  [.var 0,.var 1,.var 2,.lam (.var 0),.lam (.var 1)]

theorem inner_five (t : Term) (hw : wire t ≤ 5) (hj : occ 3 t=0) :
    t ∈ inner5 := by
  cases t with
  | var n =>
    have hn : n=0 ∨ n=1 ∨ n=2 := by
      simp only [wire_var] at hw
      simp only [occ] at hj
      split at hj <;> omega
    rcases hn with rfl | rfl | rfl <;> simp [inner5]
  | lam b =>
    have hh := wire_three b (by simp only [wire_lam] at hw; omega)
    rcases hh with rfl | rfl <;> simp [inner5]
  | app f a =>
    have hf := wire_min f; have ha := wire_min a
    simp only [wire_app] at hw; omega

def tiny8 : List Term :=
  [.var 0,.var 1,
   .lam (.var 0),.lam (.var 1),.lam (.var 2),
   .lam (.lam (.var 0)),.lam (.lam (.var 1)),.lam (.lam (.var 2)),
   .lam (.lam (.lam (.var 0))),.lam (.app (.var 0) (.var 0)),
   .app (.var 0) (.var 0),.app (.var 0) (.var 1),
   .app (.var 0) (.lam (.var 0)),
   .app (.var 1) (.var 0),.app (.var 1) (.var 1),
   .app (.lam (.var 0)) (.var 0)]

theorem tiny_eight (t : Term) (hw : wire t ≤ 8) (hj : occ 2 t=0)
    (hs : FreeUnder 3 t) : t ∈ tiny8 := by
  cases t with
  | var n =>
    have hn : n=0 ∨ n=1 := by
      change n<3 at hs
      simp only [occ] at hj
      split at hj <;> omega
    rcases hn with rfl | rfl <;> simp [tiny8]
  | lam b =>
    cases b with
    | var n =>
      have hn : n=0 ∨ n=1 ∨ n=2 := by
        change n<4 at hs
        simp only [occ,Nat.reduceAdd] at hj
        split at hj <;> omega
      rcases hn with rfl | rfl | rfl <;> simp [tiny8]
    | lam b =>
      cases b with
      | var n =>
        have hn : n=0 ∨ n=1 ∨ n=2 := by
          simp only [wire_lam,wire_var] at hw; omega
        rcases hn with rfl | rfl | rfl <;> simp [tiny8]
      | lam b =>
        have he := wire_two b (by simp only [wire_lam] at hw; omega)
        rw [he]; simp [tiny8]
      | app f a =>
        have hf := wire_min f; have ha := wire_min a
        simp only [wire_lam,wire_app] at hw; omega
    | app f a =>
      have hf := wire_min f; have ha := wire_min a
      have hf' := wire_two f (by simp only [wire_lam,wire_app] at hw; omega)
      have ha' := wire_two a (by simp only [wire_lam,wire_app] at hw; omega)
      rw [hf',ha']; simp [tiny8]
  | app f a =>
    have hf := wire_min f; have ha := wire_min a
    simp only [wire_app] at hw
    simp only [occ] at hj
    have hh := tiny_nohole f (by omega) (by omega)
    rcases hh with rfl | rfl | rfl
    · have hh := tiny_nohole a (by simp only [wire_var] at hw; omega) (by omega)
      rcases hh with rfl | rfl | rfl <;> simp [tiny8]
    · have hh := wire_three a (by simp only [wire_var] at hw; omega)
      rcases hh with rfl | rfl <;> simp [tiny8]
    · have he := wire_two a (by simp only [wire_lam,wire_var] at hw; omega)
      rw [he]; simp [tiny8]

def lambdaC : List Term :=
  [.lam (.var 2),.lam (.lam (.var 3)),.lam (.lam (.lam (.var 4))),
   .lam (.lam (.app (.var 3) (.var 0))),
   .lam (.lam (.app (.var 0) (.var 3))),
   .lam (.app (.lam (.var 3)) (.var 0)),
   .lam (.app (.var 0) (.lam (.var 3)))] ++
  inner5.map (fun t => .lam (.app (.var 2) t)) ++
  inner5.map (fun t => .lam (.app t (.var 2)))

theorem lambda_capture_thirteen (b : Term) (hw : wire (.lam b) ≤ 13)
    (hc : 0<occ 1 (.lam b)) (hj : occ 2 (.lam b)=0) : .lam b ∈ lambdaC := by
  cases b with
  | var n =>
    have hn : n=2 := by simp only [occ,Nat.reduceAdd] at hc; split at hc <;> omega
    rw [hn]; simp [lambdaC]
  | lam b =>
    cases b with
    | var n =>
      have hn : n=3 := by simp only [occ,Nat.reduceAdd] at hc; split at hc <;> omega
      rw [hn]; simp [lambdaC]
    | lam b =>
      have he := cheap_capture b 4 hc (by simp only [wire_lam] at hw; omega)
      rw [he]; simp [lambdaC]
    | app f a =>
      have hf := wire_min f; have ha := wire_min a
      simp only [occ,Nat.reduceAdd] at hc
      simp only [wire_lam,wire_app] at hw
      by_cases hfc : 0<occ 3 f
      · have he := cheap_capture f 3 hfc (by omega)
        subst f
        have he := wire_two a (by simp only [wire_var] at hw; omega)
        rw [he]; simp [lambdaC]
      · have hac : 0<occ 3 a := by omega
        have he := cheap_capture a 3 hac (by omega)
        subst a
        have he := wire_two f (by simp only [wire_var] at hw; omega)
        rw [he]; simp [lambdaC]
  | app f a =>
    have hf := wire_min f; have ha := wire_min a
    simp only [wire_lam,wire_app] at hw
    simp only [occ,Nat.reduceAdd] at hc hj
    by_cases hfc : 0<occ 2 f
    · have he := cheap_capture_lam f 2 hfc (by omega)
      rcases he with rfl | rfl
      · have hm := inner_five a (by simp only [wire_var] at hw; omega) (by omega)
        simp only [lambdaC,List.mem_append,List.mem_map]
        exact .inl (.inr ⟨a,hm,rfl⟩)
      · have he := wire_two a (by simp only [wire_lam,wire_var] at hw; omega)
        rw [he]; simp [lambdaC]
    · have hac : 0<occ 2 a := by omega
      have he := cheap_capture_lam a 2 hac (by omega)
      rcases he with rfl | rfl
      · have hm := inner_five f (by simp only [wire_var] at hw; omega) (by omega)
        simp only [lambdaC,List.mem_append,List.mem_map]
        exact .inr ⟨f,hm,rfl⟩
      · have he := wire_two f (by simp only [wire_lam,wire_var] at hw; omega)
        rw [he]; simp [lambdaC]

/-- One child captures c and has at most nine bits; the other has at most
    eight. The weight filter restores the combined source bound. -/
def appC : List Term :=
  (smallC.flatMap (fun c => tiny8.map (fun t => .app c t) ++
    tiny8.map (fun t => .app t c))).filter (fun t => wire t ≤ 13)

def capture13 : List Term := [.var 1] ++ lambdaC ++ appC

theorem capture_thirteen (t : Term) (hw : wire t ≤ 13) (hc : 0<occ 1 t)
    (hj : occ 2 t=0) (hs : FreeUnder 3 t) : t ∈ capture13 := by
  cases t with
  | var n =>
    have hn : n=1 := by simp only [occ] at hc; split at hc <;> omega
    rw [hn]; simp [capture13]
  | lam b =>
    exact List.mem_append_left appC
      (List.mem_append_right [.var 1] (lambda_capture_thirteen b hw hc hj))
  | app f a =>
    have hf := wire_min f; have ha := wire_min a
    simp only [wire_app] at hw
    simp only [occ] at hc hj
    apply List.mem_append_right
    apply List.mem_filter.mpr
    refine ⟨?_,by simpa only [decide_eq_true_eq,wire_app] using hw⟩
    by_cases hfc : 0<occ 1 f
    · have hfcw := capture_price f 1 hfc
      have hfm := nine_bit_capture f (by omega) hfc (by omega)
      have ham := tiny_eight a (by omega) (by omega) hs.2
      exact List.mem_flatMap.mpr ⟨f,hfm,List.mem_append_left _
        (List.mem_map.mpr ⟨a,ham,rfl⟩)⟩
    · have hac : 0<occ 1 a := by omega
      have hacw := capture_price a 1 hac
      have ham := nine_bit_capture a (by omega) hac (by omega)
      have hfm := tiny_eight f (by omega) (by omega) hs.1
      exact List.mem_flatMap.mpr ⟨a,ham,List.mem_append_right _
        (List.mem_map.mpr ⟨f,hfm,rfl⟩)⟩

def safeRoot : List Term :=
  [.var 0,.lam (.var 1),.lam (.lam (.var 2)),
   .app (.var 0) (.var 0),.app (.var 0) (.lam (.var 0)),
   .app (.lam (.var 0)) (.var 0),
   .app (.var 0) (.lam (.var 1)),.app (.lam (.var 1)) (.var 0)]

def root9 : List Term := safeRoot ++
  [.lam (.app (.var 1) (.var 0)),.lam (.app (.var 0) (.var 1))]

theorem root_tiny_five (t : Term) (hw : wire t ≤ 5) (hj : occ 1 t=0)
    (hs : FreeUnder 2 t) : t=.var 0 ∨ t=.lam (.var 0) ∨ t=.lam (.var 1) := by
  cases t with
  | var n =>
    have hn : n=0 := by
      change n<2 at hs
      simp only [occ] at hj
      split at hj <;> omega
    rw [hn]; simp
  | lam b =>
    have hh := wire_three b (by simp only [wire_lam] at hw; omega)
    rcases hh with rfl | rfl <;> simp
  | app f a =>
    have hf := wire_min f; have ha := wire_min a
    simp only [wire_app] at hw; omega

theorem root_nine (t : Term) (hw : wire t ≤ 9) (hc : 0<occ 0 t)
    (hj : occ 1 t=0) (hs : FreeUnder 2 t) : t ∈ root9 := by
  cases t with
  | var n =>
    have hn : n=0 := by simp only [occ] at hc; split at hc <;> omega
    rw [hn]; simp [root9,safeRoot]
  | lam b =>
    have hh := capture_seven b (by simp only [wire_lam] at hw; omega) hc
    simp only [capture7,List.mem_cons,List.not_mem_nil,or_false] at hh
    rcases hh with rfl | rfl | rfl | rfl <;> simp [root9,safeRoot]
  | app f a =>
    have hf := wire_min f; have ha := wire_min a
    have hw' := hw
    simp only [wire_app] at hw'
    simp only [occ] at hj
    have hf' := root_tiny_five f (by omega) (by omega) hs.1
    have ha' := root_tiny_five a (by omega) (by omega) hs.2
    rcases hf' with rfl | rfl | rfl <;>
      rcases ha' with rfl | rfl | rfl <;>
      simp_all [root9,safeRoot,wire_app,wire_lam,wire_var]

#print axioms root_nine
#print axioms capture_thirteen
end Blc.SelfintStreamHelpers
