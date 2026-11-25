import Blc.SelfintResidual45.TableNotation
import Blc.SelfintResidual45.RegProof

set_option Elab.async false
namespace Blc.Floor45.Reg9676609676998
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
def pCodeB0 (i : Nat) : Certgen.Code := tableBlock% i 0 [.app 1 23,.app 2 22,.app 3 9,.lam 4,.app 5 6,.var 0,.app 7 8,.var 0,.var 0,.lam 10,.lam 11,.app 12 20]
def pCodeB12 (i : Nat) : Certgen.Code := tableBlock% i 12 [.app 13 14,.var 1,.lam 15,.app 16 17,.var 2,.app 18 19,.var 0,.var 1,.lam 21,.var 1,.opaque,.lam 24]
def pCodeB24 (i : Nat) : Certgen.Code := tableBlock% i 24 [.app 25 30,.app 26 27,.var 0,.lam 28,.lam 29,.var 1,.lam 31,.app 32 37,.app 33 34,.var 0,.lam 35,.lam 36]
def pCodeB36 (i : Nat) : Certgen.Code := tableBlock% i 36 [.var 1,.lam 38,.app 39 44,.app 40 41,.var 0,.lam 42,.lam 43,.var 0,.lam 45,.app 46 51,.app 47 48,.var 0]
def pCodeB48 (i : Nat) : Certgen.Code := tableBlock% i 48 [.lam 49,.lam 50,.var 1,.opaque]
def pCode (i : Nat) : Certgen.Code := if i < 52 then (if i < 24 then (if i < 12 then pCodeB0 i else pCodeB12 i) else (if i < 36 then pCodeB24 i else (if i < 48 then pCodeB36 i else pCodeB48 i))) else .opaque
def lit47 : Term := .var 0
def lit50 : Term := .var 1
def lit16 : Term := .var 2
def lit42 : Term := .lam lit47
def lit49 : Term := .lam lit50
def lit6 : Term := .app lit47 lit47
def lit41 : Term := .lam lit42
def lit51 : Term := .var 4
def lit17 : Term := .app lit47 lit50
def lit48 : Term := .lam lit49
def lit4 : Term := .app lit47 lit6
def lit39 : Term := .app lit47 lit41
def lit46 : Term := .app lit47 lit48
def lit3 : Term := .lam lit4
def lit15 : Term := .app lit16 lit17
def lit14 : Term := .lam lit15
def lit45 : Term := .app lit46 lit51
def lit12 : Term := .app lit50 lit14
def lit44 : Term := .lam lit45
def lit11 : Term := .app lit12 lit49
def lit10 : Term := .lam lit11
def lit9 : Term := .lam lit10
def lit38 : Term := .app lit39 lit44
def lit37 : Term := .lam lit38
def lit2 : Term := .app lit3 lit9
def lit31 : Term := .app lit46 lit37
def lit1 : Term := .app lit2 lit50
def lit30 : Term := .lam lit31
def lit24 : Term := .app lit46 lit30
def lit23 : Term := .lam lit24
def lit0 : Term := .app lit1 lit23
def getTermB0 (i : Nat) : Term := tableBlock% i 0 [lit0,lit1,lit2,lit3,lit4,lit47,lit6,lit47,lit47,lit9,lit10,lit11]
def getTermB12 (i : Nat) : Term := tableBlock% i 12 [lit12,lit50,lit14,lit15,lit16,lit17,lit47,lit50,lit49,lit50,lit50,lit23]
def getTermB24 (i : Nat) : Term := tableBlock% i 24 [lit24,lit46,lit47,lit48,lit49,lit50,lit30,lit31,lit46,lit47,lit48,lit49]
def getTermB36 (i : Nat) : Term := tableBlock% i 36 [lit50,lit37,lit38,lit39,lit47,lit41,lit42,lit47,lit44,lit45,lit46,lit47]
def getTermB48 (i : Nat) : Term := tableBlock% i 48 [lit48,lit49,lit50,lit51]
def getTerm (i : Nat) : Term := if i < 52 then (if i < 24 then (if i < 12 then getTermB0 i else getTermB12 i) else (if i < 36 then getTermB24 i else (if i < 48 then getTermB36 i else getTermB48 i))) else .var 0
def align := RegProof.aligned getTerm pCode
theorem al0 : RegProof.Span align 0 10 := RegProof.block (n := 10) (by decide +kernel)
theorem al10 : RegProof.Span align 10 20 := RegProof.block (n := 10) (by decide +kernel)
theorem al20 : RegProof.Span align 20 30 := RegProof.block (n := 10) (by decide +kernel)
theorem al30 : RegProof.Span align 30 40 := RegProof.block (n := 10) (by decide +kernel)
theorem al40 : RegProof.Span align 40 50 := RegProof.block (n := 10) (by decide +kernel)
theorem al50 : RegProof.Span align 50 52 := RegProof.block (n := 2) (by decide +kernel)
theorem alAll : RegProof.Span align 0 52 := (RegProof.merge (RegProof.merge al0 (RegProof.merge al10 al20)) (RegProof.merge al30 (RegProof.merge al40 al50)))
def mdl : Model pCode := RegProof.alignedModel getTerm pCode (by
  intro i
  by_cases h : i < 52
  · exact alAll i (by omega) h
  · simp [RegProof.aligned,pCode,h])
