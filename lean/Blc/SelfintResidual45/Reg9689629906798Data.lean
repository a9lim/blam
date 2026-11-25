import Blc.SelfintResidual45.TableNotation
import Blc.SelfintResidual45.RegProof

set_option Elab.async false
namespace Blc.Floor45.Reg9689629906798
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
def pCodeB0 (i : Nat) : Certgen.Code := tableBlock% i 0 [.app 1 22,.app 2 21,.app 3 7,.lam 4,.app 5 6,.var 0,.var 0,.lam 8,.lam 9,.lam 10,.app 11 20,.app 12 19]
def pCodeB12 (i : Nat) : Certgen.Code := tableBlock% i 12 [.app 13 14,.var 2,.app 15 18,.app 16 17,.var 0,.var 0,.var 2,.var 1,.var 2,.opaque,.lam 23,.app 24 29]
def pCodeB24 (i : Nat) : Certgen.Code := tableBlock% i 24 [.app 25 26,.var 0,.lam 27,.lam 28,.var 1,.lam 30,.app 31 36,.app 32 33,.var 0,.lam 34,.lam 35,.var 1]
def pCodeB36 (i : Nat) : Certgen.Code := tableBlock% i 36 [.lam 37,.app 38 43,.app 39 40,.var 0,.lam 41,.lam 42,.var 0,.lam 44,.app 45 50,.app 46 47,.var 0,.lam 48]
def pCodeB48 (i : Nat) : Certgen.Code := tableBlock% i 48 [.lam 49,.var 1,.opaque]
def pCode (i : Nat) : Certgen.Code := if i < 51 then (if i < 24 then (if i < 12 then pCodeB0 i else pCodeB12 i) else (if i < 36 then pCodeB24 i else (if i < 48 then pCodeB36 i else pCodeB48 i))) else .opaque
def lit46 : Term := .var 0
def lit49 : Term := .var 1
def lit20 : Term := .var 2
def lit41 : Term := .lam lit46
def lit48 : Term := .lam lit49
def lit15 : Term := .app lit46 lit46
def lit40 : Term := .lam lit41
def lit50 : Term := .var 4
def lit47 : Term := .lam lit48
def lit3 : Term := .lam lit15
def lit38 : Term := .app lit46 lit40
def lit45 : Term := .app lit46 lit47
def lit14 : Term := .app lit15 lit20
def lit12 : Term := .app lit20 lit14
def lit44 : Term := .app lit45 lit50
def lit43 : Term := .lam lit44
def lit11 : Term := .app lit12 lit49
def lit10 : Term := .app lit11 lit20
def lit9 : Term := .lam lit10
def lit8 : Term := .lam lit9
def lit37 : Term := .app lit38 lit43
def lit7 : Term := .lam lit8
def lit36 : Term := .lam lit37
def lit2 : Term := .app lit3 lit7
def lit30 : Term := .app lit45 lit36
def lit1 : Term := .app lit2 lit49
def lit29 : Term := .lam lit30
def lit23 : Term := .app lit45 lit29
def lit22 : Term := .lam lit23
def lit0 : Term := .app lit1 lit22
def getTermB0 (i : Nat) : Term := tableBlock% i 0 [lit0,lit1,lit2,lit3,lit15,lit46,lit46,lit7,lit8,lit9,lit10,lit11]
def getTermB12 (i : Nat) : Term := tableBlock% i 12 [lit12,lit20,lit14,lit15,lit46,lit46,lit20,lit49,lit20,lit49,lit22,lit23]
def getTermB24 (i : Nat) : Term := tableBlock% i 24 [lit45,lit46,lit47,lit48,lit49,lit29,lit30,lit45,lit46,lit47,lit48,lit49]
def getTermB36 (i : Nat) : Term := tableBlock% i 36 [lit36,lit37,lit38,lit46,lit40,lit41,lit46,lit43,lit44,lit45,lit46,lit47]
def getTermB48 (i : Nat) : Term := tableBlock% i 48 [lit48,lit49,lit50]
def getTerm (i : Nat) : Term := if i < 51 then (if i < 24 then (if i < 12 then getTermB0 i else getTermB12 i) else (if i < 36 then getTermB24 i else (if i < 48 then getTermB36 i else getTermB48 i))) else .var 0
def align := RegProof.aligned getTerm pCode
theorem al0 : RegProof.Span align 0 10 := RegProof.block (n := 10) (by decide +kernel)
theorem al10 : RegProof.Span align 10 20 := RegProof.block (n := 10) (by decide +kernel)
theorem al20 : RegProof.Span align 20 30 := RegProof.block (n := 10) (by decide +kernel)
theorem al30 : RegProof.Span align 30 40 := RegProof.block (n := 10) (by decide +kernel)
theorem al40 : RegProof.Span align 40 50 := RegProof.block (n := 10) (by decide +kernel)
theorem al50 : RegProof.Span align 50 51 := RegProof.block (n := 1) (by decide +kernel)
theorem alAll : RegProof.Span align 0 51 := (RegProof.merge (RegProof.merge al0 (RegProof.merge al10 al20)) (RegProof.merge al30 (RegProof.merge al40 al50)))
def mdl : Model pCode := RegProof.alignedModel getTerm pCode (by
  intro i
  by_cases h : i < 51
  · exact alAll i (by omega) h
  · simp [RegProof.aligned,pCode,h])
