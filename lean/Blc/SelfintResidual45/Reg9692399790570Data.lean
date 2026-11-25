import Blc.SelfintResidual45.TableNotation
import Blc.SelfintResidual45.RegProof

set_option Elab.async false
namespace Blc.Floor45.Reg9692399790570
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
def pCodeB0 (i : Nat) : Certgen.Code := tableBlock% i 0 [.app 1 5,.lam 2,.app 3 4,.var 0,.var 0,.lam 6,.app 7 19,.app 8 9,.var 0,.lam 10,.lam 11,.lam 12]
def pCodeB12 (i : Nat) : Certgen.Code := tableBlock% i 12 [.app 13 16,.app 14 15,.var 3,.var 0,.app 17 18,.var 2,.var 0,.var 0]
def pCode (i : Nat) : Certgen.Code := if i < 20 then (if i < 12 then pCodeB0 i else pCodeB12 i) else .opaque
def lit19 : Term := .var 0
def lit17 : Term := .var 2
def lit14 : Term := .var 3
def lit2 : Term := .app lit19 lit19
def lit1 : Term := .lam lit2
def lit16 : Term := .app lit17 lit19
def lit13 : Term := .app lit14 lit19
def lit12 : Term := .app lit13 lit16
def lit11 : Term := .lam lit12
def lit10 : Term := .lam lit11
def lit9 : Term := .lam lit10
def lit7 : Term := .app lit19 lit9
def lit6 : Term := .app lit7 lit19
def lit5 : Term := .lam lit6
def lit0 : Term := .app lit1 lit5
def getTermB0 (i : Nat) : Term := tableBlock% i 0 [lit0,lit1,lit2,lit19,lit19,lit5,lit6,lit7,lit19,lit9,lit10,lit11]
def getTermB12 (i : Nat) : Term := tableBlock% i 12 [lit12,lit13,lit14,lit19,lit16,lit17,lit19,lit19]
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
def valuesB0 (i : Nat) : List AClo := tableBlock% i 0 [[⟨5,[]⟩],[⟨19,[5]⟩],[⟨19,[3]⟩,⟨19,[4]⟩],[⟨15,[2,1,6,3]⟩,⟨15,[2,1,6,4]⟩],[⟨4,[0]⟩],[⟨9,[3]⟩,⟨9,[4]⟩],[⟨9,[5]⟩]]
def values (i : Nat) : List AClo := if i < 7 then valuesB0 i else []
def kontsB0 (i : Nat) : List Frame := tableBlock% i 0 [[],[⟨⟨5,[]⟩,0⟩],[⟨⟨16,[2,1,6,3]⟩,0⟩,⟨⟨16,[2,1,6,3]⟩,2⟩,⟨⟨16,[2,1,6,3]⟩,3⟩],[⟨⟨16,[2,1,6,4]⟩,0⟩,⟨⟨16,[2,1,6,4]⟩,2⟩,⟨⟨16,[2,1,6,4]⟩,3⟩],[⟨⟨15,[2,1,6,3]⟩,2⟩],[⟨⟨15,[2,1,6,4]⟩,3⟩],[⟨⟨4,[0]⟩,0⟩],[⟨⟨19,[3]⟩,2⟩,⟨⟨19,[3]⟩,3⟩],[⟨⟨19,[4]⟩,0⟩],[⟨⟨19,[5]⟩,7⟩,⟨⟨19,[5]⟩,8⟩],[⟨⟨9,[3]⟩,7⟩],[⟨⟨9,[4]⟩,8⟩]]
def kontsB12 (i : Nat) : List Frame := [⟨⟨9,[5]⟩,9⟩]
def konts (i : Nat) : List Frame := if i < 13 then (if i < 12 then kontsB0 i else kontsB12 i) else []
def getStB0 (i : Nat) : AState := tableBlock% i 0 [⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[0]⟩,0⟩,⟨⟨3,[0]⟩,6⟩,⟨⟨4,[0]⟩,4⟩,⟨⟨4,[0]⟩,5⟩,⟨⟨4,[0]⟩,10⟩,⟨⟨4,[0]⟩,11⟩,⟨⟨5,[]⟩,4⟩,⟨⟨5,[]⟩,5⟩,⟨⟨5,[]⟩,6⟩,⟨⟨5,[]⟩,10⟩]
def getStB12 (i : Nat) : AState := tableBlock% i 12 [⟨⟨5,[]⟩,11⟩,⟨⟨6,[3]⟩,2⟩,⟨⟨6,[3]⟩,3⟩,⟨⟨6,[4]⟩,0⟩,⟨⟨6,[5]⟩,7⟩,⟨⟨6,[5]⟩,8⟩,⟨⟨7,[3]⟩,7⟩,⟨⟨7,[4]⟩,8⟩,⟨⟨7,[5]⟩,9⟩,⟨⟨8,[3]⟩,10⟩,⟨⟨8,[4]⟩,11⟩,⟨⟨8,[5]⟩,12⟩]
def getStB24 (i : Nat) : AState := tableBlock% i 24 [⟨⟨9,[3]⟩,12⟩,⟨⟨9,[4]⟩,12⟩,⟨⟨10,[6,3]⟩,9⟩,⟨⟨10,[6,4]⟩,9⟩,⟨⟨11,[1,6,3]⟩,7⟩,⟨⟨11,[1,6,3]⟩,8⟩,⟨⟨11,[1,6,4]⟩,7⟩,⟨⟨11,[1,6,4]⟩,8⟩,⟨⟨12,[2,1,6,3]⟩,0⟩,⟨⟨12,[2,1,6,3]⟩,2⟩,⟨⟨12,[2,1,6,3]⟩,3⟩,⟨⟨12,[2,1,6,4]⟩,0⟩]
def getStB36 (i : Nat) : AState := tableBlock% i 36 [⟨⟨12,[2,1,6,4]⟩,2⟩,⟨⟨12,[2,1,6,4]⟩,3⟩,⟨⟨13,[2,1,6,3]⟩,2⟩,⟨⟨13,[2,1,6,4]⟩,3⟩,⟨⟨14,[2,1,6,3]⟩,4⟩,⟨⟨14,[2,1,6,4]⟩,5⟩,⟨⟨15,[2,1,6,3]⟩,4⟩,⟨⟨15,[2,1,6,3]⟩,10⟩,⟨⟨15,[2,1,6,4]⟩,4⟩,⟨⟨15,[2,1,6,4]⟩,10⟩,⟨⟨19,[3]⟩,4⟩,⟨⟨19,[3]⟩,10⟩]
def getStB48 (i : Nat) : AState := tableBlock% i 48 [⟨⟨19,[4]⟩,4⟩,⟨⟨19,[4]⟩,10⟩]
def getSt (i : Nat) : AState := if i < 50 then (if i < 24 then (if i < 12 then getStB0 i else getStB12 i) else (if i < 36 then getStB24 i else (if i < 48 then getStB36 i else getStB48 i))) else entry
def hintsB0 (i : Nat) : List Nat := tableBlock% i 0 [[1],[2],[3],[10],[8],[9],[11],[12],[13],[14],[15],[16]]
def hintsB12 (i : Nat) : List Nat := tableBlock% i 12 [[17],[18],[18],[19],[20],[20],[21],[22],[23],[43,45],[7],[24,25]]
def hintsB24 (i : Nat) : List Nat := tableBlock% i 24 [[26],[27],[28,29],[30,31],[33,34],[32],[36,37],[35],[38],[38],[38],[39]]
def hintsB36 (i : Nat) : List Nat := tableBlock% i 36 [[39],[39],[40],[41],[42,44],[5],[46,48],[47,49],[46,48],[47,49],[42,44],[43,45]]
def hintsB48 (i : Nat) : List Nat := tableBlock% i 48 [[4],[6]]
def hints (i : Nat) : List Nat := if i < 50 then (if i < 24 then (if i < 12 then hintsB0 i else hintsB12 i) else (if i < 36 then hintsB24 i else (if i < 48 then hintsB36 i else hintsB48 i))) else []
def ck (i : Nat) := FloorIndex.check pCode values konts (RegProof.states 50 getSt) i (hints i)
end Blc.Floor45.Reg9692399790570
