import Blc.SelfintResidual45.TableNotation
import Blc.SelfintResidual45.RegProof

set_option Elab.async false
namespace Blc.Floor45.Reg9557387579002
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
def pCodeB0 (i : Nat) : Certgen.Code := tableBlock% i 0 [.app 1 8,.lam 2,.app 3 7,.app 4 5,.var 0,.lam 6,.var 0,.var 0,.lam 9,.lam 10,.app 11 15,.app 12 13]
def pCodeB12 (i : Nat) : Certgen.Code := tableBlock% i 12 [.var 0,.lam 14,.var 0,.lam 16,.app 17 18,.var 1,.app 19 20,.var 2,.var 0]
def pCode (i : Nat) : Certgen.Code := if i < 21 then (if i < 12 then pCodeB0 i else pCodeB12 i) else .opaque
def lit20 : Term := .var 0
def lit17 : Term := .var 1
def lit13 : Term := .lam lit20
def lit19 : Term := .var 2
def lit11 : Term := .app lit20 lit13
def lit18 : Term := .app lit19 lit20
def lit2 : Term := .app lit11 lit20
def lit16 : Term := .app lit17 lit18
def lit1 : Term := .lam lit2
def lit15 : Term := .lam lit16
def lit10 : Term := .app lit11 lit15
def lit9 : Term := .lam lit10
def lit8 : Term := .lam lit9
def lit0 : Term := .app lit1 lit8
def getTermB0 (i : Nat) : Term := tableBlock% i 0 [lit0,lit1,lit2,lit11,lit20,lit13,lit20,lit20,lit8,lit9,lit10,lit11]
def getTermB12 (i : Nat) : Term := tableBlock% i 12 [lit20,lit13,lit20,lit15,lit16,lit17,lit18,lit19,lit20]
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
def valuesB0 (i : Nat) : List AClo := tableBlock% i 0 [[⟨8,[]⟩],[⟨13,[3,2]⟩,⟨18,[1,3,2]⟩],[⟨5,[0]⟩,⟨13,[3,2]⟩,⟨18,[1,3,2]⟩],[⟨7,[0]⟩,⟨15,[3,2]⟩]]
def values (i : Nat) : List AClo := if i < 4 then valuesB0 i else []
def kontsB0 (i : Nat) : List Frame := tableBlock% i 0 [[],[⟨⟨8,[]⟩,0⟩],[⟨⟨15,[3,2]⟩,0⟩],[⟨⟨13,[3,2]⟩,2⟩],[⟨⟨18,[1,3,2]⟩,2⟩],[⟨⟨7,[0]⟩,0⟩],[⟨⟨5,[0]⟩,5⟩]]
def konts (i : Nat) : List Frame := if i < 7 then kontsB0 i else []
def getStB0 (i : Nat) : AState := tableBlock% i 0 [⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[0]⟩,0⟩,⟨⟨3,[0]⟩,5⟩,⟨⟨4,[0]⟩,6⟩,⟨⟨7,[0]⟩,3⟩,⟨⟨7,[0]⟩,4⟩,⟨⟨8,[]⟩,3⟩,⟨⟨8,[]⟩,4⟩,⟨⟨8,[]⟩,6⟩,⟨⟨9,[2]⟩,2⟩,⟨⟨9,[2]⟩,5⟩]
def getStB12 (i : Nat) : AState := tableBlock% i 12 [⟨⟨10,[3,2]⟩,0⟩,⟨⟨11,[3,2]⟩,2⟩,⟨⟨12,[3,2]⟩,3⟩,⟨⟨15,[3,2]⟩,3⟩,⟨⟨15,[3,2]⟩,4⟩,⟨⟨16,[1,3,2]⟩,2⟩,⟨⟨17,[1,3,2]⟩,4⟩]
def getSt (i : Nat) : AState := if i < 19 then (if i < 12 then getStB0 i else getStB12 i) else entry
def hintsB0 (i : Nat) : List Nat := tableBlock% i 0 [[1],[2],[3],[4],[9],[7],[8],[10],[10],[11],[12],[12]]
def hintsB12 (i : Nat) : List Nat := tableBlock% i 12 [[13],[14],[5,15],[17],[17],[18],[6,16]]
def hints (i : Nat) : List Nat := if i < 19 then (if i < 12 then hintsB0 i else hintsB12 i) else []
def ck (i : Nat) := FloorIndex.check pCode values konts (RegProof.states 19 getSt) i (hints i)
end Blc.Floor45.Reg9557387579002
