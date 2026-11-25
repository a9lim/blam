import Blc.SelfintCoverGrids
import Blc.SelfintFourLiveOperator
import Blc.SelfintExteriorLeaves

namespace Blc.SelfintSingleObject.Grammar43
open Term SelfintFloor SelfintLowerBound SelfintCapture SelfintWireCost SelfintNonlinearChain
open SourceRefutations OperandGrammar FiveLive Saturated

/-- Filter each operand before forming its applications. -/
def fourRow (c : Cell) (fw aw : List Nat) : List Term :=
  let fs := (layouts (c.lf+c.vf) 1 c.lf fw).filter fun b =>
    live b == 0 && decide (NFt b) && spineHead b == .var 0 && nonlinear (.lam b) == 1
  let as := (marked (c.la+c.va) 1 1 c.la aw).filter fun a =>
    live (.lam a) == 3 && 1 ≤ nonlinear (.lam a) && FactorFilter.markedHere 0 (.lam a) &&
    Layouts.nonshrinking a
  fs.flatMap fun b => as.map fun a => .app (.lam b) (.lam a)

theorem four_complete {e} (hm : MinimalInterpreter e) (hl : live e = 4) :
    ∃ c ∈ CoverGrids.fourGrid (wire e), ∃ fw ∈ words (1+c.lf) c.vf c.xf,
      ∃ aw ∈ words (1+c.la) c.va c.xa, e ∈ fourRow c fw aw := by
  obtain ⟨c,price,vf,va,la,xa,fw,hf,aw,ha,h⟩ := four_live_marked_row hm hl
  refine ⟨c,CoverGrids.four_mem c price vf va la xa,fw,hf,aw,ha,?_⟩
  obtain ⟨b,a,rfl,hn,hv,hz,hw⟩ := four_live_operator hm hl
  obtain ⟨b',hb,he⟩ := List.mem_flatMap.mp h
  obtain ⟨a',ha',eq⟩ := List.mem_map.mp he
  cases eq
  obtain ⟨hbf,hbp⟩ := List.mem_filter.mp hb
  obtain ⟨haf,hap⟩ := List.mem_filter.mp ha'
  simp only [Bool.and_eq_true,beq_iff_eq,decide_eq_true_eq] at hbp hap
  change _ ∈ List.flatMap _ _
  apply List.mem_flatMap.mpr
  refine ⟨_,List.mem_filter.mpr ⟨hbf,?_⟩,?_⟩
  · simp [hz,hn,hv,hbp.1.2]
  · apply List.mem_map.mpr
    exact ⟨_,List.mem_filter.mpr ⟨haf,by simp [hap.1.1,hap.1.2,hap.2,FactorFilter.markedHere_of_witness _ _ hw]⟩,rfl⟩

def frames (V L X : Nat) (lit : Bool) (x l v : Nat) : List Shell :=
  (shells (V-v) (if lit then 1 else 0) (L-(l+1)-(if lit then 1 else 0)) (V-v) (X-x)).filter
    fun k => (5 < v || 0 < k.mass nonlinear) && k.mass lamCount ≤ k.mass live + (L-5)

def fiveRow (V L X : Nat) (lit : Bool) (x l v : Nat) (w : List Nat) : List Term :=
  let ks := frames V L X lit x l v
  if ks.isEmpty then [] else
    let bs := (SharedShell.atoms L lit x l v w).filter fun b => FactorFilter.markedHere 0 (.lam b)
    bs.flatMap fun b => ks.flatMap fun k =>
      let t := k.fill (.lam b)
      let e := wrap lit t
      if live e == 5 && !chainB e && (!lit || 0 < occ 0 t) then [e] else []

end Blc.SelfintSingleObject.Grammar43