def valuesB0 (i : Nat) : List AClo := tableBlock% i 0 [[⟨17,[22,19,18]⟩],[⟨26,[0]⟩],[⟨29,[0]⟩],[⟨26,[1]⟩],[⟨18,[22,19,18]⟩],[⟨29,[1]⟩],[⟨14,[23,20,13]⟩],[⟨7,[]⟩],[⟨14,[23,20,14]⟩,⟨14,[23,20,15]⟩],[⟨17,[24,21,17]⟩,⟨17,[25,21,16]⟩],[⟨17,[25,21,16]⟩],[⟨19,[23,20,14]⟩,⟨19,[23,20,15]⟩]]
def valuesB12 (i : Nat) : List AClo := tableBlock% i 12 [[⟨18,[24,21,17]⟩,⟨18,[25,21,16]⟩],[⟨14,[22,19,18]⟩],[⟨14,[24,21,17]⟩],[⟨14,[25,21,16]⟩],[⟨17,[23,20,13]⟩],[⟨17,[23,20,14]⟩,⟨17,[23,20,15]⟩],[⟨6,[7]⟩],[⟨21,[]⟩],[⟨19,[22,19,18]⟩,⟨19,[24,21,17]⟩,⟨19,[25,21,16]⟩],[⟨18,[23,20,13]⟩,⟨18,[23,20,14]⟩,⟨18,[23,20,15]⟩],[⟨22,[]⟩],[⟨20,[22,19,18]⟩,⟨20,[24,21,17]⟩,⟨20,[25,21,16]⟩]]
def valuesB24 (i : Nat) : List AClo := tableBlock% i 24 [[⟨20,[23,20,14]⟩,⟨20,[23,20,15]⟩],[⟨33,[6,0]⟩]]
def values (i : Nat) : List AClo := if i < 26 then (if i < 12 then valuesB0 i else (if i < 24 then valuesB12 i else valuesB24 i)) else []
def kontsB0 (i : Nat) : List Frame := tableBlock% i 0 [[],[⟨⟨22,[]⟩,0⟩],[⟨⟨21,[]⟩,1⟩],[⟨⟨20,[22,19,18]⟩,0⟩],[⟨⟨20,[23,20,13]⟩,0⟩],[⟨⟨20,[23,20,14]⟩,40⟩],[⟨⟨20,[23,20,15]⟩,40⟩],[⟨⟨20,[24,21,17]⟩,40⟩],[⟨⟨20,[25,21,16]⟩,40⟩],[⟨⟨19,[22,19,18]⟩,3⟩],[⟨⟨19,[23,20,13]⟩,4⟩],[⟨⟨19,[23,20,14]⟩,5⟩]]
def kontsB12 (i : Nat) : List Frame := tableBlock% i 12 [[⟨⟨19,[23,20,15]⟩,6⟩],[⟨⟨19,[24,21,17]⟩,7⟩],[⟨⟨19,[25,21,16]⟩,8⟩],[⟨⟨14,[22,19,18]⟩,9⟩],[⟨⟨14,[23,20,13]⟩,10⟩],[⟨⟨14,[23,20,14]⟩,11⟩],[⟨⟨14,[23,20,15]⟩,12⟩],[⟨⟨14,[24,21,17]⟩,13⟩],[⟨⟨14,[25,21,16]⟩,14⟩],[⟨⟨18,[22,19,18]⟩,16⟩],[⟨⟨18,[23,20,13]⟩,41⟩],[⟨⟨18,[23,20,14]⟩,5⟩,⟨⟨18,[23,20,14]⟩,6⟩]]
def kontsB24 (i : Nat) : List Frame := tableBlock% i 24 [[⟨⟨18,[23,20,15]⟩,5⟩,⟨⟨18,[23,20,15]⟩,6⟩],[⟨⟨18,[24,21,17]⟩,17⟩,⟨⟨18,[24,21,17]⟩,32⟩],[⟨⟨18,[25,21,16]⟩,17⟩,⟨⟨18,[25,21,16]⟩,32⟩],[⟨⟨18,[25,21,16]⟩,18⟩,⟨⟨18,[25,21,16]⟩,32⟩],[⟨⟨17,[22,19,18]⟩,21⟩],[⟨⟨17,[23,20,13]⟩,22⟩],[⟨⟨17,[23,20,14]⟩,23⟩],[⟨⟨17,[23,20,15]⟩,24⟩],[⟨⟨17,[24,21,17]⟩,25⟩],[⟨⟨17,[25,21,16]⟩,26⟩],[⟨⟨17,[25,21,16]⟩,27⟩],[⟨⟨7,[]⟩,2⟩]]
def kontsB36 (i : Nat) : List Frame := tableBlock% i 36 [[⟨⟨29,[0]⟩,21⟩],[⟨⟨29,[1]⟩,36⟩],[⟨⟨26,[0]⟩,36⟩],[⟨⟨26,[1]⟩,37⟩],[⟨⟨36,[6,0]⟩,10⟩],[⟨⟨33,[6,0]⟩,40⟩],[⟨⟨6,[7]⟩,2⟩]]
def konts (i : Nat) : List Frame := if i < 43 then (if i < 24 then (if i < 12 then kontsB0 i else kontsB12 i) else (if i < 36 then kontsB24 i else kontsB36 i)) else []
def getStB0 (i : Nat) : AState := tableBlock% i 0 [⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[]⟩,35⟩,⟨⟨4,[7]⟩,2⟩,⟨⟨5,[7]⟩,42⟩,⟨⟨6,[7]⟩,15⟩,⟨⟨6,[7]⟩,19⟩,⟨⟨6,[7]⟩,20⟩,⟨⟨6,[7]⟩,29⟩,⟨⟨6,[7]⟩,30⟩,⟨⟨6,[7]⟩,31⟩]
def getStB12 (i : Nat) : AState := tableBlock% i 12 [⟨⟨7,[]⟩,15⟩,⟨⟨7,[]⟩,19⟩,⟨⟨7,[]⟩,20⟩,⟨⟨7,[]⟩,29⟩,⟨⟨7,[]⟩,30⟩,⟨⟨7,[]⟩,31⟩,⟨⟨7,[]⟩,42⟩,⟨⟨8,[13]⟩,9⟩,⟨⟨8,[14]⟩,13⟩,⟨⟨8,[15]⟩,14⟩,⟨⟨8,[16]⟩,22⟩,⟨⟨8,[17]⟩,23⟩]
def getStB24 (i : Nat) : AState := tableBlock% i 24 [⟨⟨8,[17]⟩,24⟩,⟨⟨8,[18]⟩,2⟩,⟨⟨9,[19,18]⟩,1⟩,⟨⟨9,[20,13]⟩,3⟩,⟨⟨9,[20,14]⟩,7⟩,⟨⟨9,[20,15]⟩,8⟩,⟨⟨9,[21,16]⟩,41⟩,⟨⟨9,[21,17]⟩,5⟩,⟨⟨9,[21,17]⟩,6⟩,⟨⟨10,[22,19,18]⟩,0⟩,⟨⟨10,[23,20,13]⟩,0⟩,⟨⟨10,[23,20,14]⟩,40⟩]
def getStB36 (i : Nat) : AState := tableBlock% i 36 [⟨⟨10,[23,20,15]⟩,40⟩,⟨⟨10,[24,21,17]⟩,40⟩,⟨⟨10,[25,21,16]⟩,40⟩,⟨⟨11,[22,19,18]⟩,3⟩,⟨⟨11,[23,20,13]⟩,4⟩,⟨⟨11,[23,20,14]⟩,5⟩,⟨⟨11,[23,20,15]⟩,6⟩,⟨⟨11,[24,21,17]⟩,7⟩,⟨⟨11,[25,21,16]⟩,8⟩,⟨⟨12,[22,19,18]⟩,9⟩,⟨⟨12,[23,20,13]⟩,10⟩,⟨⟨12,[23,20,14]⟩,11⟩]
def getStB48 (i : Nat) : AState := tableBlock% i 48 [⟨⟨12,[23,20,15]⟩,12⟩,⟨⟨12,[24,21,17]⟩,13⟩,⟨⟨12,[25,21,16]⟩,14⟩,⟨⟨13,[22,19,18]⟩,15⟩,⟨⟨13,[23,20,13]⟩,16⟩,⟨⟨13,[23,20,14]⟩,17⟩,⟨⟨13,[23,20,15]⟩,18⟩,⟨⟨13,[24,21,17]⟩,19⟩,⟨⟨13,[25,21,16]⟩,20⟩,⟨⟨14,[22,19,18]⟩,16⟩,⟨⟨14,[23,20,13]⟩,41⟩,⟨⟨14,[23,20,14]⟩,5⟩]
def getStB60 (i : Nat) : AState := tableBlock% i 60 [⟨⟨14,[23,20,14]⟩,6⟩,⟨⟨14,[23,20,15]⟩,5⟩,⟨⟨14,[23,20,15]⟩,6⟩,⟨⟨14,[24,21,17]⟩,17⟩,⟨⟨14,[24,21,17]⟩,32⟩,⟨⟨14,[25,21,16]⟩,17⟩,⟨⟨14,[25,21,16]⟩,18⟩,⟨⟨14,[25,21,16]⟩,32⟩,⟨⟨15,[22,19,18]⟩,21⟩,⟨⟨15,[23,20,13]⟩,22⟩,⟨⟨15,[23,20,14]⟩,23⟩,⟨⟨15,[23,20,15]⟩,24⟩]
def getStB72 (i : Nat) : AState := tableBlock% i 72 [⟨⟨15,[24,21,17]⟩,25⟩,⟨⟨15,[25,21,16]⟩,26⟩,⟨⟨15,[25,21,16]⟩,27⟩,⟨⟨16,[22,19,18]⟩,28⟩,⟨⟨16,[23,20,13]⟩,29⟩,⟨⟨16,[23,20,14]⟩,30⟩,⟨⟨16,[23,20,15]⟩,31⟩,⟨⟨16,[24,21,17]⟩,32⟩,⟨⟨16,[25,21,16]⟩,33⟩,⟨⟨16,[25,21,16]⟩,34⟩,⟨⟨17,[22,19,18]⟩,38⟩,⟨⟨17,[23,20,13]⟩,19⟩]
def getStB84 (i : Nat) : AState := tableBlock% i 84 [⟨⟨17,[23,20,13]⟩,20⟩,⟨⟨17,[23,20,13]⟩,29⟩,⟨⟨17,[23,20,13]⟩,30⟩,⟨⟨17,[23,20,13]⟩,31⟩,⟨⟨17,[23,20,14]⟩,19⟩,⟨⟨17,[23,20,14]⟩,20⟩,⟨⟨17,[23,20,14]⟩,29⟩,⟨⟨17,[23,20,14]⟩,30⟩,⟨⟨17,[23,20,14]⟩,31⟩,⟨⟨17,[23,20,15]⟩,19⟩,⟨⟨17,[23,20,15]⟩,20⟩,⟨⟨17,[23,20,15]⟩,29⟩]
def getStB96 (i : Nat) : AState := tableBlock% i 96 [⟨⟨17,[23,20,15]⟩,30⟩,⟨⟨17,[23,20,15]⟩,31⟩,⟨⟨17,[24,21,17]⟩,17⟩,⟨⟨17,[24,21,17]⟩,32⟩,⟨⟨17,[25,21,16]⟩,17⟩,⟨⟨17,[25,21,16]⟩,18⟩,⟨⟨17,[25,21,16]⟩,32⟩,⟨⟨20,[22,19,18]⟩,19⟩,⟨⟨20,[22,19,18]⟩,20⟩,⟨⟨20,[22,19,18]⟩,29⟩,⟨⟨20,[22,19,18]⟩,30⟩,⟨⟨20,[22,19,18]⟩,31⟩]
def getStB108 (i : Nat) : AState := tableBlock% i 108 [⟨⟨20,[23,20,14]⟩,17⟩,⟨⟨20,[23,20,14]⟩,32⟩,⟨⟨20,[23,20,15]⟩,17⟩,⟨⟨20,[23,20,15]⟩,32⟩,⟨⟨20,[24,21,17]⟩,19⟩,⟨⟨20,[24,21,17]⟩,20⟩,⟨⟨20,[24,21,17]⟩,29⟩,⟨⟨20,[24,21,17]⟩,30⟩,⟨⟨20,[24,21,17]⟩,31⟩,⟨⟨20,[25,21,16]⟩,19⟩,⟨⟨20,[25,21,16]⟩,20⟩,⟨⟨20,[25,21,16]⟩,29⟩]
def getStB120 (i : Nat) : AState := tableBlock% i 120 [⟨⟨20,[25,21,16]⟩,30⟩,⟨⟨20,[25,21,16]⟩,31⟩,⟨⟨22,[]⟩,28⟩,⟨⟨22,[]⟩,38⟩,⟨⟨23,[0]⟩,21⟩,⟨⟨23,[1]⟩,36⟩,⟨⟨24,[0]⟩,36⟩,⟨⟨24,[1]⟩,37⟩,⟨⟨25,[0]⟩,38⟩,⟨⟨25,[1]⟩,39⟩,⟨⟨26,[0]⟩,39⟩,⟨⟨26,[1]⟩,36⟩]
def getStB132 (i : Nat) : AState := tableBlock% i 132 [⟨⟨27,[2,1]⟩,21⟩,⟨⟨27,[3,0]⟩,37⟩,⟨⟨28,[4,2,1]⟩,16⟩,⟨⟨28,[5,3,0]⟩,36⟩,⟨⟨29,[0]⟩,16⟩,⟨⟨30,[6,0]⟩,10⟩,⟨⟨31,[6,0]⟩,40⟩,⟨⟨32,[6,0]⟩,41⟩,⟨⟨33,[6,0]⟩,17⟩,⟨⟨33,[6,0]⟩,18⟩,⟨⟨33,[6,0]⟩,32⟩,⟨⟨33,[6,0]⟩,33⟩]
def getStB144 (i : Nat) : AState := tableBlock% i 144 [⟨⟨33,[6,0]⟩,34⟩,⟨⟨34,[8,6,0]⟩,11⟩,⟨⟨34,[8,6,0]⟩,12⟩,⟨⟨34,[9,6,0]⟩,25⟩,⟨⟨34,[9,6,0]⟩,26⟩,⟨⟨34,[10,6,0]⟩,27⟩,⟨⟨35,[11,8,6,0]⟩,5⟩,⟨⟨35,[11,8,6,0]⟩,6⟩,⟨⟨35,[12,9,6,0]⟩,17⟩,⟨⟨35,[12,9,6,0]⟩,32⟩,⟨⟨35,[12,10,6,0]⟩,18⟩,⟨⟨35,[12,10,6,0]⟩,32⟩]
def getSt (i : Nat) : AState := if i < 156 then (if i < 72 then (if i < 36 then (if i < 12 then getStB0 i else (if i < 24 then getStB12 i else getStB24 i)) else (if i < 48 then getStB36 i else (if i < 60 then getStB48 i else getStB60 i))) else (if i < 108 then (if i < 84 then getStB72 i else (if i < 96 then getStB84 i else getStB96 i)) else (if i < 132 then (if i < 120 then getStB108 i else getStB120 i) else (if i < 144 then getStB132 i else getStB144 i)))) else entry
def hintsB0 (i : Nat) : List Nat := tableBlock% i 0 [[1],[2],[3],[4],[5],[18],[12],[13],[14],[15],[16],[17]]
def hintsB12 (i : Nat) : List Nat := tableBlock% i 12 [[19],[20],[21],[22],[23],[24],[25],[27],[28],[29],[30],[31,32]]
def hintsB24 (i : Nat) : List Nat := tableBlock% i 24 [[31,32],[26],[33],[34],[35],[36],[38],[37],[37],[39],[40],[41]]
def hintsB36 (i : Nat) : List Nat := tableBlock% i 36 [[42],[43],[44],[45],[46],[47],[48],[49],[50],[51],[52],[53]]
def hintsB48 (i : Nat) : List Nat := tableBlock% i 48 [[54],[55],[56],[6],[57],[63],[66],[88,93],[84],[68],[69],[70]]
def hintsB60 (i : Nat) : List Nat := tableBlock% i 60 [[70],[71],[71],[72],[72],[73],[74],[73],[75],[76],[77],[78]]
def hintsB72 (i : Nat) : List Nat := tableBlock% i 72 [[79],[80],[81],[122],[105,114,119],[106,115,120],[107,116,121],[109,111],[143],[144],[123],[103,112,117]]
def hintsB84 (i : Nat) : List Nat := tableBlock% i 84 [[104,113,118],[105,114,119],[106,115,120],[107,116,121],[103,112,117],[104,113,118],[105,114,119],[106,115,120],[107,116,121],[103,112,117],[104,113,118],[105,114,119]]
def hintsB96 (i : Nat) : List Nat := tableBlock% i 96 [[106,115,120],[107,116,121],[108,110],[109,111],[140],[141],[142],[7],[8],[9],[10],[11]]
def hintsB108 (i : Nat) : List Nat := tableBlock% i 108 [[63],[64],[65],[67],[88,93],[89,94],[90,95],[91,96],[92,97],[83],[84],[85]]
def hintsB120 (i : Nat) : List Nat := tableBlock% i 120 [[86],[87],[124],[125],[126],[127],[128],[129],[82],[130],[133],[132]]
def hintsB132 (i : Nat) : List Nat := tableBlock% i 132 [[134],[135],[136],[131],[137],[138],[139],[58],[145],[146],[147],[148]]
def hintsB144 (i : Nat) : List Nat := tableBlock% i 144 [[149],[150],[151],[152,153],[152,153],[154,155],[59,61],[60,62],[98,100],[99,102],[101],[102]]
def hints (i : Nat) : List Nat := if i < 156 then (if i < 72 then (if i < 36 then (if i < 12 then hintsB0 i else (if i < 24 then hintsB12 i else hintsB24 i)) else (if i < 48 then hintsB36 i else (if i < 60 then hintsB48 i else hintsB60 i))) else (if i < 108 then (if i < 84 then hintsB72 i else (if i < 96 then hintsB84 i else hintsB96 i)) else (if i < 132 then (if i < 120 then hintsB108 i else hintsB120 i) else (if i < 144 then hintsB132 i else hintsB144 i)))) else []
def ck (i : Nat) := FloorIndex.check pCode values konts (RegProof.states 156 getSt) i (hints i)
end Blc.Floor45.Reg9689629906798
