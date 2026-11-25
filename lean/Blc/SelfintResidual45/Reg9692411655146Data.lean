import Blc.SelfintResidual45.TableNotation
import Blc.SelfintResidual45.RegProof

set_option Elab.async false
namespace Blc.Floor45.Reg9692411655146
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
def pCodeB0 (i : Nat) : Certgen.Code := tableBlock% i 0 [.app 1 5,.lam 2,.app 3 4,.var 0,.var 0,.lam 6,.app 7 19,.app 8 9,.var 0,.lam 10,.app 11 12,.var 0]
def pCodeB12 (i : Nat) : Certgen.Code := tableBlock% i 12 [.lam 13,.lam 14,.app 15 16,.var 2,.app 17 18,.var 3,.var 0,.var 0]
def pCode (i : Nat) : Certgen.Code := if i < 20 then (if i < 12 then pCodeB0 i else pCodeB12 i) else .opaque
def lit19 : Term := .var 0
def lit15 : Term := .var 2
def lit17 : Term := .var 3
def lit2 : Term := .app lit19 lit19
def lit1 : Term := .lam lit2
def lit16 : Term := .app lit17 lit19
def lit14 : Term := .app lit15 lit16
def lit13 : Term := .lam lit14
def lit12 : Term := .lam lit13
def lit10 : Term := .app lit19 lit12
def lit9 : Term := .lam lit10
def lit7 : Term := .app lit19 lit9
def lit6 : Term := .app lit7 lit19
def lit5 : Term := .lam lit6
def lit0 : Term := .app lit1 lit5
def getTermB0 (i : Nat) : Term := tableBlock% i 0 [lit0,lit1,lit2,lit19,lit19,lit5,lit6,lit7,lit19,lit9,lit10,lit19]
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
def valuesB0 (i : Nat) : List AClo := tableBlock% i 0 [[⟨5,[]⟩],[⟨12,[6,3]⟩,⟨12,[6,5]⟩],[⟨19,[3]⟩,⟨19,[5]⟩],[⟨18,[2,1,8,4]⟩],[⟨4,[0]⟩],[⟨9,[4]⟩],[⟨12,[8,4]⟩],[⟨16,[2,1,8,4]⟩],[⟨9,[3]⟩,⟨9,[5]⟩]]
def values (i : Nat) : List AClo := if i < 9 then valuesB0 i else []
def kontsB0 (i : Nat) : List Frame := tableBlock% i 0 [[],[⟨⟨5,[]⟩,0⟩],[⟨⟨12,[6,3]⟩,10⟩,⟨⟨12,[6,3]⟩,12⟩],[⟨⟨12,[6,5]⟩,10⟩,⟨⟨12,[6,5]⟩,12⟩],[⟨⟨12,[7,3]⟩,4⟩,⟨⟨12,[7,3]⟩,5⟩,⟨⟨12,[7,3]⟩,11⟩],[⟨⟨12,[7,5]⟩,4⟩,⟨⟨12,[7,5]⟩,5⟩,⟨⟨12,[7,5]⟩,11⟩],[⟨⟨12,[8,4]⟩,10⟩,⟨⟨12,[8,4]⟩,12⟩],[⟨⟨16,[2,1,8,4]⟩,4⟩,⟨⟨16,[2,1,8,4]⟩,5⟩,⟨⟨16,[2,1,8,4]⟩,11⟩],[⟨⟨18,[2,1,8,4]⟩,4⟩,⟨⟨18,[2,1,8,4]⟩,5⟩],[⟨⟨4,[0]⟩,0⟩],[⟨⟨19,[3]⟩,4⟩,⟨⟨19,[3]⟩,5⟩],[⟨⟨19,[4]⟩,0⟩]]
def kontsB12 (i : Nat) : List Frame := tableBlock% i 12 [[⟨⟨19,[5]⟩,11⟩],[⟨⟨9,[3]⟩,10⟩],[⟨⟨9,[4]⟩,11⟩],[⟨⟨9,[5]⟩,12⟩]]
def konts (i : Nat) : List Frame := if i < 16 then (if i < 12 then kontsB0 i else kontsB12 i) else []
def getStB0 (i : Nat) : AState := tableBlock% i 0 [⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[0]⟩,0⟩,⟨⟨3,[0]⟩,9⟩,⟨⟨4,[0]⟩,8⟩,⟨⟨4,[0]⟩,14⟩,⟨⟨5,[]⟩,8⟩,⟨⟨5,[]⟩,9⟩,⟨⟨5,[]⟩,14⟩,⟨⟨6,[3]⟩,4⟩,⟨⟨6,[3]⟩,5⟩,⟨⟨6,[4]⟩,0⟩]
def getStB12 (i : Nat) : AState := tableBlock% i 12 [⟨⟨6,[5]⟩,11⟩,⟨⟨7,[3]⟩,10⟩,⟨⟨7,[4]⟩,11⟩,⟨⟨7,[5]⟩,12⟩,⟨⟨8,[3]⟩,13⟩,⟨⟨8,[4]⟩,14⟩,⟨⟨8,[5]⟩,15⟩,⟨⟨9,[3]⟩,6⟩,⟨⟨9,[3]⟩,7⟩,⟨⟨9,[4]⟩,13⟩,⟨⟨9,[4]⟩,15⟩,⟨⟨9,[5]⟩,6⟩]
def getStB24 (i : Nat) : AState := tableBlock% i 24 [⟨⟨9,[5]⟩,7⟩,⟨⟨10,[6,3]⟩,10⟩,⟨⟨10,[6,3]⟩,12⟩,⟨⟨10,[6,5]⟩,10⟩,⟨⟨10,[6,5]⟩,12⟩,⟨⟨10,[7,3]⟩,4⟩,⟨⟨10,[7,3]⟩,5⟩,⟨⟨10,[7,3]⟩,11⟩,⟨⟨10,[7,5]⟩,4⟩,⟨⟨10,[7,5]⟩,5⟩,⟨⟨10,[7,5]⟩,11⟩,⟨⟨10,[8,4]⟩,10⟩]
def getStB36 (i : Nat) : AState := tableBlock% i 36 [⟨⟨10,[8,4]⟩,12⟩,⟨⟨11,[6,3]⟩,2⟩,⟨⟨11,[6,5]⟩,3⟩,⟨⟨11,[7,3]⟩,4⟩,⟨⟨11,[7,5]⟩,5⟩,⟨⟨11,[8,4]⟩,6⟩,⟨⟨12,[8,4]⟩,2⟩,⟨⟨12,[8,4]⟩,3⟩,⟨⟨13,[1,8,4]⟩,10⟩,⟨⟨13,[1,8,4]⟩,12⟩,⟨⟨14,[2,1,8,4]⟩,4⟩,⟨⟨14,[2,1,8,4]⟩,5⟩]
def getStB48 (i : Nat) : AState := tableBlock% i 48 [⟨⟨14,[2,1,8,4]⟩,11⟩,⟨⟨15,[2,1,8,4]⟩,7⟩,⟨⟨16,[2,1,8,4]⟩,4⟩,⟨⟨16,[2,1,8,4]⟩,5⟩,⟨⟨17,[2,1,8,4]⟩,8⟩,⟨⟨18,[2,1,8,4]⟩,13⟩,⟨⟨19,[3]⟩,13⟩,⟨⟨19,[5]⟩,13⟩]
def getSt (i : Nat) : AState := if i < 56 then (if i < 24 then (if i < 12 then getStB0 i else getStB12 i) else (if i < 36 then getStB24 i else (if i < 48 then getStB36 i else getStB48 i))) else entry
def hintsB0 (i : Nat) : List Nat := tableBlock% i 0 [[1],[2],[3],[7],[6],[8],[9,10],[11],[12],[13],[13],[14]]
def hintsB12 (i : Nat) : List Nat := tableBlock% i 12 [[15],[16],[17],[18],[53],[5],[22],[25,26],[29,30,31],[35],[36],[27,28]]
def hintsB24 (i : Nat) : List Nat := tableBlock% i 24 [[32,33,34],[37],[37],[38],[38],[39],[39],[39],[40],[40],[40],[41]]
def hintsB36 (i : Nat) : List Nat := tableBlock% i 36 [[41],[42],[43],[50],[51],[19,23],[44,45],[44,45],[46,47],[48],[49],[49]]
def hintsB48 (i : Nat) : List Nat := tableBlock% i 48 [[49],[20,24],[52],[52],[4],[54,55],[53],[21]]
def hints (i : Nat) : List Nat := if i < 56 then (if i < 24 then (if i < 12 then hintsB0 i else hintsB12 i) else (if i < 36 then hintsB24 i else (if i < 48 then hintsB36 i else hintsB48 i))) else []
def ck (i : Nat) := FloorIndex.check pCode values konts (RegProof.states 56 getSt) i (hints i)
end Blc.Floor45.Reg9692411655146
