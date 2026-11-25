import Blc.SelfintResidual45.TableNotation
import Blc.SelfintResidual45.RegProof

set_option Elab.async false
namespace Blc.Floor45.Reg9573528304106
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
def pCodeB0 (i : Nat) : Certgen.Code := tableBlock% i 0 [.app 1 7,.lam 2,.app 3 6,.app 4 5,.var 0,.var 0,.var 0,.lam 8,.lam 9,.app 10 19,.app 11 12,.var 0]
def pCodeB12 (i : Nat) : Certgen.Code := tableBlock% i 12 [.lam 13,.lam 14,.app 15 16,.var 3,.app 17 18,.var 2,.var 0,.var 0]
def pCode (i : Nat) : Certgen.Code := if i < 20 then (if i < 12 then pCodeB0 i else pCodeB12 i) else .opaque
def lit19 : Term := .var 0
def lit17 : Term := .var 2
def lit15 : Term := .var 3
def lit3 : Term := .app lit19 lit19
def lit16 : Term := .app lit17 lit19
def lit2 : Term := .app lit3 lit19
def lit1 : Term := .lam lit2
def lit14 : Term := .app lit15 lit16
def lit13 : Term := .lam lit14
def lit12 : Term := .lam lit13
def lit10 : Term := .app lit19 lit12
def lit9 : Term := .app lit10 lit19
def lit8 : Term := .lam lit9
def lit7 : Term := .lam lit8
def lit0 : Term := .app lit1 lit7
def getTermB0 (i : Nat) : Term := tableBlock% i 0 [lit0,lit1,lit2,lit3,lit19,lit19,lit19,lit7,lit8,lit9,lit10,lit19]
def getTermB12 (i : Nat) : Term := tableBlock% i 12 [lit12,lit13,lit14,lit15,lit16,lit17,lit19,lit19]
def getTerm (i : Nat) : Term := if i < 20 then (if i < 12 then getTermB0 i else getTermB12 i) else .var 0
def align := RegProof.aligned getTerm pCode
theorem al0 : RegProof.Span align 0 10 := RegProof.block (n := 10) (by decide +kernel)
theorem al10 : RegProof.Span align 10 20 := RegProof.block (n := 10) (by decide +kernel)
theorem alAll : RegProof.Span align 0 20 := (RegProof.merge al0 al10)
def mdl : Model pCode := RegProof.alignedModel getTerm pCode (by
  intro i
  by_cases h : i < 20
  · exact alAll i (by omega) h
  · simp [RegProof.aligned,pCode,h])
def valuesB0 (i : Nat) : List AClo := tableBlock% i 0 [[⟨7,[]⟩],[⟨5,[0]⟩,⟨12,[2,1]⟩],[⟨6,[0]⟩,⟨19,[2,1]⟩]]
def values (i : Nat) : List AClo := if i < 3 then valuesB0 i else []
def kontsB0 (i : Nat) : List Frame := tableBlock% i 0 [[],[⟨⟨7,[]⟩,0⟩],[⟨⟨12,[2,1]⟩,5⟩],[⟨⟨6,[0]⟩,0⟩],[⟨⟨5,[0]⟩,3⟩],[⟨⟨19,[2,1]⟩,0⟩]]
def konts (i : Nat) : List Frame := if i < 6 then kontsB0 i else []
def getStB0 (i : Nat) : AState := tableBlock% i 0 [⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[0]⟩,0⟩,⟨⟨3,[0]⟩,3⟩,⟨⟨4,[0]⟩,4⟩,⟨⟨6,[0]⟩,2⟩,⟨⟨7,[]⟩,2⟩,⟨⟨7,[]⟩,4⟩,⟨⟨8,[1]⟩,3⟩,⟨⟨8,[1]⟩,5⟩,⟨⟨9,[2,1]⟩,0⟩,⟨⟨10,[2,1]⟩,5⟩]
def getStB12 (i : Nat) : AState := tableBlock% i 12 [⟨⟨11,[2,1]⟩,2⟩,⟨⟨19,[2,1]⟩,2⟩]
def getSt (i : Nat) : AState := if i < 14 then (if i < 12 then getStB0 i else getStB12 i) else entry
def hintsB0 (i : Nat) : List Nat := tableBlock% i 0 [[1],[2],[3],[4],[7],[6],[9],[8],[10],[10],[11],[12]]
def hintsB12 (i : Nat) : List Nat := tableBlock% i 12 [[5,13],[5,13]]
def hints (i : Nat) : List Nat := if i < 14 then (if i < 12 then hintsB0 i else hintsB12 i) else []
def ck (i : Nat) := FloorIndex.check pCode values konts (RegProof.states 14 getSt) i (hints i)
end Blc.Floor45.Reg9573528304106
