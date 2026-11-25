import Blc.SelfintResidual45.TableNotation
import Blc.SelfintResidual45.RegProof

set_option Elab.async false
namespace Blc.Floor45.Reg9553352342762
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
def pCodeB0 (i : Nat) : Certgen.Code := tableBlock% i 0 [.app 1 9,.lam 2,.app 3 8,.app 4 5,.var 0,.lam 6,.lam 7,.var 0,.var 0,.lam 10,.lam 11,.app 12 20]
def pCodeB12 (i : Nat) : Certgen.Code := tableBlock% i 12 [.app 13 14,.var 0,.lam 15,.app 16 17,.var 2,.app 18 19,.var 1,.var 0,.var 0]
def pCode (i : Nat) : Certgen.Code := if i < 21 then (if i < 12 then pCodeB0 i else pCodeB12 i) else .opaque
def lit20 : Term := .var 0
def lit18 : Term := .var 1
def lit6 : Term := .lam lit20
def lit16 : Term := .var 2
def lit5 : Term := .lam lit6
def lit17 : Term := .app lit18 lit20
def lit3 : Term := .app lit20 lit5
def lit15 : Term := .app lit16 lit17
def lit2 : Term := .app lit3 lit20
def lit14 : Term := .lam lit15
def lit1 : Term := .lam lit2
def lit12 : Term := .app lit20 lit14
def lit11 : Term := .app lit12 lit20
def lit10 : Term := .lam lit11
def lit9 : Term := .lam lit10
def lit0 : Term := .app lit1 lit9
def getTermB0 (i : Nat) : Term := tableBlock% i 0 [lit0,lit1,lit2,lit3,lit20,lit5,lit6,lit20,lit20,lit9,lit10,lit11]
def getTermB12 (i : Nat) : Term := tableBlock% i 12 [lit12,lit20,lit14,lit15,lit16,lit17,lit18,lit20,lit20]
def getTerm (i : Nat) : Term := if i < 21 then (if i < 12 then getTermB0 i else getTermB12 i) else .var 0
def align := RegProof.aligned getTerm pCode
theorem al0 : RegProof.Span align 0 10 := RegProof.block (n := 10) (by decide +kernel)
theorem al10 : RegProof.Span align 10 20 := RegProof.block (n := 10) (by decide +kernel)
theorem al20 : RegProof.Span align 20 21 := RegProof.block (n := 1) (by decide +kernel)
theorem alAll : RegProof.Span align 0 21 := (RegProof.merge al0 (RegProof.merge al10 al20))
def mdl : Model pCode := RegProof.alignedModel getTerm pCode (by
  intro i
  by_cases h : i < 21
  · exact alAll i (by omega) h
  · simp [RegProof.aligned,pCode,h])
def valuesB0 (i : Nat) : List AClo := tableBlock% i 0 [[⟨9,[]⟩],[⟨8,[0]⟩,⟨20,[1,2]⟩],[⟨5,[0]⟩,⟨14,[1,2]⟩]]
def values (i : Nat) : List AClo := if i < 3 then valuesB0 i else []
def kontsB0 (i : Nat) : List Frame := tableBlock% i 0 [[],[⟨⟨9,[]⟩,0⟩],[⟨⟨20,[1,2]⟩,0⟩],[⟨⟨14,[1,2]⟩,2⟩],[⟨⟨8,[0]⟩,0⟩],[⟨⟨5,[0]⟩,4⟩]]
def konts (i : Nat) : List Frame := if i < 6 then kontsB0 i else []
def getStB0 (i : Nat) : AState := tableBlock% i 0 [⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[0]⟩,0⟩,⟨⟨3,[0]⟩,4⟩,⟨⟨4,[0]⟩,5⟩,⟨⟨8,[0]⟩,3⟩,⟨⟨9,[]⟩,3⟩,⟨⟨9,[]⟩,5⟩,⟨⟨10,[2]⟩,2⟩,⟨⟨10,[2]⟩,4⟩,⟨⟨11,[1,2]⟩,0⟩,⟨⟨12,[1,2]⟩,2⟩]
def getStB12 (i : Nat) : AState := tableBlock% i 12 [⟨⟨13,[1,2]⟩,3⟩,⟨⟨20,[1,2]⟩,3⟩]
def getSt (i : Nat) : AState := if i < 14 then (if i < 12 then getStB0 i else getStB12 i) else entry
def hintsB0 (i : Nat) : List Nat := tableBlock% i 0 [[1],[2],[3],[4],[7],[6],[8],[9],[10],[10],[11],[12]]
def hintsB12 (i : Nat) : List Nat := tableBlock% i 12 [[5,13],[5,13]]
def hints (i : Nat) : List Nat := if i < 14 then (if i < 12 then hintsB0 i else hintsB12 i) else []
def ck (i : Nat) := FloorIndex.check pCode values konts (RegProof.states 14 getSt) i (hints i)
end Blc.Floor45.Reg9553352342762
