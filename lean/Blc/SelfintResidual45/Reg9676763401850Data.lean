import Blc.SelfintResidual45.TableNotation
import Blc.SelfintResidual45.RegProof

set_option Elab.async false
namespace Blc.Floor45.Reg9676763401850
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
def pCodeB0 (i : Nat) : Certgen.Code := tableBlock% i 0 [.app 1 23,.app 2 22,.app 3 9,.lam 4,.app 5 6,.var 0,.app 7 8,.var 0,.var 0,.lam 10,.app 11 12,.var 0]
def pCodeB12 (i : Nat) : Certgen.Code := tableBlock% i 12 [.lam 13,.lam 14,.app 15 19,.app 16 17,.var 1,.lam 18,.var 2,.app 20 21,.var 2,.var 0,.opaque,.lam 24]
def pCodeB24 (i : Nat) : Certgen.Code := tableBlock% i 24 [.app 25 30,.app 26 27,.var 0,.lam 28,.lam 29,.var 1,.lam 31,.app 32 37,.app 33 34,.var 0,.lam 35,.lam 36]
def pCodeB36 (i : Nat) : Certgen.Code := tableBlock% i 36 [.var 1,.lam 38,.app 39 44,.app 40 41,.var 0,.lam 42,.lam 43,.var 0,.lam 45,.app 46 51,.app 47 48,.var 0]
def pCodeB48 (i : Nat) : Certgen.Code := tableBlock% i 48 [.lam 49,.lam 50,.var 1,.opaque]
def pCode (i : Nat) : Certgen.Code := if i < 52 then (if i < 24 then (if i < 12 then pCodeB0 i else pCodeB12 i) else (if i < 36 then pCodeB24 i else (if i < 48 then pCodeB36 i else pCodeB48 i))) else .opaque
def lit47 : Term := .var 0
def lit50 : Term := .var 1
def lit20 : Term := .var 2
def lit42 : Term := .lam lit47
def lit49 : Term := .lam lit50
def lit6 : Term := .app lit47 lit47
def lit17 : Term := .lam lit20
def lit41 : Term := .lam lit42
def lit51 : Term := .var 4
def lit48 : Term := .lam lit49
def lit19 : Term := .app lit20 lit47
def lit4 : Term := .app lit47 lit6
def lit39 : Term := .app lit47 lit41
def lit15 : Term := .app lit50 lit17
def lit46 : Term := .app lit47 lit48
def lit3 : Term := .lam lit4
def lit45 : Term := .app lit46 lit51
def lit14 : Term := .app lit15 lit19
def lit44 : Term := .lam lit45
def lit13 : Term := .lam lit14
def lit12 : Term := .lam lit13
def lit10 : Term := .app lit47 lit12
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
def getTermB0 (i : Nat) : Term := tableBlock% i 0 [lit0,lit1,lit2,lit3,lit4,lit47,lit6,lit47,lit47,lit9,lit10,lit47]
def getTermB12 (i : Nat) : Term := tableBlock% i 12 [lit12,lit13,lit14,lit15,lit50,lit17,lit20,lit19,lit20,lit47,lit50,lit23]
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
def valuesB0 (i : Nat) : List AClo := tableBlock% i 0 [[⟨12,[21]⟩],[⟨12,[20]⟩],[⟨19,[11,4,20]⟩],[⟨19,[12,5,21]⟩],[⟨17,[9,1,23]⟩,⟨17,[16,1,23]⟩],[⟨17,[13,0,22]⟩],[⟨21,[12,5,21]⟩],[⟨21,[11,4,20]⟩],[⟨22,[]⟩],[⟨12,[22]⟩],[⟨19,[10,3,21]⟩,⟨19,[15,7,23]⟩],[⟨19,[9,1,23]⟩,⟨19,[16,1,23]⟩]]
def valuesB12 (i : Nat) : List AClo := tableBlock% i 12 [[⟨19,[13,0,22]⟩],[⟨17,[10,3,21]⟩,⟨17,[15,7,23]⟩],[⟨17,[13,6,22]⟩],[⟨17,[8,2,20]⟩,⟨17,[14,2,20]⟩],[⟨21,[13,0,22]⟩],[⟨17,[11,4,20]⟩],[⟨17,[12,5,21]⟩],[⟨9,[]⟩],[⟨12,[23]⟩],[⟨21,[9,1,23]⟩,⟨21,[16,1,23]⟩],[⟨6,[19]⟩],[⟨8,[19]⟩]]
def values (i : Nat) : List AClo := if i < 24 then (if i < 12 then valuesB0 i else valuesB12 i) else []
def kontsB0 (i : Nat) : List Frame := tableBlock% i 0 [[],[⟨⟨23,[]⟩,0⟩],[⟨⟨22,[]⟩,1⟩],[⟨⟨12,[20]⟩,5⟩,⟨⟨12,[20]⟩,33⟩],[⟨⟨12,[21]⟩,19⟩,⟨⟨12,[21]⟩,25⟩],[⟨⟨12,[22]⟩,2⟩],[⟨⟨12,[23]⟩,5⟩,⟨⟨12,[23]⟩,33⟩],[⟨⟨19,[8,2,20]⟩,1⟩],[⟨⟨19,[9,1,23]⟩,2⟩],[⟨⟨19,[10,3,21]⟩,7⟩,⟨⟨19,[10,3,21]⟩,13⟩],[⟨⟨19,[11,4,20]⟩,2⟩,⟨⟨19,[11,4,20]⟩,24⟩],[⟨⟨19,[12,5,21]⟩,9⟩,⟨⟨19,[12,5,21]⟩,15⟩]]
def kontsB12 (i : Nat) : List Frame := tableBlock% i 12 [[⟨⟨19,[13,0,22]⟩,9⟩,⟨⟨19,[13,0,22]⟩,15⟩],[⟨⟨19,[14,2,20]⟩,14⟩],[⟨⟨19,[13,6,22]⟩,9⟩,⟨⟨19,[13,6,22]⟩,15⟩],[⟨⟨19,[15,7,23]⟩,7⟩,⟨⟨19,[15,7,23]⟩,13⟩],[⟨⟨19,[16,1,23]⟩,24⟩],[⟨⟨17,[8,2,20]⟩,7⟩],[⟨⟨17,[9,1,23]⟩,8⟩],[⟨⟨17,[10,3,21]⟩,9⟩],[⟨⟨17,[11,4,20]⟩,10⟩],[⟨⟨17,[12,5,21]⟩,11⟩],[⟨⟨17,[13,0,22]⟩,12⟩],[⟨⟨17,[14,2,20]⟩,13⟩]]
def kontsB24 (i : Nat) : List Frame := tableBlock% i 24 [[⟨⟨17,[13,6,22]⟩,14⟩],[⟨⟨17,[15,7,23]⟩,15⟩],[⟨⟨17,[16,1,23]⟩,16⟩],[⟨⟨21,[9,1,23]⟩,25⟩],[⟨⟨21,[9,1,23]⟩,19⟩,⟨⟨21,[9,1,23]⟩,25⟩],[⟨⟨21,[11,4,20]⟩,17⟩],[⟨⟨21,[11,4,20]⟩,23⟩],[⟨⟨21,[12,5,21]⟩,19⟩],[⟨⟨21,[12,5,21]⟩,19⟩,⟨⟨21,[12,5,21]⟩,25⟩],[⟨⟨21,[13,0,22]⟩,24⟩],[⟨⟨21,[16,1,23]⟩,25⟩],[⟨⟨21,[16,1,23]⟩,19⟩,⟨⟨21,[16,1,23]⟩,25⟩]]
def kontsB36 (i : Nat) : List Frame := tableBlock% i 36 [[⟨⟨9,[]⟩,2⟩],[⟨⟨6,[19]⟩,2⟩],[⟨⟨8,[19]⟩,33⟩],[⟨⟨8,[19]⟩,5⟩]]
def konts (i : Nat) : List Frame := if i < 40 then (if i < 24 then (if i < 12 then kontsB0 i else kontsB12 i) else (if i < 36 then kontsB24 i else kontsB36 i)) else []
def getStB0 (i : Nat) : AState := tableBlock% i 0 [⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[]⟩,36⟩,⟨⟨4,[19]⟩,2⟩,⟨⟨5,[19]⟩,37⟩,⟨⟨6,[19]⟩,5⟩,⟨⟨6,[19]⟩,33⟩,⟨⟨7,[19]⟩,38⟩,⟨⟨7,[19]⟩,39⟩,⟨⟨8,[19]⟩,6⟩,⟨⟨8,[19]⟩,27⟩]
def getStB12 (i : Nat) : AState := tableBlock% i 12 [⟨⟨8,[19]⟩,28⟩,⟨⟨8,[19]⟩,34⟩,⟨⟨8,[19]⟩,35⟩,⟨⟨9,[]⟩,6⟩,⟨⟨9,[]⟩,27⟩,⟨⟨9,[]⟩,28⟩,⟨⟨9,[]⟩,34⟩,⟨⟨9,[]⟩,35⟩,⟨⟨9,[]⟩,37⟩,⟨⟨9,[]⟩,38⟩,⟨⟨9,[]⟩,39⟩,⟨⟨10,[20]⟩,5⟩]
def getStB24 (i : Nat) : AState := tableBlock% i 24 [⟨⟨10,[20]⟩,33⟩,⟨⟨10,[21]⟩,19⟩,⟨⟨10,[21]⟩,25⟩,⟨⟨10,[22]⟩,2⟩,⟨⟨10,[23]⟩,5⟩,⟨⟨10,[23]⟩,33⟩,⟨⟨11,[20]⟩,3⟩,⟨⟨11,[21]⟩,4⟩,⟨⟨11,[22]⟩,5⟩,⟨⟨11,[23]⟩,6⟩,⟨⟨12,[20]⟩,10⟩,⟨⟨12,[20]⟩,18⟩]
def getStB36 (i : Nat) : AState := tableBlock% i 36 [⟨⟨12,[20]⟩,26⟩,⟨⟨12,[21]⟩,11⟩,⟨⟨12,[21]⟩,22⟩,⟨⟨12,[22]⟩,4⟩,⟨⟨12,[22]⟩,31⟩,⟨⟨12,[22]⟩,32⟩,⟨⟨12,[23]⟩,3⟩,⟨⟨12,[23]⟩,29⟩,⟨⟨12,[23]⟩,30⟩,⟨⟨13,[0,22]⟩,19⟩,⟨⟨13,[0,22]⟩,25⟩,⟨⟨13,[1,23]⟩,5⟩]
def getStB48 (i : Nat) : AState := tableBlock% i 48 [⟨⟨13,[1,23]⟩,33⟩,⟨⟨13,[2,20]⟩,2⟩,⟨⟨13,[2,20]⟩,24⟩,⟨⟨13,[3,21]⟩,9⟩,⟨⟨13,[3,21]⟩,15⟩,⟨⟨13,[4,20]⟩,8⟩,⟨⟨13,[4,20]⟩,16⟩,⟨⟨13,[5,21]⟩,12⟩,⟨⟨13,[6,22]⟩,19⟩,⟨⟨13,[6,22]⟩,25⟩,⟨⟨13,[7,23]⟩,17⟩,⟨⟨13,[7,23]⟩,23⟩]
def getStB60 (i : Nat) : AState := tableBlock% i 60 [⟨⟨14,[8,2,20]⟩,1⟩,⟨⟨14,[9,1,23]⟩,2⟩,⟨⟨14,[10,3,21]⟩,7⟩,⟨⟨14,[10,3,21]⟩,13⟩,⟨⟨14,[11,4,20]⟩,2⟩,⟨⟨14,[11,4,20]⟩,24⟩,⟨⟨14,[12,5,21]⟩,9⟩,⟨⟨14,[12,5,21]⟩,15⟩,⟨⟨14,[13,0,22]⟩,9⟩,⟨⟨14,[13,0,22]⟩,15⟩,⟨⟨14,[13,6,22]⟩,9⟩,⟨⟨14,[13,6,22]⟩,15⟩]
def getStB72 (i : Nat) : AState := tableBlock% i 72 [⟨⟨14,[14,2,20]⟩,14⟩,⟨⟨14,[15,7,23]⟩,7⟩,⟨⟨14,[15,7,23]⟩,13⟩,⟨⟨14,[16,1,23]⟩,24⟩,⟨⟨15,[8,2,20]⟩,7⟩,⟨⟨15,[9,1,23]⟩,8⟩,⟨⟨15,[10,3,21]⟩,9⟩,⟨⟨15,[11,4,20]⟩,10⟩,⟨⟨15,[12,5,21]⟩,11⟩,⟨⟨15,[13,0,22]⟩,12⟩,⟨⟨15,[13,6,22]⟩,14⟩,⟨⟨15,[14,2,20]⟩,13⟩]
def getStB84 (i : Nat) : AState := tableBlock% i 84 [⟨⟨15,[15,7,23]⟩,15⟩,⟨⟨15,[16,1,23]⟩,16⟩,⟨⟨16,[8,2,20]⟩,17⟩,⟨⟨16,[9,1,23]⟩,18⟩,⟨⟨16,[10,3,21]⟩,19⟩,⟨⟨16,[11,4,20]⟩,20⟩,⟨⟨16,[12,5,21]⟩,21⟩,⟨⟨16,[13,0,22]⟩,22⟩,⟨⟨16,[13,6,22]⟩,24⟩,⟨⟨16,[14,2,20]⟩,23⟩,⟨⟨16,[15,7,23]⟩,25⟩,⟨⟨16,[16,1,23]⟩,26⟩]
def getStB96 (i : Nat) : AState := tableBlock% i 96 [⟨⟨17,[9,1,23]⟩,20⟩,⟨⟨17,[10,3,21]⟩,4⟩,⟨⟨17,[10,3,21]⟩,31⟩,⟨⟨17,[10,3,21]⟩,32⟩,⟨⟨17,[13,0,22]⟩,21⟩,⟨⟨17,[15,7,23]⟩,4⟩,⟨⟨17,[15,7,23]⟩,31⟩,⟨⟨17,[15,7,23]⟩,32⟩,⟨⟨17,[16,1,23]⟩,20⟩,⟨⟨18,[0,10,3,21]⟩,19⟩,⟨⟨18,[0,10,3,21]⟩,25⟩,⟨⟨18,[0,15,7,23]⟩,19⟩]
def getStB108 (i : Nat) : AState := tableBlock% i 108 [⟨⟨18,[0,15,7,23]⟩,25⟩,⟨⟨18,[6,10,3,21]⟩,19⟩,⟨⟨18,[6,10,3,21]⟩,25⟩,⟨⟨18,[6,15,7,23]⟩,19⟩,⟨⟨18,[6,15,7,23]⟩,25⟩,⟨⟨18,[17,9,1,23]⟩,10⟩,⟨⟨18,[17,16,1,23]⟩,10⟩,⟨⟨18,[18,13,0,22]⟩,11⟩,⟨⟨19,[9,1,23]⟩,19⟩,⟨⟨19,[9,1,23]⟩,25⟩,⟨⟨19,[11,4,20]⟩,17⟩,⟨⟨19,[11,4,20]⟩,23⟩]
def getStB120 (i : Nat) : AState := tableBlock% i 120 [⟨⟨19,[12,5,21]⟩,19⟩,⟨⟨19,[12,5,21]⟩,25⟩,⟨⟨19,[13,0,22]⟩,24⟩,⟨⟨19,[16,1,23]⟩,19⟩,⟨⟨19,[16,1,23]⟩,25⟩,⟨⟨20,[9,1,23]⟩,27⟩,⟨⟨20,[9,1,23]⟩,28⟩,⟨⟨20,[11,4,20]⟩,29⟩,⟨⟨20,[11,4,20]⟩,30⟩,⟨⟨20,[12,5,21]⟩,31⟩,⟨⟨20,[12,5,21]⟩,32⟩,⟨⟨20,[13,0,22]⟩,33⟩]
def getStB132 (i : Nat) : AState := tableBlock% i 132 [⟨⟨20,[16,1,23]⟩,34⟩,⟨⟨20,[16,1,23]⟩,35⟩,⟨⟨21,[9,1,23]⟩,4⟩,⟨⟨21,[9,1,23]⟩,31⟩,⟨⟨21,[9,1,23]⟩,32⟩,⟨⟨21,[11,4,20]⟩,19⟩,⟨⟨21,[11,4,20]⟩,25⟩,⟨⟨21,[12,5,21]⟩,24⟩,⟨⟨21,[13,0,22]⟩,4⟩,⟨⟨21,[13,0,22]⟩,31⟩,⟨⟨21,[13,0,22]⟩,32⟩,⟨⟨21,[16,1,23]⟩,4⟩]
def getStB144 (i : Nat) : AState := tableBlock% i 144 [⟨⟨21,[16,1,23]⟩,31⟩,⟨⟨21,[16,1,23]⟩,32⟩]
def getSt (i : Nat) : AState := if i < 146 then (if i < 72 then (if i < 36 then (if i < 12 then getStB0 i else (if i < 24 then getStB12 i else getStB24 i)) else (if i < 48 then getStB36 i else (if i < 60 then getStB48 i else getStB60 i))) else (if i < 108 then (if i < 84 then getStB72 i else (if i < 96 then getStB84 i else getStB96 i)) else (if i < 132 then (if i < 120 then getStB108 i else getStB120 i) else (if i < 144 then getStB132 i else getStB144 i)))) else entry
def hintsB0 (i : Nat) : List Nat := tableBlock% i 0 [[1],[2],[3],[4],[5],[20],[9],[8],[21],[22],[15],[16]]
def hintsB12 (i : Nat) : List Nat := tableBlock% i 12 [[17],[18],[19],[23,24],[26],[25,26],[26],[25,26],[27],[29],[28],[30]]
def hintsB24 (i : Nat) : List Nat := tableBlock% i 24 [[30],[31],[31],[32],[33],[33],[42],[134,143],[6],[10],[49,50],[53]]
def hintsB36 (i : Nat) : List Nat := tableBlock% i 36 [[54],[51,52],[55],[45,46],[56],[56,57],[47,48],[58],[59],[68],[69],[61]]
def hintsB48 (i : Nat) : List Nat := tableBlock% i 48 [[75],[60],[72],[62,63],[62,63],[64],[65],[66,67],[70],[71],[73],[74]]
def hintsB60 (i : Nat) : List Nat := tableBlock% i 60 [[76],[77],[78],[78],[79],[79],[80],[80],[81],[81],[82],[82]]
def hintsB72 (i : Nat) : List Nat := tableBlock% i 72 [[83],[84],[84],[85],[86],[87],[88],[89],[90],[91],[92],[93]]
def hintsB84 (i : Nat) : List Nat := tableBlock% i 84 [[94],[95],[118],[35],[120],[96,104],[100],[38],[139],[119],[138],[36]]
def hintsB96 (i : Nat) : List Nat := tableBlock% i 96 [[113],[105,106],[109],[109,110],[115],[107,108],[111],[111,112],[114],[120],[121],[137]]
def hintsB108 (i : Nat) : List Nat := tableBlock% i 108 [[138],[120],[121],[137],[138],[34],[34],[37],[126],[125],[127],[128]]
def hintsB120 (i : Nat) : List Nat := tableBlock% i 120 [[129],[130],[131],[133],[132],[11],[12],[43],[44],[135,144],[136,145],[7]]
def hintsB132 (i : Nat) : List Nat := tableBlock% i 132 [[13],[14],[39],[40],[41],[116,123],[117,124],[122],[97,101],[98,102],[99,103],[140]]
def hintsB144 (i : Nat) : List Nat := tableBlock% i 144 [[141],[142]]
def hints (i : Nat) : List Nat := if i < 146 then (if i < 72 then (if i < 36 then (if i < 12 then hintsB0 i else (if i < 24 then hintsB12 i else hintsB24 i)) else (if i < 48 then hintsB36 i else (if i < 60 then hintsB48 i else hintsB60 i))) else (if i < 108 then (if i < 84 then hintsB72 i else (if i < 96 then hintsB84 i else hintsB96 i)) else (if i < 132 then (if i < 120 then hintsB108 i else hintsB120 i) else (if i < 144 then hintsB132 i else hintsB144 i)))) else []
def ck (i : Nat) := FloorIndex.check pCode values konts (RegProof.states 146 getSt) i (hints i)
end Blc.Floor45.Reg9676763401850
