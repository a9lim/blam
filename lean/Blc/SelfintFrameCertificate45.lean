import Blc.SelfintCachedCover45

namespace Blc.SelfintSingleObject.FrameCertificate
open Term SelfintFloor SelfintLowerBound OperandGrammar FiveLive Saturated Grammar43 SourceRefutations Fast45

/-- A lookup key proposes a position. The checker also compares the complete
shell at that position, so acceptance never depends on hash injectivity. -/
def termKey (h : Nat) : Term → Nat
  | .var i => h*16+5+i
  | .lam b => termKey (h*16+1) b
  | .app f a => termKey (termKey (h*16+2) f) a

def key (h : Nat) : Shell → Nat
  | .hole => h*16
  | .left k s => key (termKey (h*16+3) s) k
  | .right s k => key (termKey (h*16+4) s) k

def accepts (L l v : Nat) (both lit : Bool) (ks : List Shell) (pos : Nat → Nat) (k : Shell) :=
  if ((5 < v || 0 < k.mass nonlinear) && k.mass lamCount ≤ k.mass live + (L-5)) && fits both l v lit k then
    ks[pos (key 1 k)]? == some k
  else true

def wordOK (L l v : Nat) (both lit : Bool) (ks : List Shell) (pos : Nat → Nat)
    (fuel d la va xa r m y : Nat) (w : List Nat) :=
  (layouts (m+(r+1)) d m w).all fun s =>
    (shells fuel d (la-m) (va-(r+1)) (xa-y)).all fun k =>
      accepts L l v both lit ks pos (.left k s) && accepts L l v both lit ks pos (.right s k)

abbrev WordRow (L l v : Nat) (both lit : Bool) (ks : List Shell) (pos : Nat → Nat)
    (fuel d la va xa r m y : Nat) :=
  Every (fun w => wordOK L l v both lit ks pos fuel d la va xa r m y w = true)
    (words (y+1) (r+1) y)

theorem by_words {V L X x l v : Nat} {both lit : Bool} {ks : List Shell} (pos : Nat → Nat)
    (fuel d la va xa : Nat) (hd : (if lit then 1 else 0) = d)
    (hL : L-(l+1)-(if lit then 1 else 0) = la) (hV : V-v = va)
    (hX : X-x = xa) (hf : va = fuel+1)
    (checked : Every (fun r => Every (fun m => Every (WordRow L l v both lit ks pos fuel d la va xa r m)
      (List.range (xa+1))) (List.range (la+1))) (List.range va)) : FrameCover both lit V L X x l v ks := by
  intro k hk fit
  obtain ⟨mem,req⟩ := List.mem_filter.mp hk
  rw [hL,hd,hV,hX] at mem
  have hm : k ∈ shells (fuel+1) d la va xa := by simpa only [← hf] using mem
  simp only [shells,List.mem_append] at hm
  rcases hm with nil | more
  · split at nil
    · omega
    · cases nil
  obtain ⟨r,hr,m,hm,y,hy,k',hk',s,hs,eq⟩ := by simpa only [List.mem_flatMap] using more
  obtain ⟨w,hw,hs⟩ := hs
  have bothOK := Bool.and_eq_true_iff.mp (List.all_eq_true.mp
    (List.all_eq_true.mp ((((checked.get hr).get hm).get hy).get hw) s hs) k' hk')
  have got : accepts L l v both lit ks pos k = true := by
    rcases List.mem_cons.mp eq with h|h
    · exact h ▸ bothOK.1
    · exact (List.mem_singleton.mp h) ▸ bothOK.2
  simp only [accepts,req,fit,Bool.and_self,if_true,beq_iff_eq] at got
  exact List.mem_iff_getElem?.mpr ⟨_,got⟩
end Blc.SelfintSingleObject.FrameCertificate