def valuesB0 (i : Nat) : List AClo := tableBlock% i 0 [[⟨22,[]⟩],[⟨20,[2,13]⟩,⟨20,[3,14]⟩],[⟨20,[4,18]⟩],[⟨20,[6,18]⟩],[⟨14,[0,17]⟩],[⟨14,[1,15]⟩],[⟨17,[10,0,17]⟩],[⟨14,[2,13]⟩,⟨14,[3,14]⟩],[⟨17,[9,2,13]⟩,⟨17,[9,3,14]⟩],[⟨19,[7,4,18]⟩,⟨19,[7,6,18]⟩],[⟨19,[9,2,13]⟩,⟨19,[9,3,14]⟩],[⟨19,[10,0,17]⟩]]
def valuesB12 (i : Nat) : List AClo := tableBlock% i 12 [[⟨9,[]⟩],[⟨14,[4,18]⟩],[⟨14,[6,18]⟩],[⟨17,[7,4,18]⟩,⟨17,[7,6,18]⟩],[⟨17,[8,4,18]⟩,⟨17,[8,6,18]⟩],[⟨6,[12]⟩],[⟨8,[12]⟩]]
def values (i : Nat) : List AClo := if i < 19 then (if i < 12 then valuesB0 i else valuesB12 i) else []
def kontsB0 (i : Nat) : List Frame := tableBlock% i 0 [[],[⟨⟨23,[]⟩,0⟩],[⟨⟨22,[]⟩,1⟩],[⟨⟨20,[0,17]⟩,1⟩],[⟨⟨20,[1,15]⟩,3⟩,⟨⟨20,[1,15]⟩,26⟩,⟨⟨20,[1,15]⟩,27⟩],[⟨⟨20,[2,13]⟩,3⟩],[⟨⟨20,[3,14]⟩,26⟩,⟨⟨20,[3,14]⟩,27⟩],[⟨⟨20,[4,18]⟩,3⟩],[⟨⟨20,[5,16]⟩,4⟩],[⟨⟨20,[6,18]⟩,26⟩,⟨⟨20,[6,18]⟩,27⟩],[⟨⟨14,[0,17]⟩,3⟩],[⟨⟨14,[1,15]⟩,4⟩]]
def kontsB12 (i : Nat) : List Frame := tableBlock% i 12 [[⟨⟨14,[2,13]⟩,5⟩],[⟨⟨14,[3,14]⟩,6⟩],[⟨⟨14,[4,18]⟩,7⟩],[⟨⟨14,[5,16]⟩,8⟩],[⟨⟨14,[6,18]⟩,9⟩],[⟨⟨17,[7,4,18]⟩,5⟩],[⟨⟨17,[7,6,18]⟩,6⟩],[⟨⟨17,[8,4,18]⟩,11⟩],[⟨⟨17,[8,6,18]⟩,11⟩],[⟨⟨17,[9,2,13]⟩,11⟩],[⟨⟨17,[9,3,14]⟩,11⟩],[⟨⟨17,[10,0,17]⟩,26⟩,⟨⟨17,[10,0,17]⟩,27⟩]]
def kontsB24 (i : Nat) : List Frame := tableBlock% i 24 [[⟨⟨19,[7,4,18]⟩,11⟩],[⟨⟨19,[7,6,18]⟩,11⟩],[⟨⟨19,[8,4,18]⟩,15⟩],[⟨⟨19,[8,6,18]⟩,15⟩],[⟨⟨19,[9,2,13]⟩,26⟩,⟨⟨19,[9,2,13]⟩,27⟩],[⟨⟨19,[9,3,14]⟩,26⟩,⟨⟨19,[9,3,14]⟩,27⟩],[⟨⟨19,[10,0,17]⟩,28⟩,⟨⟨19,[10,0,17]⟩,29⟩],[⟨⟨9,[]⟩,2⟩],[⟨⟨6,[12]⟩,2⟩],[⟨⟨8,[12]⟩,10⟩],[⟨⟨8,[12]⟩,23⟩]]
def konts (i : Nat) : List Frame := if i < 35 then (if i < 12 then kontsB0 i else (if i < 24 then kontsB12 i else kontsB24 i)) else []
def getStB0 (i : Nat) : AState := tableBlock% i 0 [⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[]⟩,31⟩,⟨⟨4,[12]⟩,2⟩,⟨⟨5,[12]⟩,32⟩,⟨⟨6,[12]⟩,10⟩,⟨⟨6,[12]⟩,23⟩,⟨⟨7,[12]⟩,33⟩,⟨⟨7,[12]⟩,34⟩,⟨⟨8,[12]⟩,14⟩,⟨⟨8,[12]⟩,16⟩]
def getStB12 (i : Nat) : AState := tableBlock% i 12 [⟨⟨8,[12]⟩,17⟩,⟨⟨8,[12]⟩,18⟩,⟨⟨8,[12]⟩,19⟩,⟨⟨8,[12]⟩,20⟩,⟨⟨9,[]⟩,14⟩,⟨⟨9,[]⟩,16⟩,⟨⟨9,[]⟩,17⟩,⟨⟨9,[]⟩,18⟩,⟨⟨9,[]⟩,19⟩,⟨⟨9,[]⟩,20⟩,⟨⟨9,[]⟩,32⟩,⟨⟨9,[]⟩,33⟩]
def getStB24 (i : Nat) : AState := tableBlock% i 24 [⟨⟨9,[]⟩,34⟩,⟨⟨10,[13]⟩,7⟩,⟨⟨10,[14]⟩,9⟩,⟨⟨10,[15]⟩,5⟩,⟨⟨10,[15]⟩,6⟩,⟨⟨10,[16]⟩,11⟩,⟨⟨10,[17]⟩,2⟩,⟨⟨10,[18]⟩,10⟩,⟨⟨10,[18]⟩,23⟩,⟨⟨11,[0,17]⟩,1⟩,⟨⟨11,[1,15]⟩,3⟩,⟨⟨11,[1,15]⟩,26⟩]
def getStB36 (i : Nat) : AState := tableBlock% i 36 [⟨⟨11,[1,15]⟩,27⟩,⟨⟨11,[2,13]⟩,3⟩,⟨⟨11,[3,14]⟩,26⟩,⟨⟨11,[3,14]⟩,27⟩,⟨⟨11,[4,18]⟩,3⟩,⟨⟨11,[5,16]⟩,4⟩,⟨⟨11,[6,18]⟩,26⟩,⟨⟨11,[6,18]⟩,27⟩,⟨⟨12,[0,17]⟩,3⟩,⟨⟨12,[1,15]⟩,4⟩,⟨⟨12,[2,13]⟩,5⟩,⟨⟨12,[3,14]⟩,6⟩]
def getStB48 (i : Nat) : AState := tableBlock% i 48 [⟨⟨12,[4,18]⟩,7⟩,⟨⟨12,[5,16]⟩,8⟩,⟨⟨12,[6,18]⟩,9⟩,⟨⟨13,[0,17]⟩,10⟩,⟨⟨13,[1,15]⟩,11⟩,⟨⟨13,[2,13]⟩,12⟩,⟨⟨13,[3,14]⟩,13⟩,⟨⟨13,[4,18]⟩,14⟩,⟨⟨13,[5,16]⟩,15⟩,⟨⟨13,[6,18]⟩,16⟩,⟨⟨14,[0,17]⟩,28⟩,⟨⟨14,[0,17]⟩,29⟩]
def getStB60 (i : Nat) : AState := tableBlock% i 60 [⟨⟨14,[2,13]⟩,24⟩,⟨⟨14,[2,13]⟩,25⟩,⟨⟨14,[3,14]⟩,24⟩,⟨⟨14,[3,14]⟩,25⟩,⟨⟨14,[4,18]⟩,12⟩,⟨⟨14,[4,18]⟩,21⟩,⟨⟨14,[6,18]⟩,13⟩,⟨⟨14,[6,18]⟩,22⟩,⟨⟨15,[7,4,18]⟩,5⟩,⟨⟨15,[7,6,18]⟩,6⟩,⟨⟨15,[8,4,18]⟩,11⟩,⟨⟨15,[8,6,18]⟩,11⟩]
def getStB72 (i : Nat) : AState := tableBlock% i 72 [⟨⟨15,[9,2,13]⟩,11⟩,⟨⟨15,[9,3,14]⟩,11⟩,⟨⟨15,[10,0,17]⟩,26⟩,⟨⟨15,[10,0,17]⟩,27⟩,⟨⟨16,[7,4,18]⟩,17⟩,⟨⟨16,[7,6,18]⟩,18⟩,⟨⟨16,[8,4,18]⟩,19⟩,⟨⟨16,[8,6,18]⟩,20⟩,⟨⟨16,[9,2,13]⟩,21⟩,⟨⟨16,[9,3,14]⟩,22⟩,⟨⟨16,[10,0,17]⟩,23⟩,⟨⟨17,[7,4,18]⟩,11⟩]
def getStB84 (i : Nat) : AState := tableBlock% i 84 [⟨⟨17,[7,6,18]⟩,11⟩,⟨⟨17,[8,4,18]⟩,15⟩,⟨⟨17,[8,6,18]⟩,15⟩,⟨⟨17,[9,2,13]⟩,26⟩,⟨⟨17,[9,2,13]⟩,27⟩,⟨⟨17,[9,3,14]⟩,26⟩,⟨⟨17,[9,3,14]⟩,27⟩,⟨⟨17,[10,0,17]⟩,28⟩,⟨⟨17,[10,0,17]⟩,29⟩,⟨⟨18,[7,4,18]⟩,24⟩,⟨⟨18,[7,6,18]⟩,25⟩,⟨⟨18,[8,4,18]⟩,26⟩]
def getStB96 (i : Nat) : AState := tableBlock% i 96 [⟨⟨18,[8,6,18]⟩,27⟩,⟨⟨18,[9,2,13]⟩,28⟩,⟨⟨18,[9,3,14]⟩,29⟩,⟨⟨18,[10,0,17]⟩,30⟩,⟨⟨19,[7,4,18]⟩,28⟩,⟨⟨19,[7,4,18]⟩,29⟩,⟨⟨19,[7,6,18]⟩,28⟩,⟨⟨19,[7,6,18]⟩,29⟩,⟨⟨19,[9,2,13]⟩,30⟩,⟨⟨19,[9,3,14]⟩,30⟩,⟨⟨20,[4,18]⟩,30⟩,⟨⟨20,[6,18]⟩,30⟩]
def getStB108 (i : Nat) : AState := tableBlock% i 108 [⟨⟨21,[11,4,18]⟩,28⟩,⟨⟨21,[11,4,18]⟩,29⟩,⟨⟨21,[11,6,18]⟩,28⟩,⟨⟨21,[11,6,18]⟩,29⟩]
def getSt (i : Nat) : AState := if i < 112 then (if i < 60 then (if i < 24 then (if i < 12 then getStB0 i else getStB12 i) else (if i < 36 then getStB24 i else (if i < 48 then getStB36 i else getStB48 i))) else (if i < 84 then (if i < 72 then getStB60 i else getStB72 i) else (if i < 96 then getStB84 i else (if i < 108 then getStB96 i else getStB108 i)))) else entry
def hintsB0 (i : Nat) : List Nat := tableBlock% i 0 [[1],[2],[3],[4],[5],[22],[8],[9],[23],[24],[16],[17]]
def hintsB12 (i : Nat) : List Nat := tableBlock% i 12 [[18],[19],[20],[21],[25],[26],[27],[28],[29],[29],[30],[31]]
def hintsB24 (i : Nat) : List Nat := tableBlock% i 24 [[32],[37],[38,39],[34],[35,36],[41],[33],[40],[42,43],[44],[45],[45]]
def hintsB36 (i : Nat) : List Nat := tableBlock% i 36 [[45],[46],[47],[47],[48],[49],[50],[50],[51],[52],[53],[54]]
def hintsB48 (i : Nat) : List Nat := tableBlock% i 48 [[55],[56],[57],[6],[83,84],[64],[66],[10],[85,86],[11],[74,75],[74,75]]
def hintsB60 (i : Nat) : List Nat := tableBlock% i 60 [[72],[72],[73],[73],[68],[70],[69],[71],[76],[77],[78],[79]]
def hintsB72 (i : Nat) : List Nat := tableBlock% i 72 [[80],[81],[82],[82],[12],[13],[14],[15],[65],[67],[7],[93]]
def hintsB84 (i : Nat) : List Nat := tableBlock% i 84 [[94],[95],[96],[97],[97],[98],[98],[99],[99],[60,62],[61,63],[87,89]]
def hintsB96 (i : Nat) : List Nat := tableBlock% i 96 [[88,90],[100,102],[101,103],[104,105],[58],[59],[91],[92],[106],[107],[108,109],[110,111]]
def hintsB108 (i : Nat) : List Nat := tableBlock% i 108 [[58],[59],[91],[92]]
def hints (i : Nat) : List Nat := if i < 112 then (if i < 60 then (if i < 24 then (if i < 12 then hintsB0 i else hintsB12 i) else (if i < 36 then hintsB24 i else (if i < 48 then hintsB36 i else hintsB48 i))) else (if i < 84 then (if i < 72 then hintsB60 i else hintsB72 i) else (if i < 96 then hintsB84 i else (if i < 108 then hintsB96 i else hintsB108 i)))) else []
def ck (i : Nat) := FloorIndex.check pCode values konts (RegProof.states 112 getSt) i (hints i)
end Blc.Floor45.Reg9676609676998
