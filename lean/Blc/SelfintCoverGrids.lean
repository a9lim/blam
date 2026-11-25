import Blc.SelfintRowReplay
import Blc.SelfintSingleObjectFloor34
namespace Blc.SelfintSingleObject.CoverGrids
open Term SelfintFloor SelfintLowerBound SelfintCapture SelfintWireCost SelfintNonlinearChain
open SourceRefutations OperandGrammar

/-- Budget zero is the four-live minimum L=4,V=6,X=3. Distribute the
excess first to lambdas, next to leaves, and finally to the two index sums. -/
def fourGrid (n : Nat) : List Cell :=
  let s := n-33
  (List.range (s/2+1)).flatMap fun lf =>
    let a := s-2*lf
    (List.range (a/2+1)).flatMap fun la =>
      let b := a-2*la
      (List.range (b/4+1)).flatMap fun vf =>
        let c := b-4*vf
        (List.range (c/4+1)).flatMap fun va =>
          let d := c-4*va
          (List.range (d+1)).map fun xf => ⟨lf,vf+2,xf,la+2,va+4,d-xf+3⟩

theorem four_mem (c : Cell) (hc : c.price = n) (f : 2 ≤ c.vf) (a : 4 ≤ c.va)
    (l : 2 ≤ c.la) (x : 3 ≤ c.xa) : c ∈ fourGrid n := by
  rcases c with ⟨lf,vf,xf,la,va,xa⟩
  change 2 ≤ vf at f; change 4 ≤ va at a; change 2 ≤ la at l; change 3 ≤ xa at x
  simp only [Cell.price] at hc; simp only [fourGrid]
  apply List.mem_flatMap.mpr
  refine ⟨lf,List.mem_range.mpr (by omega),?_⟩
  apply List.mem_flatMap.mpr
  refine ⟨la-2,List.mem_range.mpr (by omega),?_⟩
  apply List.mem_flatMap.mpr
  refine ⟨vf-2,List.mem_range.mpr (by omega),?_⟩
  apply List.mem_flatMap.mpr
  refine ⟨va-4,List.mem_range.mpr (by omega),List.mem_map.mpr ⟨xf,List.mem_range.mpr (by omega),?_⟩⟩
  congr 1 <;> omega

def Four (c : Cell) := Every (fun f => Every (fun a => BadRow (markedRow c f a))
    (words (1+c.la) c.va c.xa)) (words (1+c.lf) c.vf c.xf)

structure FiveCell where
  L : Nat
  X : Nat
  lit : Bool
  x : Nat
  l : Nat
  v : Nat

def fiveGrid (n : Nat) : List FiveCell :=
  [5,6].flatMap fun L =>
    let X := n - (if L = 5 then 36 else 38)
    [false,true].flatMap fun lit =>
      (List.range (X-2)).flatMap fun xi => (List.range (L-3)).flatMap fun li =>
        [3,4,5].map fun v => ⟨L,X,lit,xi+3,li+2,v⟩

theorem five_mem {L X x l v n : Nat} (lit : Bool)
    (p : (L=5 ∧ X+36=n) ∨ (L=6 ∧ X+38=n)) (xl : 3 ≤ x) (xh : x ≤ X)
    (ll : 2 ≤ l) (lh : l+2 ≤ L) (vl : 3 ≤ v) (vh : v ≤ 5) :
    ⟨L,X,lit,x,l,v⟩ ∈ fiveGrid n := by
  have hl : L ∈ [5,6] := by rcases p with h|h <;> simp [h.1]
  have hx : n - (if L = 5 then 36 else 38) = X := by rcases p with h|h <;> simp [h.1] <;> omega
  apply List.mem_flatMap.mpr; refine ⟨L,hl,?_⟩
  rw [hx]
  apply List.mem_flatMap.mpr; refine ⟨lit,by cases lit <;> simp,?_⟩
  apply List.mem_flatMap.mpr; refine ⟨x-3,List.mem_range.mpr (by omega),?_⟩
  apply List.mem_flatMap.mpr; refine ⟨l-2,List.mem_range.mpr (by omega),?_⟩
  apply List.mem_map.mpr; refine ⟨v,by simp; omega,?_⟩; congr 1 <;> omega

def Five (c : FiveCell) := Every (fun w => BadRow (SharedShell.row c.L c.X c.lit c.x c.l c.v w))
    (words (c.x+1) c.v c.x)

theorem advance {n} (hn : n ≤ 42) (prior : SelfintSizeBound n)
    (four : Every Four (fourGrid n)) (five : Every Five (fiveGrid n)) : SelfintSizeBound (n+1) := by
  apply bound_of_minima
  intro e he
  by_cases good : n+1 ≤ wire e
  · exact good
  have hh : wire e = n := by have : n ≤ wire e := prior e he.1; omega
  have hs := wire_slack e he.1
  have ⟨hl,_,_⟩ := interpreter_counts he.1
  rcases (show live e = 4 ∨ live e = 5 by omega) with h|h
  · obtain ⟨c,hc,hf,ha,hb,hx,fw,fw0,aw,aw0,mem⟩ := four_live_marked_row he h
    exact (((((four.get (four_mem c (hc.trans hh) hf ha hb hx)).get fw0).get aw0).get mem) he).elim
  · obtain ⟨L,X,lit,x,l,v,p,xl,xh,ll,lh,vl,vh,w,hw,mem⟩ := SharedShell.complete he
        (by omega) h
    rw [hh] at p
    exact ((((five.get (five_mem lit p xl xh ll lh vl vh)).get hw).get mem) he).elim

#print axioms advance
end Blc.SelfintSingleObject.CoverGrids
