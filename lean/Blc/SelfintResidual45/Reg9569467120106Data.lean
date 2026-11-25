import Blc.SelfintResidual45.TableNotation
import Blc.SelfintResidual45.RegProof

set_option Elab.async false
namespace Blc.Floor45.Reg9569467120106
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
def pCodeB0 (i : Nat) : Certgen.Code := tableBlock% i 0 [.app 1 9,.lam 2,.app 3 6,.app 4 5,.var 0,.var 0,.lam 7,.lam 8,.var 0,.lam 10,.app 11 20,.app 12 13]
def pCodeB12 (i : Nat) : Certgen.Code := tableBlock% i 12 [.var 0,.lam 14,.lam 15,.app 16 17,.var 1,.app 18 19,.var 2,.var 0,.var 0]
def pCode (i : Nat) : Certgen.Code := if i < 21 then (if i < 12 then pCodeB0 i else pCodeB12 i) else .opaque
def lit20 : Term := .var 0
def lit16 : Term := .var 1
def lit7 : Term := .lam lit20
def lit18 : Term := .var 2
def lit3 : Term := .app lit20 lit20
def lit6 : Term := .lam lit7
def lit17 : Term := .app lit18 lit20
def lit15 : Term := .app lit16 lit17
def lit2 : Term := .app lit3 lit6
def lit14 : Term := .lam lit15
def lit1 : Term := .lam lit2
def lit13 : Term := .lam lit14
def lit11 : Term := .app lit20 lit13
def lit10 : Term := .app lit11 lit20
def lit9 : Term := .lam lit10
def lit0 : Term := .app lit1 lit9
def getTermB0 (i : Nat) : Term := tableBlock% i 0 [lit0,lit1,lit2,lit3,lit20,lit20,lit6,lit7,lit20,lit9,lit10,lit11]
def getTermB12 (i : Nat) : Term := tableBlock% i 12 [lit20,lit13,lit14,lit15,lit16,lit17,lit18,lit20,lit20]
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
def valuesB0 (i : Nat) : List AClo := tableBlock% i 0 [[⟨9,[]⟩],[⟨13,[9]⟩],[⟨13,[10]⟩],[⟨17,[4,1,11]⟩,⟨17,[5,2,11]⟩],[⟨20,[9]⟩],[⟨20,[10]⟩],[⟨20,[11]⟩],[⟨17,[6,3,9]⟩],[⟨17,[7,3,10]⟩,⟨17,[8,3,10]⟩],[⟨13,[11]⟩],[⟨19,[4,1,11]⟩,⟨19,[5,2,11]⟩],[⟨5,[0]⟩]]
def values (i : Nat) : List AClo := if i < 12 then valuesB0 i else []
def kontsB0 (i : Nat) : List Frame := tableBlock% i 0 [[],[⟨⟨9,[]⟩,0⟩],[⟨⟨20,[9]⟩,4⟩],[⟨⟨20,[10]⟩,10⟩,⟨⟨20,[10]⟩,11⟩,⟨⟨20,[10]⟩,12⟩],[⟨⟨20,[11]⟩,19⟩],[⟨⟨13,[9]⟩,2⟩],[⟨⟨13,[10]⟩,3⟩],[⟨⟨13,[11]⟩,4⟩],[⟨⟨17,[4,1,11]⟩,4⟩],[⟨⟨17,[5,2,11]⟩,10⟩,⟨⟨17,[5,2,11]⟩,11⟩,⟨⟨17,[5,2,11]⟩,12⟩],[⟨⟨17,[6,3,9]⟩,19⟩],[⟨⟨17,[7,3,10]⟩,19⟩]]
def kontsB12 (i : Nat) : List Frame := tableBlock% i 12 [[⟨⟨17,[8,3,10]⟩,19⟩],[⟨⟨19,[4,1,11]⟩,10⟩],[⟨⟨19,[4,1,11]⟩,11⟩],[⟨⟨19,[4,1,11]⟩,12⟩],[⟨⟨19,[5,2,11]⟩,10⟩],[⟨⟨19,[5,2,11]⟩,11⟩],[⟨⟨19,[5,2,11]⟩,12⟩],[⟨⟨6,[0]⟩,0⟩],[⟨⟨5,[0]⟩,19⟩]]
def konts (i : Nat) : List Frame := if i < 21 then (if i < 12 then kontsB0 i else kontsB12 i) else []
def getStB0 (i : Nat) : AState := tableBlock% i 0 [⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[0]⟩,0⟩,⟨⟨3,[0]⟩,19⟩,⟨⟨4,[0]⟩,20⟩,⟨⟨5,[0]⟩,7⟩,⟨⟨5,[0]⟩,13⟩,⟨⟨5,[0]⟩,14⟩,⟨⟨5,[0]⟩,15⟩,⟨⟨5,[0]⟩,16⟩,⟨⟨5,[0]⟩,17⟩,⟨⟨5,[0]⟩,18⟩]
def getStB12 (i : Nat) : AState := tableBlock% i 12 [⟨⟨9,[]⟩,7⟩,⟨⟨9,[]⟩,13⟩,⟨⟨9,[]⟩,14⟩,⟨⟨9,[]⟩,15⟩,⟨⟨9,[]⟩,16⟩,⟨⟨9,[]⟩,17⟩,⟨⟨9,[]⟩,18⟩,⟨⟨9,[]⟩,20⟩,⟨⟨10,[9]⟩,4⟩,⟨⟨10,[10]⟩,10⟩,⟨⟨10,[10]⟩,11⟩,⟨⟨10,[10]⟩,12⟩]
def getStB24 (i : Nat) : AState := tableBlock% i 24 [⟨⟨10,[11]⟩,19⟩,⟨⟨11,[9]⟩,2⟩,⟨⟨11,[10]⟩,3⟩,⟨⟨11,[11]⟩,4⟩,⟨⟨12,[9]⟩,5⟩,⟨⟨12,[10]⟩,6⟩,⟨⟨12,[11]⟩,7⟩,⟨⟨13,[9]⟩,8⟩,⟨⟨13,[10]⟩,9⟩,⟨⟨13,[11]⟩,5⟩,⟨⟨13,[11]⟩,6⟩,⟨⟨14,[1,11]⟩,2⟩]
def getStB36 (i : Nat) : AState := tableBlock% i 36 [⟨⟨14,[2,11]⟩,3⟩,⟨⟨14,[3,9]⟩,4⟩,⟨⟨14,[3,10]⟩,10⟩,⟨⟨14,[3,10]⟩,11⟩,⟨⟨14,[3,10]⟩,12⟩,⟨⟨15,[4,1,11]⟩,4⟩,⟨⟨15,[5,2,11]⟩,10⟩,⟨⟨15,[5,2,11]⟩,11⟩,⟨⟨15,[5,2,11]⟩,12⟩,⟨⟨15,[6,3,9]⟩,19⟩,⟨⟨15,[7,3,10]⟩,19⟩,⟨⟨15,[8,3,10]⟩,19⟩]
def getStB48 (i : Nat) : AState := tableBlock% i 48 [⟨⟨16,[4,1,11]⟩,8⟩,⟨⟨16,[5,2,11]⟩,9⟩,⟨⟨16,[6,3,9]⟩,10⟩,⟨⟨16,[7,3,10]⟩,11⟩,⟨⟨16,[8,3,10]⟩,12⟩,⟨⟨17,[4,1,11]⟩,10⟩,⟨⟨17,[4,1,11]⟩,11⟩,⟨⟨17,[4,1,11]⟩,12⟩,⟨⟨17,[5,2,11]⟩,10⟩,⟨⟨17,[5,2,11]⟩,11⟩,⟨⟨17,[5,2,11]⟩,12⟩,⟨⟨18,[4,1,11]⟩,13⟩]
def getStB60 (i : Nat) : AState := tableBlock% i 60 [⟨⟨18,[4,1,11]⟩,14⟩,⟨⟨18,[4,1,11]⟩,15⟩,⟨⟨18,[5,2,11]⟩,16⟩,⟨⟨18,[5,2,11]⟩,17⟩,⟨⟨18,[5,2,11]⟩,18⟩,⟨⟨19,[4,1,11]⟩,6⟩,⟨⟨19,[5,2,11]⟩,6⟩,⟨⟨20,[9]⟩,6⟩,⟨⟨20,[10]⟩,6⟩]
def getSt (i : Nat) : AState := if i < 69 then (if i < 36 then (if i < 12 then getStB0 i else (if i < 24 then getStB12 i else getStB24 i)) else (if i < 48 then getStB36 i else (if i < 60 then getStB48 i else getStB60 i))) else entry
def hintsB0 (i : Nat) : List Nat := tableBlock% i 0 [[1],[2],[3],[4],[19],[12],[13],[14],[15],[16],[17],[18]]
def hintsB12 (i : Nat) : List Nat := tableBlock% i 12 [[20],[21],[22],[23],[21],[22],[23],[24],[25],[26],[26],[26]]
def hintsB24 (i : Nat) : List Nat := tableBlock% i 24 [[27],[28],[29],[30],[33],[65,66],[5],[37],[38,39,40],[35],[36],[41]]
def hintsB36 (i : Nat) : List Nat := tableBlock% i 36 [[42,43,44],[45],[46],[47],[47],[48],[49],[49],[49],[50],[51],[52]]
def hintsB48 (i : Nat) : List Nat := tableBlock% i 48 [[31],[32],[53,56],[54,57],[55,58],[59],[60],[61],[62],[63],[64],[6]]
def hintsB60 (i : Nat) : List Nat := tableBlock% i 60 [[7],[8],[9],[10],[11],[67],[68],[34],[65,66]]
def hints (i : Nat) : List Nat := if i < 69 then (if i < 36 then (if i < 12 then hintsB0 i else (if i < 24 then hintsB12 i else hintsB24 i)) else (if i < 48 then hintsB36 i else (if i < 60 then hintsB48 i else hintsB60 i))) else []
def ck (i : Nat) := FloorIndex.check pCode values konts (RegProof.states 69 getSt) i (hints i)
end Blc.Floor45.Reg9569467120106
