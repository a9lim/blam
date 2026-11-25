import Blc.SelfintResidual45.TableNotation
import Blc.SelfintResidual45.RegProof

set_option Elab.async false
namespace Blc.Floor45.Reg9692332849794
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
def pCodeB0 (i : Nat) : Certgen.Code := tableBlock% i 0 [.app 1 5,.lam 2,.app 3 4,.var 0,.var 0,.lam 6,.app 7 18,.app 8 17,.app 9 10,.var 0,.lam 11,.lam 12]
def pCodeB12 (i : Nat) : Certgen.Code := tableBlock% i 12 [.app 13 14,.var 1,.app 15 16,.var 2,.var 0,.var 0,.lam 19,.lam 20,.var 0]
def pCode (i : Nat) : Certgen.Code := if i < 21 then (if i < 12 then pCodeB0 i else pCodeB12 i) else .opaque
def lit20 : Term := .var 0
def lit13 : Term := .var 1
def lit15 : Term := .var 2
def lit19 : Term := .lam lit20
def lit2 : Term := .app lit20 lit20
def lit18 : Term := .lam lit19
def lit1 : Term := .lam lit2
def lit14 : Term := .app lit15 lit20
def lit12 : Term := .app lit13 lit14
def lit11 : Term := .lam lit12
def lit10 : Term := .lam lit11
def lit8 : Term := .app lit20 lit10
def lit7 : Term := .app lit8 lit20
def lit6 : Term := .app lit7 lit18
def lit5 : Term := .lam lit6
def lit0 : Term := .app lit1 lit5
def getTermB0 (i : Nat) : Term := tableBlock% i 0 [lit0,lit1,lit2,lit20,lit20,lit5,lit6,lit7,lit8,lit20,lit10,lit11]
def getTermB12 (i : Nat) : Term := tableBlock% i 12 [lit12,lit13,lit14,lit15,lit20,lit20,lit18,lit19,lit20]
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
def valuesB0 (i : Nat) : List AClo := tableBlock% i 0 [[⟨5,[]⟩],[⟨14,[4,2,6]⟩],[⟨10,[5]⟩,⟨10,[7]⟩],[⟨18,[5]⟩,⟨18,[7]⟩],[⟨17,[5]⟩,⟨17,[7]⟩],[⟨16,[4,2,6]⟩],[⟨4,[0]⟩],[⟨10,[6]⟩]]
def values (i : Nat) : List AClo := if i < 8 then valuesB0 i else []
def kontsB0 (i : Nat) : List Frame := tableBlock% i 0 [[],[⟨⟨5,[]⟩,0⟩],[⟨⟨14,[3,1,5]⟩,2⟩,⟨⟨14,[3,1,5]⟩,3⟩,⟨⟨14,[3,1,5]⟩,11⟩],[⟨⟨14,[3,1,7]⟩,2⟩,⟨⟨14,[3,1,7]⟩,3⟩,⟨⟨14,[3,1,7]⟩,11⟩],[⟨⟨14,[4,2,6]⟩,7⟩,⟨⟨14,[4,2,6]⟩,9⟩],[⟨⟨16,[4,2,6]⟩,2⟩,⟨⟨16,[4,2,6]⟩,3⟩],[⟨⟨4,[0]⟩,0⟩],[⟨⟨18,[5]⟩,2⟩,⟨⟨18,[5]⟩,3⟩],[⟨⟨18,[6]⟩,0⟩],[⟨⟨18,[7]⟩,11⟩],[⟨⟨17,[5]⟩,7⟩],[⟨⟨17,[6]⟩,8⟩]]
def kontsB12 (i : Nat) : List Frame := tableBlock% i 12 [[⟨⟨17,[7]⟩,9⟩],[⟨⟨10,[5]⟩,10⟩],[⟨⟨10,[6]⟩,11⟩],[⟨⟨10,[7]⟩,12⟩]]
def konts (i : Nat) : List Frame := if i < 16 then (if i < 12 then kontsB0 i else kontsB12 i) else []
def getStB0 (i : Nat) : AState := tableBlock% i 0 [⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[0]⟩,0⟩,⟨⟨3,[0]⟩,6⟩,⟨⟨4,[0]⟩,5⟩,⟨⟨4,[0]⟩,14⟩,⟨⟨5,[]⟩,5⟩,⟨⟨5,[]⟩,6⟩,⟨⟨5,[]⟩,14⟩,⟨⟨6,[5]⟩,2⟩,⟨⟨6,[5]⟩,3⟩,⟨⟨6,[6]⟩,0⟩]
def getStB12 (i : Nat) : AState := tableBlock% i 12 [⟨⟨6,[7]⟩,11⟩,⟨⟨7,[5]⟩,7⟩,⟨⟨7,[6]⟩,8⟩,⟨⟨7,[7]⟩,9⟩,⟨⟨8,[5]⟩,10⟩,⟨⟨8,[6]⟩,11⟩,⟨⟨8,[7]⟩,12⟩,⟨⟨9,[5]⟩,13⟩,⟨⟨9,[6]⟩,14⟩,⟨⟨9,[7]⟩,15⟩,⟨⟨10,[5]⟩,4⟩,⟨⟨10,[6]⟩,13⟩]
def getStB24 (i : Nat) : AState := tableBlock% i 24 [⟨⟨10,[6]⟩,15⟩,⟨⟨10,[7]⟩,4⟩,⟨⟨11,[1,5]⟩,7⟩,⟨⟨11,[1,5]⟩,9⟩,⟨⟨11,[1,7]⟩,7⟩,⟨⟨11,[1,7]⟩,9⟩,⟨⟨11,[2,6]⟩,10⟩,⟨⟨11,[2,6]⟩,12⟩,⟨⟨12,[3,1,5]⟩,2⟩,⟨⟨12,[3,1,5]⟩,3⟩,⟨⟨12,[3,1,5]⟩,11⟩,⟨⟨12,[3,1,7]⟩,2⟩]
def getStB36 (i : Nat) : AState := tableBlock% i 36 [⟨⟨12,[3,1,7]⟩,3⟩,⟨⟨12,[3,1,7]⟩,11⟩,⟨⟨12,[4,2,6]⟩,7⟩,⟨⟨12,[4,2,6]⟩,9⟩,⟨⟨13,[3,1,5]⟩,2⟩,⟨⟨13,[3,1,7]⟩,3⟩,⟨⟨13,[4,2,6]⟩,4⟩,⟨⟨14,[4,2,6]⟩,2⟩,⟨⟨14,[4,2,6]⟩,3⟩,⟨⟨15,[4,2,6]⟩,5⟩,⟨⟨16,[4,2,6]⟩,13⟩,⟨⟨17,[5]⟩,13⟩]
def getStB48 (i : Nat) : AState := ⟨⟨17,[7]⟩,13⟩
def getSt (i : Nat) : AState := if i < 49 then (if i < 24 then (if i < 12 then getStB0 i else getStB12 i) else (if i < 36 then getStB24 i else (if i < 48 then getStB36 i else getStB48 i))) else entry
def hintsB0 (i : Nat) : List Nat := tableBlock% i 0 [[1],[2],[3],[7],[6],[8],[9,10],[11],[12],[13],[13],[14]]
def hintsB12 (i : Nat) : List Nat := tableBlock% i 12 [[15],[16],[17],[18],[19],[20],[21],[46],[5],[24],[26,27],[30]]
def hintsB24 (i : Nat) : List Nat := tableBlock% i 24 [[31],[28,29],[32,33],[34],[35,36],[37],[38],[39],[40],[40],[40],[41]]
def hintsB36 (i : Nat) : List Nat := tableBlock% i 36 [[41],[41],[42],[42],[43],[44],[22,25],[45],[45],[4],[47,48],[46]]
def hintsB48 (i : Nat) : List Nat := [23]
def hints (i : Nat) : List Nat := if i < 49 then (if i < 24 then (if i < 12 then hintsB0 i else hintsB12 i) else (if i < 36 then hintsB24 i else (if i < 48 then hintsB36 i else hintsB48 i))) else []
def ck (i : Nat) := FloorIndex.check pCode values konts (RegProof.states 49 getSt) i (hints i)
end Blc.Floor45.Reg9692332849794
