import Blc.SelfintResidual45.TableNotation
import Blc.SelfintResidual45.RegProof

set_option Elab.async false
namespace Blc.Floor45.Reg9692402706394
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
def pCodeB0 (i : Nat) : Certgen.Code := tableBlock% i 0 [.app 1 5,.lam 2,.app 3 4,.var 0,.var 0,.lam 6,.app 7 19,.app 8 9,.var 0,.lam 10,.lam 11,.app 12 13]
def pCodeB12 (i : Nat) : Certgen.Code := tableBlock% i 12 [.var 1,.lam 14,.app 15 16,.var 0,.app 17 18,.var 3,.var 1,.var 0]
def pCode (i : Nat) : Certgen.Code := if i < 20 then (if i < 12 then pCodeB0 i else pCodeB12 i) else .opaque
def lit19 : Term := .var 0
def lit18 : Term := .var 1
def lit17 : Term := .var 3
def lit2 : Term := .app lit19 lit19
def lit1 : Term := .lam lit2
def lit16 : Term := .app lit17 lit18
def lit14 : Term := .app lit19 lit16
def lit13 : Term := .lam lit14
def lit11 : Term := .app lit18 lit13
def lit10 : Term := .lam lit11
def lit9 : Term := .lam lit10
def lit7 : Term := .app lit19 lit9
def lit6 : Term := .app lit7 lit19
def lit5 : Term := .lam lit6
def lit0 : Term := .app lit1 lit5
def getTermB0 (i : Nat) : Term := tableBlock% i 0 [lit0,lit1,lit2,lit19,lit19,lit5,lit6,lit7,lit19,lit9,lit10,lit11]
def getTermB12 (i : Nat) : Term := tableBlock% i 12 [lit18,lit13,lit14,lit19,lit16,lit17,lit18,lit19]
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
def valuesB0 (i : Nat) : List AClo := tableBlock% i 0 [[⟨5,[]⟩],[⟨16,[7,1,11,8]⟩,⟨16,[7,3,11,10]⟩],[⟨19,[8]⟩],[⟨19,[9]⟩],[⟨19,[10]⟩],[⟨13,[1,11,8]⟩],[⟨13,[3,11,10]⟩],[⟨16,[5,2,12,9]⟩,⟨16,[5,4,13,9]⟩,⟨16,[6,2,12,9]⟩,⟨16,[6,4,13,9]⟩],[⟨18,[5,2,12,9]⟩,⟨18,[5,4,13,9]⟩,⟨18,[6,2,12,9]⟩,⟨18,[6,4,13,9]⟩],[⟨4,[0]⟩],[⟨9,[9]⟩],[⟨13,[2,12,9]⟩,⟨13,[4,13,9]⟩]]
def valuesB12 (i : Nat) : List AClo := tableBlock% i 12 [[⟨9,[8]⟩],[⟨9,[10]⟩]]
def values (i : Nat) : List AClo := if i < 14 then (if i < 12 then valuesB0 i else valuesB12 i) else []
def kontsB0 (i : Nat) : List Frame := tableBlock% i 0 [[],[⟨⟨5,[]⟩,0⟩],[⟨⟨13,[1,11,8]⟩,0⟩],[⟨⟨13,[2,12,9]⟩,10⟩,⟨⟨13,[2,12,9]⟩,11⟩],[⟨⟨13,[3,11,10]⟩,0⟩],[⟨⟨13,[4,13,9]⟩,18⟩],[⟨⟨16,[5,2,12,9]⟩,0⟩],[⟨⟨16,[5,4,13,9]⟩,0⟩],[⟨⟨16,[6,2,12,9]⟩,0⟩],[⟨⟨16,[6,4,13,9]⟩,0⟩],[⟨⟨16,[7,1,11,8]⟩,0⟩],[⟨⟨16,[7,3,11,10]⟩,0⟩]]
def kontsB12 (i : Nat) : List Frame := tableBlock% i 12 [[⟨⟨18,[5,2,12,9]⟩,10⟩,⟨⟨18,[5,2,12,9]⟩,11⟩],[⟨⟨18,[5,4,13,9]⟩,10⟩,⟨⟨18,[5,4,13,9]⟩,11⟩],[⟨⟨18,[6,2,12,9]⟩,10⟩,⟨⟨18,[6,2,12,9]⟩,11⟩],[⟨⟨18,[6,4,13,9]⟩,10⟩,⟨⟨18,[6,4,13,9]⟩,11⟩],[⟨⟨4,[0]⟩,0⟩],[⟨⟨19,[8]⟩,10⟩,⟨⟨19,[8]⟩,11⟩],[⟨⟨19,[9]⟩,0⟩],[⟨⟨19,[10]⟩,18⟩],[⟨⟨9,[8]⟩,17⟩],[⟨⟨9,[9]⟩,18⟩],[⟨⟨9,[10]⟩,19⟩]]
def konts (i : Nat) : List Frame := if i < 23 then (if i < 12 then kontsB0 i else kontsB12 i) else []
def getStB0 (i : Nat) : AState := tableBlock% i 0 [⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[0]⟩,0⟩,⟨⟨3,[0]⟩,16⟩,⟨⟨4,[0]⟩,12⟩,⟨⟨4,[0]⟩,13⟩,⟨⟨4,[0]⟩,14⟩,⟨⟨4,[0]⟩,15⟩,⟨⟨4,[0]⟩,21⟩,⟨⟨5,[]⟩,12⟩,⟨⟨5,[]⟩,13⟩,⟨⟨5,[]⟩,14⟩]
def getStB12 (i : Nat) : AState := tableBlock% i 12 [⟨⟨5,[]⟩,15⟩,⟨⟨5,[]⟩,16⟩,⟨⟨5,[]⟩,21⟩,⟨⟨6,[8]⟩,10⟩,⟨⟨6,[8]⟩,11⟩,⟨⟨6,[9]⟩,0⟩,⟨⟨6,[10]⟩,18⟩,⟨⟨7,[8]⟩,17⟩,⟨⟨7,[9]⟩,18⟩,⟨⟨7,[10]⟩,19⟩,⟨⟨8,[8]⟩,20⟩,⟨⟨8,[9]⟩,21⟩]
def getStB24 (i : Nat) : AState := tableBlock% i 24 [⟨⟨8,[10]⟩,22⟩,⟨⟨9,[8]⟩,3⟩,⟨⟨9,[9]⟩,20⟩,⟨⟨9,[9]⟩,22⟩,⟨⟨9,[10]⟩,5⟩,⟨⟨10,[11,8]⟩,10⟩,⟨⟨10,[11,8]⟩,11⟩,⟨⟨10,[11,10]⟩,18⟩,⟨⟨10,[12,9]⟩,17⟩,⟨⟨10,[13,9]⟩,19⟩,⟨⟨11,[1,11,8]⟩,0⟩,⟨⟨11,[2,12,9]⟩,10⟩]
def getStB36 (i : Nat) : AState := tableBlock% i 36 [⟨⟨11,[2,12,9]⟩,11⟩,⟨⟨11,[3,11,10]⟩,0⟩,⟨⟨11,[4,13,9]⟩,18⟩,⟨⟨12,[1,11,8]⟩,2⟩,⟨⟨12,[2,12,9]⟩,3⟩,⟨⟨12,[3,11,10]⟩,4⟩,⟨⟨12,[4,13,9]⟩,5⟩,⟨⟨13,[1,11,8]⟩,6⟩,⟨⟨13,[1,11,8]⟩,7⟩,⟨⟨13,[2,12,9]⟩,2⟩,⟨⟨13,[2,12,9]⟩,4⟩,⟨⟨13,[3,11,10]⟩,8⟩]
def getStB48 (i : Nat) : AState := tableBlock% i 48 [⟨⟨13,[3,11,10]⟩,9⟩,⟨⟨13,[4,13,9]⟩,2⟩,⟨⟨13,[4,13,9]⟩,4⟩,⟨⟨14,[5,2,12,9]⟩,0⟩,⟨⟨14,[5,4,13,9]⟩,0⟩,⟨⟨14,[6,2,12,9]⟩,0⟩,⟨⟨14,[6,4,13,9]⟩,0⟩,⟨⟨14,[7,1,11,8]⟩,0⟩,⟨⟨14,[7,3,11,10]⟩,0⟩,⟨⟨15,[5,2,12,9]⟩,6⟩,⟨⟨15,[5,4,13,9]⟩,7⟩,⟨⟨15,[6,2,12,9]⟩,8⟩]
def getStB60 (i : Nat) : AState := tableBlock% i 60 [⟨⟨15,[6,4,13,9]⟩,9⟩,⟨⟨15,[7,1,11,8]⟩,10⟩,⟨⟨15,[7,3,11,10]⟩,11⟩,⟨⟨16,[5,2,12,9]⟩,10⟩,⟨⟨16,[5,2,12,9]⟩,11⟩,⟨⟨16,[5,4,13,9]⟩,10⟩,⟨⟨16,[5,4,13,9]⟩,11⟩,⟨⟨16,[6,2,12,9]⟩,10⟩,⟨⟨16,[6,2,12,9]⟩,11⟩,⟨⟨16,[6,4,13,9]⟩,10⟩,⟨⟨16,[6,4,13,9]⟩,11⟩,⟨⟨17,[5,2,12,9]⟩,12⟩]
def getStB72 (i : Nat) : AState := tableBlock% i 72 [⟨⟨17,[5,4,13,9]⟩,13⟩,⟨⟨17,[6,2,12,9]⟩,14⟩,⟨⟨17,[6,4,13,9]⟩,15⟩,⟨⟨18,[5,2,12,9]⟩,20⟩,⟨⟨18,[5,4,13,9]⟩,20⟩,⟨⟨18,[6,2,12,9]⟩,20⟩,⟨⟨18,[6,4,13,9]⟩,20⟩,⟨⟨19,[8]⟩,20⟩,⟨⟨19,[10]⟩,20⟩]
def getSt (i : Nat) : AState := if i < 81 then (if i < 36 then (if i < 12 then getStB0 i else (if i < 24 then getStB12 i else getStB24 i)) else (if i < 60 then (if i < 48 then getStB36 i else getStB48 i) else (if i < 72 then getStB60 i else getStB72 i))) else entry
def hintsB0 (i : Nat) : List Nat := tableBlock% i 0 [[1],[2],[3],[13],[9],[10],[11],[12],[14],[15,16],[15,16],[15,16]]
def hintsB12 (i : Nat) : List Nat := tableBlock% i 12 [[15,16],[17],[18],[19],[19],[20],[21],[22],[23],[24],[75,76,77,78],[8]]
def hintsB24 (i : Nat) : List Nat := tableBlock% i 24 [[27],[29,30],[32],[33],[31],[34],[34],[37],[35,36],[38],[39],[40]]
def hintsB36 (i : Nat) : List Nat := tableBlock% i 36 [[40],[41],[42],[45,49],[25],[46,50],[28],[55],[55],[51],[53],[56]]
def hintsB48 (i : Nat) : List Nat := tableBlock% i 48 [[56],[52],[54],[57],[58],[59],[60],[61],[62],[43],[44],[47]]
def hintsB60 (i : Nat) : List Nat := tableBlock% i 60 [[48],[63,65,67,69],[64,66,68,70],[71],[71],[72],[72],[73],[73],[74],[74],[4]]
def hintsB72 (i : Nat) : List Nat := tableBlock% i 72 [[5],[6],[7],[79],[80],[79],[80],[75,76,77,78],[26]]
def hints (i : Nat) : List Nat := if i < 81 then (if i < 36 then (if i < 12 then hintsB0 i else (if i < 24 then hintsB12 i else hintsB24 i)) else (if i < 60 then (if i < 48 then hintsB36 i else hintsB48 i) else (if i < 72 then hintsB60 i else hintsB72 i))) else []
def ck (i : Nat) := FloorIndex.check pCode values konts (RegProof.states 81 getSt) i (hints i)
end Blc.Floor45.Reg9692402706394
