import Blc.SelfintResidual45.TableNotation
import Blc.SelfintResidual45.RegProof

set_option Elab.async false
namespace Blc.Floor45.Reg9692402776634
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
def pCodeB0 (i : Nat) : Certgen.Code := tableBlock% i 0 [.app 1 5,.lam 2,.app 3 4,.var 0,.var 0,.lam 6,.app 7 19,.app 8 9,.var 0,.lam 10,.lam 11,.app 12 13]
def pCodeB12 (i : Nat) : Certgen.Code := tableBlock% i 12 [.var 1,.app 14 17,.app 15 16,.var 2,.var 0,.lam 18,.var 2,.var 0]
def pCode (i : Nat) : Certgen.Code := if i < 20 then (if i < 12 then pCodeB0 i else pCodeB12 i) else .opaque
def lit19 : Term := .var 0
def lit12 : Term := .var 1
def lit18 : Term := .var 2
def lit2 : Term := .app lit19 lit19
def lit17 : Term := .lam lit18
def lit1 : Term := .lam lit2
def lit14 : Term := .app lit18 lit19
def lit13 : Term := .app lit14 lit17
def lit11 : Term := .app lit12 lit13
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
def valuesB0 (i : Nat) : List AClo := tableBlock% i 0 [[⟨5,[]⟩],[⟨17,[2,9,6]⟩,⟨17,[4,10,6]⟩],[⟨19,[5]⟩],[⟨19,[6]⟩],[⟨19,[7]⟩],[⟨16,[2,9,6]⟩,⟨16,[4,10,6]⟩],[⟨4,[0]⟩],[⟨9,[6]⟩],[⟨13,[2,9,6]⟩,⟨13,[4,10,6]⟩],[⟨9,[5]⟩],[⟨9,[7]⟩]]
def values (i : Nat) : List AClo := if i < 11 then valuesB0 i else []
def kontsB0 (i : Nat) : List Frame := tableBlock% i 0 [[],[⟨⟨5,[]⟩,0⟩],[⟨⟨13,[1,8,5]⟩,2⟩,⟨⟨13,[1,8,5]⟩,4⟩],[⟨⟨13,[2,9,6]⟩,6⟩,⟨⟨13,[2,9,6]⟩,7⟩,⟨⟨13,[2,9,6]⟩,8⟩,⟨⟨13,[2,9,6]⟩,9⟩],[⟨⟨13,[3,8,7]⟩,0⟩],[⟨⟨13,[4,10,6]⟩,16⟩],[⟨⟨17,[2,9,6]⟩,2⟩],[⟨⟨17,[2,9,6]⟩,4⟩],[⟨⟨17,[4,10,6]⟩,2⟩],[⟨⟨17,[4,10,6]⟩,4⟩],[⟨⟨16,[2,9,6]⟩,6⟩],[⟨⟨16,[2,9,6]⟩,7⟩]]
def kontsB12 (i : Nat) : List Frame := tableBlock% i 12 [[⟨⟨16,[4,10,6]⟩,8⟩],[⟨⟨16,[4,10,6]⟩,9⟩],[⟨⟨4,[0]⟩,0⟩],[⟨⟨19,[5]⟩,6⟩,⟨⟨19,[5]⟩,7⟩,⟨⟨19,[5]⟩,8⟩,⟨⟨19,[5]⟩,9⟩],[⟨⟨19,[6]⟩,0⟩],[⟨⟨19,[7]⟩,16⟩],[⟨⟨9,[5]⟩,15⟩],[⟨⟨9,[6]⟩,16⟩],[⟨⟨9,[7]⟩,17⟩]]
def konts (i : Nat) : List Frame := if i < 21 then (if i < 12 then kontsB0 i else kontsB12 i) else []
def getStB0 (i : Nat) : AState := tableBlock% i 0 [⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[0]⟩,0⟩,⟨⟨3,[0]⟩,14⟩,⟨⟨4,[0]⟩,10⟩,⟨⟨4,[0]⟩,11⟩,⟨⟨4,[0]⟩,12⟩,⟨⟨4,[0]⟩,13⟩,⟨⟨4,[0]⟩,19⟩,⟨⟨5,[]⟩,10⟩,⟨⟨5,[]⟩,11⟩,⟨⟨5,[]⟩,12⟩]
def getStB12 (i : Nat) : AState := tableBlock% i 12 [⟨⟨5,[]⟩,13⟩,⟨⟨5,[]⟩,14⟩,⟨⟨5,[]⟩,19⟩,⟨⟨6,[5]⟩,6⟩,⟨⟨6,[5]⟩,7⟩,⟨⟨6,[5]⟩,8⟩,⟨⟨6,[5]⟩,9⟩,⟨⟨6,[6]⟩,0⟩,⟨⟨6,[7]⟩,16⟩,⟨⟨7,[5]⟩,15⟩,⟨⟨7,[6]⟩,16⟩,⟨⟨7,[7]⟩,17⟩]
def getStB24 (i : Nat) : AState := tableBlock% i 24 [⟨⟨8,[5]⟩,18⟩,⟨⟨8,[6]⟩,19⟩,⟨⟨8,[7]⟩,20⟩,⟨⟨9,[5]⟩,3⟩,⟨⟨9,[6]⟩,18⟩,⟨⟨9,[6]⟩,20⟩,⟨⟨9,[7]⟩,5⟩,⟨⟨10,[8,5]⟩,6⟩,⟨⟨10,[8,5]⟩,7⟩,⟨⟨10,[8,5]⟩,8⟩,⟨⟨10,[8,5]⟩,9⟩,⟨⟨10,[8,7]⟩,16⟩]
def getStB36 (i : Nat) : AState := tableBlock% i 36 [⟨⟨10,[9,6]⟩,15⟩,⟨⟨10,[10,6]⟩,17⟩,⟨⟨11,[1,8,5]⟩,2⟩,⟨⟨11,[1,8,5]⟩,4⟩,⟨⟨11,[2,9,6]⟩,6⟩,⟨⟨11,[2,9,6]⟩,7⟩,⟨⟨11,[2,9,6]⟩,8⟩,⟨⟨11,[2,9,6]⟩,9⟩,⟨⟨11,[3,8,7]⟩,0⟩,⟨⟨11,[4,10,6]⟩,16⟩,⟨⟨12,[1,8,5]⟩,2⟩,⟨⟨12,[2,9,6]⟩,3⟩]
def getStB48 (i : Nat) : AState := tableBlock% i 48 [⟨⟨12,[3,8,7]⟩,4⟩,⟨⟨12,[4,10,6]⟩,5⟩,⟨⟨13,[2,9,6]⟩,2⟩,⟨⟨13,[2,9,6]⟩,4⟩,⟨⟨13,[4,10,6]⟩,2⟩,⟨⟨13,[4,10,6]⟩,4⟩,⟨⟨14,[2,9,6]⟩,6⟩,⟨⟨14,[2,9,6]⟩,7⟩,⟨⟨14,[4,10,6]⟩,8⟩,⟨⟨14,[4,10,6]⟩,9⟩,⟨⟨15,[2,9,6]⟩,10⟩,⟨⟨15,[2,9,6]⟩,11⟩]
def getStB60 (i : Nat) : AState := tableBlock% i 60 [⟨⟨15,[4,10,6]⟩,12⟩,⟨⟨15,[4,10,6]⟩,13⟩,⟨⟨16,[2,9,6]⟩,18⟩,⟨⟨16,[4,10,6]⟩,18⟩,⟨⟨19,[5]⟩,18⟩,⟨⟨19,[7]⟩,18⟩]
def getSt (i : Nat) : AState := if i < 66 then (if i < 36 then (if i < 12 then getStB0 i else (if i < 24 then getStB12 i else getStB24 i)) else (if i < 48 then getStB36 i else (if i < 60 then getStB48 i else getStB60 i))) else entry
def hintsB0 (i : Nat) : List Nat := tableBlock% i 0 [[1],[2],[3],[13],[9],[10],[11],[12],[14],[15],[16],[17]]
def hintsB12 (i : Nat) : List Nat := tableBlock% i 12 [[18],[19],[20],[21],[21],[21],[21],[22],[23],[24],[25],[26]]
def hintsB24 (i : Nat) : List Nat := tableBlock% i 24 [[62,63],[8],[29],[31,32,33,34],[36],[37],[35],[38],[39],[38],[39],[44]]
def hintsB36 (i : Nat) : List Nat := tableBlock% i 36 [[40,41,42,43],[45],[46],[46],[47],[47],[47],[47],[48],[49],[50,52],[27]]
def hintsB48 (i : Nat) : List Nat := tableBlock% i 48 [[51,53],[30],[54],[55],[56],[57],[58],[59],[60],[61],[4],[5]]
def hintsB60 (i : Nat) : List Nat := tableBlock% i 60 [[6],[7],[64],[65],[62,63],[28]]
def hints (i : Nat) : List Nat := if i < 66 then (if i < 36 then (if i < 12 then hintsB0 i else (if i < 24 then hintsB12 i else hintsB24 i)) else (if i < 48 then hintsB36 i else (if i < 60 then hintsB48 i else hintsB60 i))) else []
def ck (i : Nat) := FloorIndex.check pCode values konts (RegProof.states 66 getSt) i (hints i)
end Blc.Floor45.Reg9692402776634
