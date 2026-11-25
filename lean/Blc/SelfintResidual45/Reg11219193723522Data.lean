import Blc.SelfintResidual45.TableNotation
import Blc.SelfintResidual45.RegProof

set_option Elab.async false
namespace Blc.Floor45.Reg11219193723522
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
def pCodeB0 (i : Nat) : Certgen.Code := tableBlock% i 0 [.app 1 18,.app 2 6,.lam 3,.app 4 5,.var 0,.var 0,.lam 7,.app 8 17,.app 9 10,.var 0,.lam 11,.lam 12]
def pCodeB12 (i : Nat) : Certgen.Code := tableBlock% i 12 [.app 13 14,.var 1,.app 15 16,.var 2,.var 0,.var 0,.lam 19,.lam 20,.var 0]
def pCode (i : Nat) : Certgen.Code := if i < 21 then (if i < 12 then pCodeB0 i else pCodeB12 i) else .opaque
def lit20 : Term := .var 0
def lit13 : Term := .var 1
def lit15 : Term := .var 2
def lit19 : Term := .lam lit20
def lit3 : Term := .app lit20 lit20
def lit18 : Term := .lam lit19
def lit2 : Term := .lam lit3
def lit14 : Term := .app lit15 lit20
def lit12 : Term := .app lit13 lit14
def lit11 : Term := .lam lit12
def lit10 : Term := .lam lit11
def lit8 : Term := .app lit20 lit10
def lit7 : Term := .app lit8 lit20
def lit6 : Term := .lam lit7
def lit1 : Term := .app lit2 lit6
def lit0 : Term := .app lit1 lit18
def getTermB0 (i : Nat) : Term := tableBlock% i 0 [lit0,lit1,lit2,lit3,lit20,lit20,lit6,lit7,lit8,lit20,lit10,lit11]
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
def valuesB0 (i : Nat) : List AClo := tableBlock% i 0 [[⟨14,[5,1,10]⟩,⟨14,[7,2,10]⟩],[⟨10,[9]⟩],[⟨10,[11]⟩],[⟨14,[3,0,9]⟩,⟨14,[4,0,9]⟩],[⟨14,[6,0,11]⟩],[⟨17,[9]⟩],[⟨17,[10]⟩],[⟨17,[11]⟩],[⟨6,[]⟩],[⟨16,[5,1,10]⟩,⟨16,[7,2,10]⟩],[⟨5,[8]⟩],[⟨10,[10]⟩]]
def values (i : Nat) : List AClo := if i < 12 then valuesB0 i else []
def kontsB0 (i : Nat) : List Frame := tableBlock% i 0 [[],[⟨⟨18,[]⟩,0⟩],[⟨⟨6,[]⟩,1⟩],[⟨⟨14,[3,0,9]⟩,1⟩],[⟨⟨14,[4,0,9]⟩,1⟩],[⟨⟨14,[5,1,10]⟩,3⟩,⟨⟨14,[5,1,10]⟩,4⟩,⟨⟨14,[5,1,10]⟩,6⟩],[⟨⟨14,[6,0,11]⟩,1⟩],[⟨⟨14,[7,2,10]⟩,16⟩],[⟨⟨16,[5,1,10]⟩,3⟩],[⟨⟨16,[5,1,10]⟩,4⟩],[⟨⟨16,[5,1,10]⟩,6⟩],[⟨⟨16,[7,2,10]⟩,3⟩]]
def kontsB12 (i : Nat) : List Frame := tableBlock% i 12 [[⟨⟨16,[7,2,10]⟩,4⟩],[⟨⟨16,[7,2,10]⟩,6⟩],[⟨⟨5,[8]⟩,1⟩],[⟨⟨17,[9]⟩,3⟩,⟨⟨17,[9]⟩,4⟩,⟨⟨17,[9]⟩,6⟩],[⟨⟨17,[10]⟩,1⟩],[⟨⟨17,[11]⟩,16⟩],[⟨⟨10,[9]⟩,15⟩],[⟨⟨10,[10]⟩,16⟩],[⟨⟨10,[11]⟩,17⟩]]
def konts (i : Nat) : List Frame := if i < 21 then (if i < 12 then kontsB0 i else kontsB12 i) else []
def getStB0 (i : Nat) : AState := tableBlock% i 0 [⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[8]⟩,1⟩,⟨⟨4,[8]⟩,14⟩,⟨⟨5,[8]⟩,8⟩,⟨⟨5,[8]⟩,9⟩,⟨⟨5,[8]⟩,10⟩,⟨⟨5,[8]⟩,11⟩,⟨⟨5,[8]⟩,12⟩,⟨⟨5,[8]⟩,13⟩,⟨⟨5,[8]⟩,19⟩]
def getStB12 (i : Nat) : AState := tableBlock% i 12 [⟨⟨6,[]⟩,8⟩,⟨⟨6,[]⟩,9⟩,⟨⟨6,[]⟩,10⟩,⟨⟨6,[]⟩,11⟩,⟨⟨6,[]⟩,12⟩,⟨⟨6,[]⟩,13⟩,⟨⟨6,[]⟩,14⟩,⟨⟨6,[]⟩,19⟩,⟨⟨7,[9]⟩,3⟩,⟨⟨7,[9]⟩,4⟩,⟨⟨7,[9]⟩,6⟩,⟨⟨7,[10]⟩,1⟩]
def getStB24 (i : Nat) : AState := tableBlock% i 24 [⟨⟨7,[11]⟩,16⟩,⟨⟨8,[9]⟩,15⟩,⟨⟨8,[10]⟩,16⟩,⟨⟨8,[11]⟩,17⟩,⟨⟨9,[9]⟩,18⟩,⟨⟨9,[10]⟩,19⟩,⟨⟨9,[11]⟩,20⟩,⟨⟨10,[9]⟩,5⟩,⟨⟨10,[10]⟩,18⟩,⟨⟨10,[10]⟩,20⟩,⟨⟨10,[11]⟩,7⟩,⟨⟨11,[0,9]⟩,3⟩]
def getStB36 (i : Nat) : AState := tableBlock% i 36 [⟨⟨11,[0,9]⟩,4⟩,⟨⟨11,[0,9]⟩,6⟩,⟨⟨11,[0,11]⟩,16⟩,⟨⟨11,[1,10]⟩,15⟩,⟨⟨11,[2,10]⟩,17⟩,⟨⟨12,[3,0,9]⟩,1⟩,⟨⟨12,[4,0,9]⟩,1⟩,⟨⟨12,[5,1,10]⟩,3⟩,⟨⟨12,[5,1,10]⟩,4⟩,⟨⟨12,[5,1,10]⟩,6⟩,⟨⟨12,[6,0,11]⟩,1⟩,⟨⟨12,[7,2,10]⟩,16⟩]
def getStB48 (i : Nat) : AState := tableBlock% i 48 [⟨⟨13,[3,0,9]⟩,3⟩,⟨⟨13,[4,0,9]⟩,4⟩,⟨⟨13,[5,1,10]⟩,5⟩,⟨⟨13,[6,0,11]⟩,6⟩,⟨⟨13,[7,2,10]⟩,7⟩,⟨⟨14,[5,1,10]⟩,3⟩,⟨⟨14,[5,1,10]⟩,4⟩,⟨⟨14,[5,1,10]⟩,6⟩,⟨⟨14,[7,2,10]⟩,3⟩,⟨⟨14,[7,2,10]⟩,4⟩,⟨⟨14,[7,2,10]⟩,6⟩,⟨⟨15,[5,1,10]⟩,8⟩]
def getStB60 (i : Nat) : AState := tableBlock% i 60 [⟨⟨15,[5,1,10]⟩,9⟩,⟨⟨15,[5,1,10]⟩,10⟩,⟨⟨15,[7,2,10]⟩,11⟩,⟨⟨15,[7,2,10]⟩,12⟩,⟨⟨15,[7,2,10]⟩,13⟩,⟨⟨16,[5,1,10]⟩,18⟩,⟨⟨16,[7,2,10]⟩,18⟩,⟨⟨17,[9]⟩,18⟩,⟨⟨17,[11]⟩,18⟩]
def getSt (i : Nat) : AState := if i < 69 then (if i < 36 then (if i < 12 then getStB0 i else (if i < 24 then getStB12 i else getStB24 i)) else (if i < 48 then getStB36 i else (if i < 60 then getStB48 i else getStB60 i))) else entry
def hintsB0 (i : Nat) : List Nat := tableBlock% i 0 [[1],[2],[3],[4],[18],[12],[13],[14],[15],[16],[17],[19]]
def hintsB12 (i : Nat) : List Nat := tableBlock% i 12 [[20],[21],[22],[20],[21],[22],[23],[24],[25],[25],[25],[26]]
def hintsB24 (i : Nat) : List Nat := tableBlock% i 24 [[27],[28],[29],[30],[65,66],[11],[33],[35,36,37],[39],[40],[38],[41]]
def hintsB36 (i : Nat) : List Nat := tableBlock% i 36 [[41],[42],[46],[43,44,45],[47],[48],[49],[50],[50],[50],[51],[52]]
def hintsB48 (i : Nat) : List Nat := tableBlock% i 48 [[53,56],[54,57],[31],[55,58],[34],[59],[60],[61],[62],[63],[64],[5]]
def hintsB60 (i : Nat) : List Nat := tableBlock% i 60 [[6],[7],[8],[9],[10],[67],[68],[65,66],[32]]
def hints (i : Nat) : List Nat := if i < 69 then (if i < 36 then (if i < 12 then hintsB0 i else (if i < 24 then hintsB12 i else hintsB24 i)) else (if i < 48 then hintsB36 i else (if i < 60 then hintsB48 i else hintsB60 i))) else []
def ck (i : Nat) := FloorIndex.check pCode values konts (RegProof.states 69 getSt) i (hints i)
end Blc.Floor45.Reg11219193723522
