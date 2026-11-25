import Blc.SelfintResidual45.TableNotation
import Blc.SelfintResidual45.RegProof

set_option Elab.async false
namespace Blc.Floor45.Reg9692402055738
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
def pCodeB0 (i : Nat) : Certgen.Code := tableBlock% i 0 [.app 1 5,.lam 2,.app 3 4,.var 0,.var 0,.lam 6,.app 7 19,.app 8 9,.var 0,.lam 10,.lam 11,.app 12 17]
def pCodeB12 (i : Nat) : Certgen.Code := tableBlock% i 12 [.app 13 14,.var 1,.app 15 16,.var 2,.var 0,.lam 18,.var 2,.var 0]
def pCode (i : Nat) : Certgen.Code := if i < 20 then (if i < 12 then pCodeB0 i else pCodeB12 i) else .opaque
def lit19 : Term := .var 0
def lit13 : Term := .var 1
def lit18 : Term := .var 2
def lit2 : Term := .app lit19 lit19
def lit17 : Term := .lam lit18
def lit1 : Term := .lam lit2
def lit14 : Term := .app lit18 lit19
def lit12 : Term := .app lit13 lit14
def lit11 : Term := .app lit12 lit17
def lit10 : Term := .lam lit11
def lit9 : Term := .lam lit10
def lit7 : Term := .app lit19 lit9
def lit6 : Term := .app lit7 lit19
def lit5 : Term := .lam lit6
def lit0 : Term := .app lit1 lit5
def getTermB0 (i : Nat) : Term := tableBlock% i 0 [lit0,lit1,lit2,lit19,lit19,lit5,lit6,lit7,lit19,lit9,lit10,lit11]
def getTermB12 (i : Nat) : Term := tableBlock% i 12 [lit12,lit13,lit14,lit18,lit19,lit17,lit18,lit19]
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
def valuesB0 (i : Nat) : List AClo := tableBlock% i 0 [[⟨5,[]⟩],[⟨17,[2,7,4]⟩],[⟨19,[3]⟩,⟨19,[5]⟩],[⟨16,[2,7,4]⟩],[⟨4,[0]⟩],[⟨9,[4]⟩],[⟨14,[2,7,4]⟩],[⟨9,[3]⟩,⟨9,[5]⟩]]
def values (i : Nat) : List AClo := if i < 8 then valuesB0 i else []
def kontsB0 (i : Nat) : List Frame := tableBlock% i 0 [[],[⟨⟨5,[]⟩,0⟩],[⟨⟨17,[1,6,3]⟩,5⟩,⟨⟨17,[1,6,3]⟩,6⟩,⟨⟨17,[1,6,3]⟩,11⟩],[⟨⟨17,[1,6,5]⟩,5⟩,⟨⟨17,[1,6,5]⟩,6⟩,⟨⟨17,[1,6,5]⟩,11⟩],[⟨⟨17,[2,7,4]⟩,5⟩,⟨⟨17,[2,7,4]⟩,6⟩,⟨⟨17,[2,7,4]⟩,11⟩],[⟨⟨14,[1,6,3]⟩,2⟩],[⟨⟨14,[1,6,5]⟩,3⟩],[⟨⟨14,[2,7,4]⟩,4⟩],[⟨⟨16,[2,7,4]⟩,5⟩,⟨⟨16,[2,7,4]⟩,6⟩],[⟨⟨4,[0]⟩,0⟩],[⟨⟨19,[3]⟩,5⟩,⟨⟨19,[3]⟩,6⟩],[⟨⟨19,[4]⟩,0⟩]]
def kontsB12 (i : Nat) : List Frame := tableBlock% i 12 [[⟨⟨19,[5]⟩,11⟩],[⟨⟨9,[3]⟩,10⟩],[⟨⟨9,[4]⟩,11⟩],[⟨⟨9,[5]⟩,12⟩]]
def konts (i : Nat) : List Frame := if i < 16 then (if i < 12 then kontsB0 i else kontsB12 i) else []
def getStB0 (i : Nat) : AState := tableBlock% i 0 [⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[0]⟩,0⟩,⟨⟨3,[0]⟩,9⟩,⟨⟨4,[0]⟩,8⟩,⟨⟨4,[0]⟩,14⟩,⟨⟨5,[]⟩,8⟩,⟨⟨5,[]⟩,9⟩,⟨⟨5,[]⟩,14⟩,⟨⟨6,[3]⟩,5⟩,⟨⟨6,[3]⟩,6⟩,⟨⟨6,[4]⟩,0⟩]
def getStB12 (i : Nat) : AState := tableBlock% i 12 [⟨⟨6,[5]⟩,11⟩,⟨⟨7,[3]⟩,10⟩,⟨⟨7,[4]⟩,11⟩,⟨⟨7,[5]⟩,12⟩,⟨⟨8,[3]⟩,13⟩,⟨⟨8,[4]⟩,14⟩,⟨⟨8,[5]⟩,15⟩,⟨⟨9,[3]⟩,7⟩,⟨⟨9,[4]⟩,13⟩,⟨⟨9,[4]⟩,15⟩,⟨⟨9,[5]⟩,7⟩,⟨⟨10,[6,3]⟩,4⟩]
def getStB24 (i : Nat) : AState := tableBlock% i 24 [⟨⟨10,[6,5]⟩,4⟩,⟨⟨10,[7,4]⟩,10⟩,⟨⟨10,[7,4]⟩,12⟩,⟨⟨11,[1,6,3]⟩,5⟩,⟨⟨11,[1,6,3]⟩,6⟩,⟨⟨11,[1,6,3]⟩,11⟩,⟨⟨11,[1,6,5]⟩,5⟩,⟨⟨11,[1,6,5]⟩,6⟩,⟨⟨11,[1,6,5]⟩,11⟩,⟨⟨11,[2,7,4]⟩,5⟩,⟨⟨11,[2,7,4]⟩,6⟩,⟨⟨11,[2,7,4]⟩,11⟩]
def getStB36 (i : Nat) : AState := tableBlock% i 36 [⟨⟨12,[1,6,3]⟩,2⟩,⟨⟨12,[1,6,5]⟩,3⟩,⟨⟨12,[2,7,4]⟩,4⟩,⟨⟨13,[1,6,3]⟩,5⟩,⟨⟨13,[1,6,5]⟩,6⟩,⟨⟨13,[2,7,4]⟩,7⟩,⟨⟨14,[2,7,4]⟩,5⟩,⟨⟨14,[2,7,4]⟩,6⟩,⟨⟨15,[2,7,4]⟩,8⟩,⟨⟨16,[2,7,4]⟩,13⟩,⟨⟨19,[3]⟩,13⟩,⟨⟨19,[5]⟩,13⟩]
def getSt (i : Nat) : AState := if i < 48 then (if i < 24 then (if i < 12 then getStB0 i else getStB12 i) else (if i < 36 then getStB24 i else getStB36 i)) else entry
def hintsB0 (i : Nat) : List Nat := tableBlock% i 0 [[1],[2],[3],[7],[6],[8],[9,10],[11],[12],[13],[13],[14]]
def hintsB12 (i : Nat) : List Nat := tableBlock% i 12 [[15],[16],[17],[18],[45],[5],[21],[23],[25],[26],[24],[27,28,29]]
def hintsB24 (i : Nat) : List Nat := tableBlock% i 24 [[30,31,32],[33,34],[35],[36],[36],[36],[37],[37],[37],[38],[38],[38]]
def hintsB36 (i : Nat) : List Nat := tableBlock% i 36 [[39],[40],[41],[42],[43],[19,22],[44],[44],[4],[46,47],[45],[20]]
def hints (i : Nat) : List Nat := if i < 48 then (if i < 24 then (if i < 12 then hintsB0 i else hintsB12 i) else (if i < 36 then hintsB24 i else hintsB36 i)) else []
def ck (i : Nat) := FloorIndex.check pCode values konts (RegProof.states 48 getSt) i (hints i)
end Blc.Floor45.Reg9692402055738
