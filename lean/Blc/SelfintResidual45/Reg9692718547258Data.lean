import Blc.SelfintResidual45.TableNotation
import Blc.SelfintResidual45.RegProof

set_option Elab.async false
namespace Blc.Floor45.Reg9692718547258
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
def pCodeB0 (i : Nat) : Certgen.Code := tableBlock% i 0 [.app 1 5,.lam 2,.app 3 4,.var 0,.var 0,.lam 6,.app 7 8,.var 0,.lam 9,.app 10 11,.var 0,.lam 12]
def pCodeB12 (i : Nat) : Certgen.Code := tableBlock% i 12 [.app 13 18,.app 14 15,.var 2,.lam 16,.lam 17,.var 0,.app 19 20,.var 1,.var 0]
def pCode (i : Nat) : Certgen.Code := if i < 21 then (if i < 12 then pCodeB0 i else pCodeB12 i) else .opaque
def lit20 : Term := .var 0
def lit19 : Term := .var 1
def lit14 : Term := .var 2
def lit16 : Term := .lam lit20
def lit2 : Term := .app lit20 lit20
def lit15 : Term := .lam lit16
def lit18 : Term := .app lit19 lit20
def lit1 : Term := .lam lit2
def lit13 : Term := .app lit14 lit15
def lit12 : Term := .app lit13 lit18
def lit11 : Term := .lam lit12
def lit9 : Term := .app lit20 lit11
def lit8 : Term := .lam lit9
def lit6 : Term := .app lit20 lit8
def lit5 : Term := .lam lit6
def lit0 : Term := .app lit1 lit5
def getTermB0 (i : Nat) : Term := tableBlock% i 0 [lit0,lit1,lit2,lit20,lit20,lit5,lit6,lit20,lit8,lit9,lit20,lit11]
def getTermB12 (i : Nat) : Term := tableBlock% i 12 [lit12,lit13,lit14,lit15,lit16,lit20,lit18,lit19,lit20]
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
def valuesB0 (i : Nat) : List AClo := tableBlock% i 0 [[⟨5,[]⟩],[⟨20,[1,10,8]⟩,⟨20,[1,12,8]⟩,⟨20,[2,10,8]⟩,⟨20,[2,12,8]⟩],[⟨11,[10,8]⟩,⟨11,[12,8]⟩],[⟨8,[6]⟩],[⟨11,[9,7]⟩],[⟨18,[1,10,8]⟩,⟨18,[1,11,7]⟩,⟨18,[1,12,8]⟩,⟨18,[2,10,8]⟩,⟨18,[2,11,7]⟩,⟨18,[2,12,8]⟩],[⟨15,[1,11,7]⟩,⟨15,[2,11,7]⟩],[⟨4,[0]⟩],[⟨8,[7]⟩],[⟨15,[1,10,8]⟩,⟨15,[1,12,8]⟩,⟨15,[2,10,8]⟩,⟨15,[2,12,8]⟩],[⟨20,[1,11,7]⟩,⟨20,[2,11,7]⟩],[⟨8,[8]⟩]]
def valuesB12 (i : Nat) : List AClo := [⟨11,[11,7]⟩]
def values (i : Nat) : List AClo := if i < 13 then (if i < 12 then valuesB0 i else valuesB12 i) else []
def kontsB0 (i : Nat) : List Frame := tableBlock% i 0 [[],[⟨⟨5,[]⟩,0⟩],[⟨⟨18,[1,10,8]⟩,0⟩],[⟨⟨18,[1,11,7]⟩,0⟩],[⟨⟨18,[1,12,8]⟩,0⟩],[⟨⟨18,[2,10,8]⟩,0⟩],[⟨⟨18,[2,11,7]⟩,0⟩],[⟨⟨18,[2,12,8]⟩,0⟩],[⟨⟨15,[1,10,8]⟩,2⟩],[⟨⟨15,[1,11,7]⟩,3⟩],[⟨⟨15,[1,12,8]⟩,4⟩],[⟨⟨15,[2,10,8]⟩,5⟩]]
def kontsB12 (i : Nat) : List Frame := tableBlock% i 12 [[⟨⟨15,[2,11,7]⟩,6⟩],[⟨⟨15,[2,12,8]⟩,7⟩],[⟨⟨20,[1,10,8]⟩,0⟩],[⟨⟨20,[1,11,7]⟩,0⟩],[⟨⟨20,[1,12,8]⟩,0⟩],[⟨⟨20,[2,10,8]⟩,0⟩],[⟨⟨20,[2,11,7]⟩,0⟩],[⟨⟨20,[2,12,8]⟩,0⟩],[⟨⟨4,[0]⟩,0⟩],[⟨⟨8,[6]⟩,3⟩,⟨⟨8,[6]⟩,6⟩],[⟨⟨8,[7]⟩,0⟩],[⟨⟨8,[8]⟩,0⟩]]
def kontsB24 (i : Nat) : List Frame := tableBlock% i 24 [[⟨⟨11,[9,7]⟩,2⟩,⟨⟨11,[9,7]⟩,4⟩,⟨⟨11,[9,7]⟩,5⟩,⟨⟨11,[9,7]⟩,7⟩],[⟨⟨11,[10,8]⟩,0⟩],[⟨⟨11,[11,7]⟩,0⟩],[⟨⟨11,[12,8]⟩,0⟩]]
def konts (i : Nat) : List Frame := if i < 28 then (if i < 12 then kontsB0 i else (if i < 24 then kontsB12 i else kontsB24 i)) else []
def getStB0 (i : Nat) : AState := tableBlock% i 0 [⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[0]⟩,0⟩,⟨⟨3,[0]⟩,20⟩,⟨⟨4,[0]⟩,9⟩,⟨⟨4,[0]⟩,12⟩,⟨⟨4,[0]⟩,22⟩,⟨⟨5,[]⟩,9⟩,⟨⟨5,[]⟩,12⟩,⟨⟨5,[]⟩,20⟩,⟨⟨5,[]⟩,22⟩,⟨⟨6,[6]⟩,3⟩]
def getStB12 (i : Nat) : AState := tableBlock% i 12 [⟨⟨6,[6]⟩,6⟩,⟨⟨6,[7]⟩,0⟩,⟨⟨6,[8]⟩,0⟩,⟨⟨7,[6]⟩,21⟩,⟨⟨7,[7]⟩,22⟩,⟨⟨7,[8]⟩,23⟩,⟨⟨8,[7]⟩,8⟩,⟨⟨8,[7]⟩,10⟩,⟨⟨8,[7]⟩,11⟩,⟨⟨8,[7]⟩,13⟩,⟨⟨8,[7]⟩,23⟩,⟨⟨8,[8]⟩,15⟩]
def getStB24 (i : Nat) : AState := tableBlock% i 24 [⟨⟨8,[8]⟩,18⟩,⟨⟨8,[8]⟩,26⟩,⟨⟨9,[9,7]⟩,2⟩,⟨⟨9,[9,7]⟩,4⟩,⟨⟨9,[9,7]⟩,5⟩,⟨⟨9,[9,7]⟩,7⟩,⟨⟨9,[10,8]⟩,0⟩,⟨⟨9,[11,7]⟩,0⟩,⟨⟨9,[12,8]⟩,0⟩,⟨⟨10,[9,7]⟩,24⟩,⟨⟨10,[10,8]⟩,25⟩,⟨⟨10,[11,7]⟩,26⟩]
def getStB36 (i : Nat) : AState := tableBlock% i 36 [⟨⟨10,[12,8]⟩,27⟩,⟨⟨11,[10,8]⟩,14⟩,⟨⟨11,[10,8]⟩,17⟩,⟨⟨11,[10,8]⟩,25⟩,⟨⟨11,[11,7]⟩,16⟩,⟨⟨11,[11,7]⟩,19⟩,⟨⟨11,[11,7]⟩,27⟩,⟨⟨11,[12,8]⟩,14⟩,⟨⟨11,[12,8]⟩,17⟩,⟨⟨11,[12,8]⟩,25⟩,⟨⟨12,[1,10,8]⟩,0⟩,⟨⟨12,[1,11,7]⟩,0⟩]
def getStB48 (i : Nat) : AState := tableBlock% i 48 [⟨⟨12,[1,12,8]⟩,0⟩,⟨⟨12,[2,10,8]⟩,0⟩,⟨⟨12,[2,11,7]⟩,0⟩,⟨⟨12,[2,12,8]⟩,0⟩,⟨⟨13,[1,10,8]⟩,2⟩,⟨⟨13,[1,11,7]⟩,3⟩,⟨⟨13,[1,12,8]⟩,4⟩,⟨⟨13,[2,10,8]⟩,5⟩,⟨⟨13,[2,11,7]⟩,6⟩,⟨⟨13,[2,12,8]⟩,7⟩,⟨⟨14,[1,10,8]⟩,8⟩,⟨⟨14,[1,11,7]⟩,9⟩]
def getStB60 (i : Nat) : AState := tableBlock% i 60 [⟨⟨14,[1,12,8]⟩,10⟩,⟨⟨14,[2,10,8]⟩,11⟩,⟨⟨14,[2,11,7]⟩,12⟩,⟨⟨14,[2,12,8]⟩,13⟩,⟨⟨15,[1,10,8]⟩,24⟩,⟨⟨15,[1,11,7]⟩,21⟩,⟨⟨15,[1,12,8]⟩,24⟩,⟨⟨15,[2,10,8]⟩,24⟩,⟨⟨15,[2,11,7]⟩,21⟩,⟨⟨15,[2,12,8]⟩,24⟩,⟨⟨16,[3,1,11,7]⟩,3⟩,⟨⟨16,[3,1,11,7]⟩,6⟩]
def getStB72 (i : Nat) : AState := tableBlock% i 72 [⟨⟨16,[3,2,11,7]⟩,3⟩,⟨⟨16,[3,2,11,7]⟩,6⟩,⟨⟨16,[4,1,10,8]⟩,2⟩,⟨⟨16,[4,1,10,8]⟩,4⟩,⟨⟨16,[4,1,10,8]⟩,5⟩,⟨⟨16,[4,1,10,8]⟩,7⟩,⟨⟨16,[4,1,12,8]⟩,2⟩,⟨⟨16,[4,1,12,8]⟩,4⟩,⟨⟨16,[4,1,12,8]⟩,5⟩,⟨⟨16,[4,1,12,8]⟩,7⟩,⟨⟨16,[4,2,10,8]⟩,2⟩,⟨⟨16,[4,2,10,8]⟩,4⟩]
def getStB84 (i : Nat) : AState := tableBlock% i 84 [⟨⟨16,[4,2,10,8]⟩,5⟩,⟨⟨16,[4,2,10,8]⟩,7⟩,⟨⟨16,[4,2,12,8]⟩,2⟩,⟨⟨16,[4,2,12,8]⟩,4⟩,⟨⟨16,[4,2,12,8]⟩,5⟩,⟨⟨16,[4,2,12,8]⟩,7⟩,⟨⟨17,[5,3,1,11,7]⟩,0⟩,⟨⟨17,[5,3,2,11,7]⟩,0⟩,⟨⟨17,[5,4,1,10,8]⟩,0⟩,⟨⟨17,[5,4,1,12,8]⟩,0⟩,⟨⟨17,[5,4,2,10,8]⟩,0⟩,⟨⟨17,[5,4,2,12,8]⟩,0⟩]
def getStB96 (i : Nat) : AState := tableBlock% i 96 [⟨⟨18,[1,10,8]⟩,0⟩,⟨⟨18,[1,11,7]⟩,0⟩,⟨⟨18,[1,12,8]⟩,0⟩,⟨⟨18,[2,10,8]⟩,0⟩,⟨⟨18,[2,11,7]⟩,0⟩,⟨⟨18,[2,12,8]⟩,0⟩,⟨⟨19,[1,10,8]⟩,14⟩,⟨⟨19,[1,11,7]⟩,15⟩,⟨⟨19,[1,12,8]⟩,16⟩,⟨⟨19,[2,10,8]⟩,17⟩,⟨⟨19,[2,11,7]⟩,18⟩,⟨⟨19,[2,12,8]⟩,19⟩]
def getStB108 (i : Nat) : AState := tableBlock% i 108 [⟨⟨20,[1,10,8]⟩,14⟩,⟨⟨20,[1,10,8]⟩,17⟩,⟨⟨20,[1,10,8]⟩,25⟩,⟨⟨20,[1,11,7]⟩,14⟩,⟨⟨20,[1,11,7]⟩,17⟩,⟨⟨20,[1,11,7]⟩,25⟩,⟨⟨20,[1,12,8]⟩,14⟩,⟨⟨20,[1,12,8]⟩,17⟩,⟨⟨20,[1,12,8]⟩,25⟩,⟨⟨20,[2,10,8]⟩,14⟩,⟨⟨20,[2,10,8]⟩,17⟩,⟨⟨20,[2,10,8]⟩,25⟩]
def getStB120 (i : Nat) : AState := tableBlock% i 120 [⟨⟨20,[2,11,7]⟩,14⟩,⟨⟨20,[2,11,7]⟩,17⟩,⟨⟨20,[2,11,7]⟩,25⟩,⟨⟨20,[2,12,8]⟩,14⟩,⟨⟨20,[2,12,8]⟩,17⟩,⟨⟨20,[2,12,8]⟩,25⟩]
def getSt (i : Nat) : AState := if i < 126 then (if i < 60 then (if i < 24 then (if i < 12 then getStB0 i else getStB12 i) else (if i < 36 then getStB24 i else (if i < 48 then getStB36 i else getStB48 i))) else (if i < 96 then (if i < 72 then getStB60 i else (if i < 84 then getStB72 i else getStB84 i)) else (if i < 108 then getStB96 i else (if i < 120 then getStB108 i else getStB120 i)))) else entry
def hintsB0 (i : Nat) : List Nat := tableBlock% i 0 [[1],[2],[3],[9],[7],[8],[10],[11],[12],[13],[14],[15]]
def hintsB12 (i : Nat) : List Nat := tableBlock% i 12 [[15],[16],[17],[65,68],[6],[22],[26],[27],[28],[29],[31],[30]]
def hintsB24 (i : Nat) : List Nat := tableBlock% i 24 [[30],[32],[33],[33],[33],[33],[34],[35],[36],[64,66,67,69],[113,122],[25]]
def hintsB36 (i : Nat) : List Nat := tableBlock% i 36 [[42],[46],[46],[49],[47],[47],[50],[48],[48],[51],[52],[53]]
def hintsB48 (i : Nat) : List Nat := tableBlock% i 48 [[54],[55],[56],[57],[58],[59],[60],[61],[62],[63],[18],[4]]
def hintsB60 (i : Nat) : List Nat := tableBlock% i 60 [[19],[20],[5],[21],[74,75,76,77],[70,71],[78,79,80,81],[82,83,84,85],[72,73],[86,87,88,89],[90],[90]]
def hintsB72 (i : Nat) : List Nat := tableBlock% i 72 [[91],[91],[92],[92],[92],[92],[93],[93],[93],[93],[94],[94]]
def hintsB84 (i : Nat) : List Nat := tableBlock% i 84 [[94],[94],[95],[95],[95],[95],[96,97,98,99,100,101],[96,97,98,99,100,101],[96,97,98,99,100,101],[96,97,98,99,100,101],[96,97,98,99,100,101],[96,97,98,99,100,101]]
def hintsB96 (i : Nat) : List Nat := tableBlock% i 96 [[102],[103],[104],[105],[106],[107],[111,120],[23],[40],[112,121],[24],[41]]
def hintsB108 (i : Nat) : List Nat := tableBlock% i 108 [[108,114,117,123],[109,115,118,124],[110,116,119,125],[108,114,117,123],[109,115,118,124],[110,116,119,125],[108,114,117,123],[109,115,118,124],[110,116,119,125],[37,43],[38,44],[39,45]]
def hintsB120 (i : Nat) : List Nat := tableBlock% i 120 [[37,43],[38,44],[39,45],[37,43],[38,44],[39,45]]
def hints (i : Nat) : List Nat := if i < 126 then (if i < 60 then (if i < 24 then (if i < 12 then hintsB0 i else hintsB12 i) else (if i < 36 then hintsB24 i else (if i < 48 then hintsB36 i else hintsB48 i))) else (if i < 96 then (if i < 72 then hintsB60 i else (if i < 84 then hintsB72 i else hintsB84 i)) else (if i < 108 then hintsB96 i else (if i < 120 then hintsB108 i else hintsB120 i)))) else []
def ck (i : Nat) := FloorIndex.check pCode values konts (RegProof.states 126 getSt) i (hints i)
end Blc.Floor45.Reg9692718547258
