import Blc.SelfintResidual45.TableNotation
import Blc.SelfintResidual45.RegProof

set_option Elab.async false
namespace Blc.Floor45.Reg9692402039274
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
def pCodeB0 (i : Nat) : Certgen.Code := tableBlock% i 0 [.app 1 5,.lam 2,.app 3 4,.var 0,.var 0,.lam 6,.app 7 19,.app 8 9,.var 0,.lam 10,.lam 11,.app 12 16]
def pCodeB12 (i : Nat) : Certgen.Code := tableBlock% i 12 [.app 13 14,.var 1,.lam 15,.var 2,.app 17 18,.var 2,.var 0,.var 0]
def pCode (i : Nat) : Certgen.Code := if i < 20 then (if i < 12 then pCodeB0 i else pCodeB12 i) else .opaque
def lit19 : Term := .var 0
def lit13 : Term := .var 1
def lit17 : Term := .var 2
def lit2 : Term := .app lit19 lit19
def lit14 : Term := .lam lit17
def lit1 : Term := .lam lit2
def lit16 : Term := .app lit17 lit19
def lit12 : Term := .app lit13 lit14
def lit11 : Term := .app lit12 lit16
def lit10 : Term := .lam lit11
def lit9 : Term := .lam lit10
def lit7 : Term := .app lit19 lit9
def lit6 : Term := .app lit7 lit19
def lit5 : Term := .lam lit6
def lit0 : Term := .app lit1 lit5
def getTermB0 (i : Nat) : Term := tableBlock% i 0 [lit0,lit1,lit2,lit19,lit19,lit5,lit6,lit7,lit19,lit9,lit10,lit11]
def getTermB12 (i : Nat) : Term := tableBlock% i 12 [lit12,lit13,lit14,lit17,lit16,lit17,lit19,lit19]
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
def valuesB0 (i : Nat) : List AClo := tableBlock% i 0 [[⟨5,[]⟩],[⟨16,[4,14,9]⟩,⟨16,[6,15,9]⟩],[⟨14,[2,11,8]⟩,⟨14,[2,11,10]⟩,⟨14,[2,13,9]⟩,⟨14,[3,13,9]⟩],[⟨14,[5,11,8]⟩,⟨14,[5,11,10]⟩],[⟨19,[8]⟩],[⟨19,[9]⟩],[⟨19,[10]⟩],[⟨14,[1,12,8]⟩,⟨14,[1,12,10]⟩],[⟨18,[4,14,9]⟩,⟨18,[6,15,9]⟩],[⟨4,[0]⟩],[⟨9,[9]⟩],[⟨16,[1,12,8]⟩,⟨16,[1,12,10]⟩]]
def valuesB12 (i : Nat) : List AClo := tableBlock% i 12 [[⟨14,[4,14,9]⟩,⟨14,[6,15,9]⟩],[⟨18,[1,12,8]⟩,⟨18,[1,12,10]⟩],[⟨9,[8]⟩],[⟨9,[10]⟩]]
def values (i : Nat) : List AClo := if i < 16 then (if i < 12 then valuesB0 i else valuesB12 i) else []
def kontsB0 (i : Nat) : List Frame := tableBlock% i 0 [[],[⟨⟨5,[]⟩,0⟩],[⟨⟨16,[1,12,8]⟩,16⟩,⟨⟨16,[1,12,8]⟩,17⟩],[⟨⟨16,[1,12,10]⟩,32⟩],[⟨⟨16,[2,11,8]⟩,6⟩,⟨⟨16,[2,11,8]⟩,7⟩],[⟨⟨16,[2,11,10]⟩,6⟩,⟨⟨16,[2,11,10]⟩,7⟩],[⟨⟨16,[2,13,9]⟩,4⟩,⟨⟨16,[2,13,9]⟩,5⟩],[⟨⟨16,[3,13,9]⟩,9⟩,⟨⟨16,[3,13,9]⟩,10⟩],[⟨⟨16,[4,14,9]⟩,16⟩,⟨⟨16,[4,14,9]⟩,17⟩],[⟨⟨16,[5,11,8]⟩,0⟩],[⟨⟨16,[5,11,10]⟩,0⟩],[⟨⟨16,[6,15,9]⟩,32⟩]]
def kontsB12 (i : Nat) : List Frame := tableBlock% i 12 [[⟨⟨14,[1,12,8]⟩,2⟩],[⟨⟨14,[1,12,10]⟩,3⟩],[⟨⟨14,[2,11,8]⟩,4⟩],[⟨⟨14,[2,11,10]⟩,5⟩],[⟨⟨14,[2,13,9]⟩,6⟩],[⟨⟨14,[3,13,9]⟩,7⟩],[⟨⟨14,[4,14,9]⟩,8⟩],[⟨⟨14,[5,11,8]⟩,9⟩],[⟨⟨14,[5,11,10]⟩,10⟩],[⟨⟨14,[6,15,9]⟩,11⟩],[⟨⟨18,[1,12,8]⟩,14⟩,⟨⟨18,[1,12,8]⟩,15⟩],[⟨⟨18,[1,12,8]⟩,19⟩,⟨⟨18,[1,12,8]⟩,20⟩]]
def kontsB24 (i : Nat) : List Frame := tableBlock% i 24 [[⟨⟨18,[1,12,10]⟩,14⟩,⟨⟨18,[1,12,10]⟩,15⟩],[⟨⟨18,[1,12,10]⟩,19⟩,⟨⟨18,[1,12,10]⟩,20⟩],[⟨⟨18,[4,14,9]⟩,16⟩],[⟨⟨18,[4,14,9]⟩,17⟩],[⟨⟨18,[6,15,9]⟩,16⟩],[⟨⟨18,[6,15,9]⟩,17⟩],[⟨⟨4,[0]⟩,0⟩],[⟨⟨19,[8]⟩,16⟩,⟨⟨19,[8]⟩,17⟩],[⟨⟨19,[9]⟩,0⟩],[⟨⟨19,[10]⟩,32⟩],[⟨⟨9,[8]⟩,31⟩],[⟨⟨9,[9]⟩,32⟩]]
def kontsB36 (i : Nat) : List Frame := [⟨⟨9,[10]⟩,33⟩]
def konts (i : Nat) : List Frame := if i < 37 then (if i < 24 then (if i < 12 then kontsB0 i else kontsB12 i) else (if i < 36 then kontsB24 i else kontsB36 i)) else []
def getStB0 (i : Nat) : AState := tableBlock% i 0 [⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[0]⟩,0⟩,⟨⟨3,[0]⟩,30⟩,⟨⟨4,[0]⟩,26⟩,⟨⟨4,[0]⟩,27⟩,⟨⟨4,[0]⟩,28⟩,⟨⟨4,[0]⟩,29⟩,⟨⟨4,[0]⟩,35⟩,⟨⟨5,[]⟩,26⟩,⟨⟨5,[]⟩,27⟩,⟨⟨5,[]⟩,28⟩]
def getStB12 (i : Nat) : AState := tableBlock% i 12 [⟨⟨5,[]⟩,29⟩,⟨⟨5,[]⟩,30⟩,⟨⟨5,[]⟩,35⟩,⟨⟨6,[8]⟩,16⟩,⟨⟨6,[8]⟩,17⟩,⟨⟨6,[9]⟩,0⟩,⟨⟨6,[10]⟩,32⟩,⟨⟨7,[8]⟩,31⟩,⟨⟨7,[9]⟩,32⟩,⟨⟨7,[10]⟩,33⟩,⟨⟨8,[8]⟩,34⟩,⟨⟨8,[9]⟩,35⟩]
def getStB24 (i : Nat) : AState := tableBlock% i 24 [⟨⟨8,[10]⟩,36⟩,⟨⟨9,[8]⟩,2⟩,⟨⟨9,[8]⟩,3⟩,⟨⟨9,[8]⟩,18⟩,⟨⟨9,[9]⟩,22⟩,⟨⟨9,[9]⟩,23⟩,⟨⟨9,[9]⟩,24⟩,⟨⟨9,[9]⟩,25⟩,⟨⟨9,[9]⟩,34⟩,⟨⟨9,[9]⟩,36⟩,⟨⟨9,[10]⟩,2⟩,⟨⟨9,[10]⟩,3⟩]
def getStB36 (i : Nat) : AState := tableBlock% i 36 [⟨⟨9,[10]⟩,21⟩,⟨⟨10,[11,8]⟩,16⟩,⟨⟨10,[11,8]⟩,17⟩,⟨⟨10,[11,8]⟩,32⟩,⟨⟨10,[11,10]⟩,16⟩,⟨⟨10,[11,10]⟩,17⟩,⟨⟨10,[11,10]⟩,32⟩,⟨⟨10,[12,8]⟩,8⟩,⟨⟨10,[12,10]⟩,11⟩,⟨⟨10,[13,9]⟩,14⟩,⟨⟨10,[13,9]⟩,15⟩,⟨⟨10,[13,9]⟩,19⟩]
def getStB48 (i : Nat) : AState := tableBlock% i 48 [⟨⟨10,[13,9]⟩,20⟩,⟨⟨10,[14,9]⟩,31⟩,⟨⟨10,[15,9]⟩,33⟩,⟨⟨11,[1,12,8]⟩,16⟩,⟨⟨11,[1,12,8]⟩,17⟩,⟨⟨11,[1,12,10]⟩,32⟩,⟨⟨11,[2,11,8]⟩,6⟩,⟨⟨11,[2,11,8]⟩,7⟩,⟨⟨11,[2,11,10]⟩,6⟩,⟨⟨11,[2,11,10]⟩,7⟩,⟨⟨11,[2,13,9]⟩,4⟩,⟨⟨11,[2,13,9]⟩,5⟩]
def getStB60 (i : Nat) : AState := tableBlock% i 60 [⟨⟨11,[3,13,9]⟩,9⟩,⟨⟨11,[3,13,9]⟩,10⟩,⟨⟨11,[4,14,9]⟩,16⟩,⟨⟨11,[4,14,9]⟩,17⟩,⟨⟨11,[5,11,8]⟩,0⟩,⟨⟨11,[5,11,10]⟩,0⟩,⟨⟨11,[6,15,9]⟩,32⟩,⟨⟨12,[1,12,8]⟩,2⟩,⟨⟨12,[1,12,10]⟩,3⟩,⟨⟨12,[2,11,8]⟩,4⟩,⟨⟨12,[2,11,10]⟩,5⟩,⟨⟨12,[2,13,9]⟩,6⟩]
def getStB72 (i : Nat) : AState := tableBlock% i 72 [⟨⟨12,[3,13,9]⟩,7⟩,⟨⟨12,[4,14,9]⟩,8⟩,⟨⟨12,[5,11,8]⟩,9⟩,⟨⟨12,[5,11,10]⟩,10⟩,⟨⟨12,[6,15,9]⟩,11⟩,⟨⟨13,[1,12,8]⟩,12⟩,⟨⟨13,[1,12,10]⟩,13⟩,⟨⟨13,[2,11,8]⟩,14⟩,⟨⟨13,[2,11,10]⟩,15⟩,⟨⟨13,[2,13,9]⟩,16⟩,⟨⟨13,[3,13,9]⟩,17⟩,⟨⟨13,[4,14,9]⟩,18⟩]
def getStB84 (i : Nat) : AState := tableBlock% i 84 [⟨⟨13,[5,11,8]⟩,19⟩,⟨⟨13,[5,11,10]⟩,20⟩,⟨⟨13,[6,15,9]⟩,21⟩,⟨⟨14,[4,14,9]⟩,12⟩,⟨⟨14,[4,14,9]⟩,13⟩,⟨⟨14,[6,15,9]⟩,12⟩,⟨⟨14,[6,15,9]⟩,13⟩,⟨⟨15,[7,4,14,9]⟩,2⟩,⟨⟨15,[7,4,14,9]⟩,3⟩,⟨⟨15,[7,6,15,9]⟩,2⟩,⟨⟨15,[7,6,15,9]⟩,3⟩,⟨⟨16,[1,12,8]⟩,14⟩]
def getStB96 (i : Nat) : AState := tableBlock% i 96 [⟨⟨16,[1,12,8]⟩,15⟩,⟨⟨16,[1,12,8]⟩,19⟩,⟨⟨16,[1,12,8]⟩,20⟩,⟨⟨16,[1,12,10]⟩,14⟩,⟨⟨16,[1,12,10]⟩,15⟩,⟨⟨16,[1,12,10]⟩,19⟩,⟨⟨16,[1,12,10]⟩,20⟩,⟨⟨16,[4,14,9]⟩,16⟩,⟨⟨16,[4,14,9]⟩,17⟩,⟨⟨16,[6,15,9]⟩,16⟩,⟨⟨16,[6,15,9]⟩,17⟩,⟨⟨17,[1,12,8]⟩,22⟩]
def getStB108 (i : Nat) : AState := tableBlock% i 108 [⟨⟨17,[1,12,8]⟩,23⟩,⟨⟨17,[1,12,10]⟩,24⟩,⟨⟨17,[1,12,10]⟩,25⟩,⟨⟨17,[4,14,9]⟩,26⟩,⟨⟨17,[4,14,9]⟩,27⟩,⟨⟨17,[6,15,9]⟩,28⟩,⟨⟨17,[6,15,9]⟩,29⟩,⟨⟨18,[1,12,8]⟩,16⟩,⟨⟨18,[1,12,8]⟩,17⟩,⟨⟨18,[1,12,10]⟩,16⟩,⟨⟨18,[1,12,10]⟩,17⟩,⟨⟨18,[4,14,9]⟩,22⟩]
def getStB120 (i : Nat) : AState := tableBlock% i 120 [⟨⟨18,[4,14,9]⟩,23⟩,⟨⟨18,[4,14,9]⟩,34⟩,⟨⟨18,[6,15,9]⟩,22⟩,⟨⟨18,[6,15,9]⟩,23⟩,⟨⟨18,[6,15,9]⟩,34⟩,⟨⟨19,[8]⟩,22⟩,⟨⟨19,[8]⟩,23⟩,⟨⟨19,[8]⟩,34⟩,⟨⟨19,[10]⟩,22⟩,⟨⟨19,[10]⟩,23⟩,⟨⟨19,[10]⟩,34⟩]
def getSt (i : Nat) : AState := if i < 131 then (if i < 60 then (if i < 24 then (if i < 12 then getStB0 i else getStB12 i) else (if i < 36 then getStB24 i else (if i < 48 then getStB36 i else getStB48 i))) else (if i < 96 then (if i < 72 then getStB60 i else (if i < 84 then getStB72 i else getStB84 i)) else (if i < 108 then getStB96 i else (if i < 120 then getStB108 i else getStB120 i)))) else entry
def hintsB0 (i : Nat) : List Nat := tableBlock% i 0 [[1],[2],[3],[13],[9],[10],[11],[12],[14],[15],[16],[15]]
def hintsB12 (i : Nat) : List Nat := tableBlock% i 12 [[16],[17],[18],[19],[19],[20],[21],[22],[23],[24],[121,124],[8]]
def hintsB24 (i : Nat) : List Nat := tableBlock% i 24 [[33],[37,38],[39],[43],[45,46],[47,48],[45,46],[47,48],[49],[50],[40,41],[42]]
def hintsB36 (i : Nat) : List Nat := tableBlock% i 36 [[44],[54],[55],[64],[56],[57],[65],[51,52],[53],[58],[59],[60]]
def hintsB48 (i : Nat) : List Nat := tableBlock% i 48 [[61],[62,63],[66],[67],[67],[68],[69],[69],[70],[70],[71],[71]]
def hintsB60 (i : Nat) : List Nat := tableBlock% i 60 [[72],[72],[73],[73],[74],[75],[76],[77],[78],[79],[80],[81]]
def hintsB72 (i : Nat) : List Nat := tableBlock% i 72 [[82],[83],[84],[85],[86],[87,89],[88,90],[95,99],[96,100],[115,117],[116,118],[27]]
def hintsB84 (i : Nat) : List Nat := tableBlock% i 84 [[97,101],[98,102],[36],[91],[92],[93],[94],[25],[26],[34],[35],[107]]
def hintsB96 (i : Nat) : List Nat := tableBlock% i 96 [[107],[108],[108],[109],[109],[110],[110],[111],[112],[113],[114],[119,122]]
def hintsB108 (i : Nat) : List Nat := tableBlock% i 108 [[120,123],[30],[31],[4],[5],[6],[7],[103,105],[104,106],[103,105],[104,106],[125]]
def hintsB120 (i : Nat) : List Nat := tableBlock% i 120 [[126],[127],[128],[129],[130],[119,122],[120,123],[121,124],[28],[29],[32]]
def hints (i : Nat) : List Nat := if i < 131 then (if i < 60 then (if i < 24 then (if i < 12 then hintsB0 i else hintsB12 i) else (if i < 36 then hintsB24 i else (if i < 48 then hintsB36 i else hintsB48 i))) else (if i < 96 then (if i < 72 then hintsB60 i else (if i < 84 then hintsB72 i else hintsB84 i)) else (if i < 108 then hintsB96 i else (if i < 120 then hintsB108 i else hintsB120 i)))) else []
def ck (i : Nat) := FloorIndex.check pCode values konts (RegProof.states 131 getSt) i (hints i)
end Blc.Floor45.Reg9692402039274
