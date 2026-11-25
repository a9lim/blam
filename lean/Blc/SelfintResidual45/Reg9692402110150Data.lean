import Blc.SelfintResidual45.TableNotation
import Blc.SelfintResidual45.RegProof

set_option Elab.async false
namespace Blc.Floor45.Reg9692402110150
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
def pCodeB0 (i : Nat) : Certgen.Code := tableBlock% i 0 [.app 1 5,.lam 2,.app 3 4,.var 0,.var 0,.lam 6,.app 7 18,.app 8 9,.var 0,.lam 10,.lam 11,.app 12 15]
def pCodeB12 (i : Nat) : Certgen.Code := tableBlock% i 12 [.app 13 14,.var 2,.var 0,.app 16 17,.var 1,.var 1,.lam 19,.var 1]
def pCode (i : Nat) : Certgen.Code := if i < 20 then (if i < 12 then pCodeB0 i else pCodeB12 i) else .opaque
def lit14 : Term := .var 0
def lit19 : Term := .var 1
def lit13 : Term := .var 2
def lit18 : Term := .lam lit19
def lit2 : Term := .app lit14 lit14
def lit1 : Term := .lam lit2
def lit12 : Term := .app lit13 lit14
def lit15 : Term := .app lit19 lit19
def lit11 : Term := .app lit12 lit15
def lit10 : Term := .lam lit11
def lit9 : Term := .lam lit10
def lit7 : Term := .app lit14 lit9
def lit6 : Term := .app lit7 lit18
def lit5 : Term := .lam lit6
def lit0 : Term := .app lit1 lit5
def getTermB0 (i : Nat) : Term := tableBlock% i 0 [lit0,lit1,lit2,lit14,lit14,lit5,lit6,lit7,lit14,lit9,lit10,lit11]
def getTermB12 (i : Nat) : Term := tableBlock% i 12 [lit12,lit13,lit14,lit15,lit19,lit19,lit18,lit19]
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
def valuesB0 (i : Nat) : List AClo := tableBlock% i 0 [[⟨5,[]⟩],[⟨15,[3,14,8]⟩],[⟨15,[4,11,9]⟩,⟨15,[4,12,9]⟩],[⟨18,[9]⟩],[⟨9,[6]⟩],[⟨9,[7]⟩],[⟨14,[1,13,8]⟩,⟨14,[2,10,8]⟩],[⟨14,[3,14,8]⟩],[⟨4,[0]⟩],[⟨9,[8]⟩],[⟨14,[4,11,9]⟩,⟨14,[4,12,9]⟩],[⟨17,[3,14,8]⟩]]
def valuesB12 (i : Nat) : List AClo := tableBlock% i 12 [[⟨17,[4,11,9]⟩,⟨17,[4,12,9]⟩],[⟨18,[7]⟩],[⟨9,[9]⟩]]
def values (i : Nat) : List AClo := if i < 15 then (if i < 12 then valuesB0 i else valuesB12 i) else []
def kontsB0 (i : Nat) : List Frame := tableBlock% i 0 [[],[⟨⟨5,[]⟩,0⟩],[⟨⟨15,[1,13,8]⟩,18⟩],[⟨⟨15,[2,10,8]⟩,16⟩],[⟨⟨15,[3,14,8]⟩,18⟩],[⟨⟨15,[4,11,9]⟩,16⟩],[⟨⟨15,[4,12,9]⟩,16⟩],[⟨⟨14,[1,13,8]⟩,2⟩],[⟨⟨14,[2,10,8]⟩,3⟩],[⟨⟨14,[3,14,8]⟩,4⟩],[⟨⟨14,[4,11,9]⟩,5⟩],[⟨⟨14,[4,12,9]⟩,6⟩]]
def kontsB12 (i : Nat) : List Frame := tableBlock% i 12 [[⟨⟨17,[3,14,8]⟩,20⟩],[⟨⟨17,[4,11,9]⟩,20⟩],[⟨⟨17,[4,12,9]⟩,20⟩],[⟨⟨4,[0]⟩,0⟩],[⟨⟨18,[6]⟩,2⟩,⟨⟨18,[6]⟩,3⟩],[⟨⟨18,[7]⟩,4⟩],[⟨⟨18,[8]⟩,0⟩],[⟨⟨18,[9]⟩,18⟩],[⟨⟨9,[6]⟩,16⟩],[⟨⟨9,[7]⟩,17⟩],[⟨⟨9,[8]⟩,18⟩],[⟨⟨9,[9]⟩,19⟩]]
def konts (i : Nat) : List Frame := if i < 24 then (if i < 12 then kontsB0 i else kontsB12 i) else []
def getStB0 (i : Nat) : AState := tableBlock% i 0 [⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[0]⟩,0⟩,⟨⟨3,[0]⟩,15⟩,⟨⟨4,[0]⟩,7⟩,⟨⟨4,[0]⟩,8⟩,⟨⟨4,[0]⟩,9⟩,⟨⟨4,[0]⟩,22⟩,⟨⟨5,[]⟩,7⟩,⟨⟨5,[]⟩,8⟩,⟨⟨5,[]⟩,9⟩,⟨⟨5,[]⟩,15⟩]
def getStB12 (i : Nat) : AState := tableBlock% i 12 [⟨⟨5,[]⟩,22⟩,⟨⟨6,[6]⟩,2⟩,⟨⟨6,[6]⟩,3⟩,⟨⟨6,[7]⟩,4⟩,⟨⟨6,[8]⟩,0⟩,⟨⟨6,[9]⟩,18⟩,⟨⟨7,[6]⟩,16⟩,⟨⟨7,[7]⟩,17⟩,⟨⟨7,[8]⟩,18⟩,⟨⟨7,[9]⟩,19⟩,⟨⟨8,[6]⟩,20⟩,⟨⟨8,[7]⟩,21⟩]
def getStB24 (i : Nat) : AState := tableBlock% i 24 [⟨⟨8,[8]⟩,22⟩,⟨⟨8,[9]⟩,23⟩,⟨⟨9,[8]⟩,10⟩,⟨⟨9,[8]⟩,11⟩,⟨⟨9,[8]⟩,17⟩,⟨⟨9,[8]⟩,23⟩,⟨⟨9,[9]⟩,12⟩,⟨⟨9,[9]⟩,13⟩,⟨⟨9,[9]⟩,14⟩,⟨⟨10,[10,8]⟩,5⟩,⟨⟨10,[10,8]⟩,6⟩,⟨⟨10,[11,9]⟩,20⟩]
def getStB36 (i : Nat) : AState := tableBlock% i 36 [⟨⟨10,[12,9]⟩,20⟩,⟨⟨10,[13,8]⟩,4⟩,⟨⟨10,[14,8]⟩,19⟩,⟨⟨11,[1,13,8]⟩,18⟩,⟨⟨11,[2,10,8]⟩,16⟩,⟨⟨11,[3,14,8]⟩,18⟩,⟨⟨11,[4,11,9]⟩,16⟩,⟨⟨11,[4,12,9]⟩,16⟩,⟨⟨12,[1,13,8]⟩,2⟩,⟨⟨12,[2,10,8]⟩,3⟩,⟨⟨12,[3,14,8]⟩,4⟩,⟨⟨12,[4,11,9]⟩,5⟩]
def getStB48 (i : Nat) : AState := tableBlock% i 48 [⟨⟨12,[4,12,9]⟩,6⟩,⟨⟨13,[1,13,8]⟩,7⟩,⟨⟨13,[2,10,8]⟩,8⟩,⟨⟨13,[3,14,8]⟩,9⟩,⟨⟨13,[4,11,9]⟩,10⟩,⟨⟨13,[4,12,9]⟩,11⟩,⟨⟨14,[1,13,8]⟩,20⟩,⟨⟨14,[2,10,8]⟩,20⟩,⟨⟨14,[3,14,8]⟩,21⟩,⟨⟨15,[3,14,8]⟩,20⟩,⟨⟨15,[4,11,9]⟩,20⟩,⟨⟨15,[4,12,9]⟩,20⟩]
def getStB60 (i : Nat) : AState := tableBlock% i 60 [⟨⟨16,[3,14,8]⟩,12⟩,⟨⟨16,[4,11,9]⟩,13⟩,⟨⟨16,[4,12,9]⟩,14⟩,⟨⟨17,[3,14,8]⟩,13⟩,⟨⟨17,[3,14,8]⟩,14⟩,⟨⟨17,[4,11,9]⟩,14⟩,⟨⟨17,[4,12,9]⟩,14⟩,⟨⟨18,[9]⟩,21⟩,⟨⟨19,[5,9]⟩,17⟩]
def getSt (i : Nat) : AState := if i < 69 then (if i < 36 then (if i < 12 then getStB0 i else (if i < 24 then getStB12 i else getStB24 i)) else (if i < 48 then getStB36 i else (if i < 60 then getStB48 i else getStB60 i))) else entry
def hintsB0 (i : Nat) : List Nat := tableBlock% i 0 [[1],[2],[3],[11],[8],[9],[10],[12],[13],[14],[15],[16]]
def hintsB12 (i : Nat) : List Nat := tableBlock% i 12 [[17],[18],[18],[19],[20],[21],[22],[23],[24],[25],[54,55],[56]]
def hintsB24 (i : Nat) : List Nat := tableBlock% i 24 [[7],[29],[33],[34],[37],[38],[35],[36],[36],[40],[40],[42]]
def hintsB36 (i : Nat) : List Nat := tableBlock% i 36 [[43],[39],[41],[44],[45],[46],[47],[48],[49],[50],[51],[52]]
def hintsB48 (i : Nat) : List Nat := tableBlock% i 48 [[53],[4],[5],[6],[26],[27],[57],[58,59],[67],[60],[61],[62]]
def hintsB60 (i : Nat) : List Nat := tableBlock% i 60 [[30],[63],[65,66],[31],[32],[64],[65,66],[68],[28]]
def hints (i : Nat) : List Nat := if i < 69 then (if i < 36 then (if i < 12 then hintsB0 i else (if i < 24 then hintsB12 i else hintsB24 i)) else (if i < 48 then hintsB36 i else (if i < 60 then hintsB48 i else hintsB60 i))) else []
def ck (i : Nat) := FloorIndex.check pCode values konts (RegProof.states 69 getSt) i (hints i)
end Blc.Floor45.Reg9692402110150
