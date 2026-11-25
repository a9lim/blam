import Blc.SelfintResidual45.TableNotation
import Blc.SelfintResidual45.RegProof

set_option Elab.async false
namespace Blc.Floor45.Reg9690409929590
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
def pCodeB0 (i : Nat) : Certgen.Code := tableBlock% i 0 [.app 1 23,.app 2 22,.app 3 7,.lam 4,.app 5 6,.var 0,.var 0,.lam 8,.lam 9,.app 10 11,.var 1,.app 12 16]
def pCodeB12 (i : Nat) : Certgen.Code := tableBlock% i 12 [.app 13 14,.var 1,.lam 15,.var 0,.lam 17,.app 18 21,.app 19 20,.var 0,.var 2,.var 1,.opaque,.lam 24]
def pCodeB24 (i : Nat) : Certgen.Code := tableBlock% i 24 [.app 25 30,.app 26 27,.var 0,.lam 28,.lam 29,.var 1,.lam 31,.app 32 37,.app 33 34,.var 0,.lam 35,.lam 36]
def pCodeB36 (i : Nat) : Certgen.Code := tableBlock% i 36 [.var 1,.lam 38,.app 39 44,.app 40 41,.var 0,.lam 42,.lam 43,.var 0,.lam 45,.app 46 51,.app 47 48,.var 0]
def pCodeB48 (i : Nat) : Certgen.Code := tableBlock% i 48 [.lam 49,.lam 50,.var 1,.opaque]
def pCode (i : Nat) : Certgen.Code := if i < 52 then (if i < 24 then (if i < 12 then pCodeB0 i else pCodeB12 i) else (if i < 36 then pCodeB24 i else (if i < 48 then pCodeB36 i else pCodeB48 i))) else .opaque
def lit47 : Term := .var 0
def lit50 : Term := .var 1
def lit42 : Term := .lam lit47
def lit20 : Term := .var 2
def lit49 : Term := .lam lit50
def lit4 : Term := .app lit47 lit47
def lit41 : Term := .lam lit42
def lit51 : Term := .var 4
def lit48 : Term := .lam lit49
def lit3 : Term := .lam lit4
def lit18 : Term := .app lit47 lit20
def lit12 : Term := .app lit50 lit42
def lit39 : Term := .app lit47 lit41
def lit46 : Term := .app lit47 lit48
def lit17 : Term := .app lit18 lit50
def lit16 : Term := .lam lit17
def lit45 : Term := .app lit46 lit51
def lit44 : Term := .lam lit45
def lit11 : Term := .app lit12 lit16
def lit9 : Term := .app lit50 lit11
def lit8 : Term := .lam lit9
def lit38 : Term := .app lit39 lit44
def lit7 : Term := .lam lit8
def lit37 : Term := .lam lit38
def lit2 : Term := .app lit3 lit7
def lit31 : Term := .app lit46 lit37
def lit1 : Term := .app lit2 lit50
def lit30 : Term := .lam lit31
def lit24 : Term := .app lit46 lit30
def lit23 : Term := .lam lit24
def lit0 : Term := .app lit1 lit23
def getTermB0 (i : Nat) : Term := tableBlock% i 0 [lit0,lit1,lit2,lit3,lit4,lit47,lit47,lit7,lit8,lit9,lit50,lit11]
def getTermB12 (i : Nat) : Term := tableBlock% i 12 [lit12,lit50,lit42,lit47,lit16,lit17,lit18,lit47,lit20,lit50,lit50,lit23]
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
def valuesB0 (i : Nat) : List AClo := tableBlock% i 0 [[⟨16,[16,10]⟩],[⟨14,[16,10]⟩],[⟨21,[6,16,10]⟩],[⟨20,[6,16,10]⟩],[⟨11,[16,10]⟩],[⟨16,[14,13]⟩,⟨16,[17,11]⟩],[⟨14,[14,13]⟩,⟨14,[17,11]⟩],[⟨20,[5,15,12]⟩],[⟨11,[14,13]⟩,⟨11,[17,11]⟩],[⟨7,[]⟩],[⟨14,[15,12]⟩],[⟨20,[7,14,13]⟩,⟨20,[7,17,11]⟩]]
def valuesB12 (i : Nat) : List AClo := tableBlock% i 12 [[⟨6,[9]⟩],[⟨11,[15,12]⟩],[⟨23,[]⟩],[⟨22,[]⟩],[⟨16,[15,12]⟩],[⟨21,[7,14,13]⟩,⟨21,[7,17,11]⟩]]
def values (i : Nat) : List AClo := if i < 18 then (if i < 12 then valuesB0 i else valuesB12 i) else []
def kontsB0 (i : Nat) : List Frame := tableBlock% i 0 [[],[⟨⟨23,[]⟩,0⟩],[⟨⟨22,[]⟩,1⟩],[⟨⟨16,[14,13]⟩,24⟩],[⟨⟨16,[15,12]⟩,9⟩,⟨⟨16,[15,12]⟩,14⟩],[⟨⟨16,[15,12]⟩,27⟩],[⟨⟨16,[15,12]⟩,30⟩],[⟨⟨16,[16,10]⟩,9⟩,⟨⟨16,[16,10]⟩,14⟩,⟨⟨16,[16,10]⟩,27⟩,⟨⟨16,[16,10]⟩,30⟩],[⟨⟨16,[17,11]⟩,24⟩],[⟨⟨14,[14,13]⟩,3⟩],[⟨⟨14,[15,12]⟩,4⟩],[⟨⟨14,[15,12]⟩,5⟩]]
def kontsB12 (i : Nat) : List Frame := tableBlock% i 12 [[⟨⟨14,[15,12]⟩,6⟩],[⟨⟨14,[16,10]⟩,7⟩],[⟨⟨14,[17,11]⟩,8⟩],[⟨⟨21,[5,15,12]⟩,24⟩],[⟨⟨21,[6,16,10]⟩,3⟩,⟨⟨21,[6,16,10]⟩,8⟩],[⟨⟨21,[7,14,13]⟩,15⟩],[⟨⟨21,[7,17,11]⟩,15⟩],[⟨⟨21,[8,16,10]⟩,0⟩,⟨⟨21,[8,16,10]⟩,15⟩],[⟨⟨20,[5,15,12]⟩,15⟩],[⟨⟨20,[6,16,10]⟩,16⟩],[⟨⟨20,[7,14,13]⟩,17⟩],[⟨⟨20,[7,17,11]⟩,18⟩]]
def kontsB24 (i : Nat) : List Frame := tableBlock% i 24 [[⟨⟨20,[8,16,10]⟩,19⟩],[⟨⟨7,[]⟩,2⟩],[⟨⟨6,[9]⟩,2⟩],[⟨⟨11,[14,13]⟩,0⟩],[⟨⟨11,[15,12]⟩,1⟩],[⟨⟨11,[16,10]⟩,9⟩,⟨⟨11,[16,10]⟩,14⟩,⟨⟨11,[16,10]⟩,27⟩,⟨⟨11,[16,10]⟩,30⟩],[⟨⟨11,[17,11]⟩,15⟩]]
def konts (i : Nat) : List Frame := if i < 31 then (if i < 12 then kontsB0 i else (if i < 24 then kontsB12 i else kontsB24 i)) else []
def getStB0 (i : Nat) : AState := tableBlock% i 0 [⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[]⟩,25⟩,⟨⟨4,[9]⟩,2⟩,⟨⟨5,[9]⟩,26⟩,⟨⟨6,[9]⟩,10⟩,⟨⟨6,[9]⟩,11⟩,⟨⟨6,[9]⟩,12⟩,⟨⟨6,[9]⟩,22⟩,⟨⟨6,[9]⟩,23⟩,⟨⟨6,[9]⟩,28⟩]
def getStB12 (i : Nat) : AState := tableBlock% i 12 [⟨⟨7,[]⟩,10⟩,⟨⟨7,[]⟩,11⟩,⟨⟨7,[]⟩,12⟩,⟨⟨7,[]⟩,22⟩,⟨⟨7,[]⟩,23⟩,⟨⟨7,[]⟩,26⟩,⟨⟨7,[]⟩,28⟩,⟨⟨8,[10]⟩,4⟩,⟨⟨8,[10]⟩,5⟩,⟨⟨8,[10]⟩,6⟩,⟨⟨8,[11]⟩,17⟩,⟨⟨8,[11]⟩,18⟩]
def getStB24 (i : Nat) : AState := tableBlock% i 24 [⟨⟨8,[12]⟩,2⟩,⟨⟨8,[13]⟩,1⟩,⟨⟨9,[14,13]⟩,0⟩,⟨⟨9,[15,12]⟩,1⟩,⟨⟨9,[16,10]⟩,9⟩,⟨⟨9,[16,10]⟩,14⟩,⟨⟨9,[16,10]⟩,27⟩,⟨⟨9,[16,10]⟩,30⟩,⟨⟨9,[17,11]⟩,15⟩,⟨⟨10,[14,13]⟩,27⟩,⟨⟨10,[15,12]⟩,28⟩,⟨⟨10,[16,10]⟩,29⟩]
def getStB36 (i : Nat) : AState := tableBlock% i 36 [⟨⟨10,[17,11]⟩,30⟩,⟨⟨11,[14,13]⟩,24⟩,⟨⟨11,[15,12]⟩,9⟩,⟨⟨11,[15,12]⟩,14⟩,⟨⟨11,[15,12]⟩,27⟩,⟨⟨11,[15,12]⟩,30⟩,⟨⟨11,[16,10]⟩,9⟩,⟨⟨11,[16,10]⟩,14⟩,⟨⟨11,[16,10]⟩,27⟩,⟨⟨11,[16,10]⟩,30⟩,⟨⟨11,[17,11]⟩,24⟩,⟨⟨12,[14,13]⟩,3⟩]
def getStB48 (i : Nat) : AState := tableBlock% i 48 [⟨⟨12,[15,12]⟩,4⟩,⟨⟨12,[15,12]⟩,5⟩,⟨⟨12,[15,12]⟩,6⟩,⟨⟨12,[16,10]⟩,7⟩,⟨⟨12,[17,11]⟩,8⟩,⟨⟨13,[14,13]⟩,9⟩,⟨⟨13,[15,12]⟩,10⟩,⟨⟨13,[15,12]⟩,11⟩,⟨⟨13,[15,12]⟩,12⟩,⟨⟨13,[16,10]⟩,13⟩,⟨⟨13,[17,11]⟩,14⟩,⟨⟨14,[14,13]⟩,21⟩]
def getStB60 (i : Nat) : AState := tableBlock% i 60 [⟨⟨14,[15,12]⟩,13⟩,⟨⟨14,[15,12]⟩,16⟩,⟨⟨14,[15,12]⟩,29⟩,⟨⟨14,[16,10]⟩,7⟩,⟨⟨14,[17,11]⟩,21⟩,⟨⟨15,[0,16,10]⟩,9⟩,⟨⟨15,[0,16,10]⟩,14⟩,⟨⟨15,[0,16,10]⟩,27⟩,⟨⟨15,[0,16,10]⟩,30⟩,⟨⟨15,[1,15,12]⟩,7⟩,⟨⟨15,[2,15,12]⟩,3⟩,⟨⟨15,[2,15,12]⟩,8⟩]
def getStB72 (i : Nat) : AState := tableBlock% i 72 [⟨⟨15,[3,14,13]⟩,16⟩,⟨⟨15,[3,17,11]⟩,16⟩,⟨⟨15,[4,15,12]⟩,9⟩,⟨⟨15,[4,15,12]⟩,14⟩,⟨⟨15,[4,15,12]⟩,27⟩,⟨⟨15,[4,15,12]⟩,30⟩,⟨⟨16,[14,13]⟩,20⟩,⟨⟨16,[15,12]⟩,3⟩,⟨⟨16,[15,12]⟩,8⟩,⟨⟨16,[16,10]⟩,9⟩,⟨⟨16,[16,10]⟩,14⟩,⟨⟨16,[16,10]⟩,27⟩]
def getStB84 (i : Nat) : AState := tableBlock% i 84 [⟨⟨16,[16,10]⟩,30⟩,⟨⟨16,[17,11]⟩,20⟩,⟨⟨17,[5,15,12]⟩,24⟩,⟨⟨17,[6,16,10]⟩,3⟩,⟨⟨17,[6,16,10]⟩,8⟩,⟨⟨17,[7,14,13]⟩,15⟩,⟨⟨17,[7,17,11]⟩,15⟩,⟨⟨17,[8,16,10]⟩,0⟩,⟨⟨17,[8,16,10]⟩,15⟩,⟨⟨18,[5,15,12]⟩,15⟩,⟨⟨18,[6,16,10]⟩,16⟩,⟨⟨18,[7,14,13]⟩,17⟩]
def getStB96 (i : Nat) : AState := tableBlock% i 96 [⟨⟨18,[7,17,11]⟩,18⟩,⟨⟨18,[8,16,10]⟩,19⟩,⟨⟨19,[5,15,12]⟩,20⟩,⟨⟨19,[6,16,10]⟩,21⟩,⟨⟨19,[7,14,13]⟩,22⟩,⟨⟨19,[7,17,11]⟩,23⟩,⟨⟨19,[8,16,10]⟩,24⟩,⟨⟨20,[5,15,12]⟩,22⟩,⟨⟨20,[5,15,12]⟩,23⟩,⟨⟨20,[6,16,10]⟩,16⟩,⟨⟨20,[7,14,13]⟩,14⟩,⟨⟨20,[7,14,13]⟩,30⟩]
def getStB108 (i : Nat) : AState := tableBlock% i 108 [⟨⟨20,[7,17,11]⟩,14⟩,⟨⟨20,[7,17,11]⟩,30⟩,⟨⟨21,[6,16,10]⟩,3⟩,⟨⟨21,[6,16,10]⟩,8⟩]
def getSt (i : Nat) : AState := if i < 112 then (if i < 60 then (if i < 24 then (if i < 12 then getStB0 i else getStB12 i) else (if i < 36 then getStB24 i else (if i < 48 then getStB36 i else getStB48 i))) else (if i < 84 then (if i < 72 then getStB60 i else getStB72 i) else (if i < 96 then getStB84 i else (if i < 108 then getStB96 i else getStB108 i)))) else entry
def hintsB0 (i : Nat) : List Nat := tableBlock% i 0 [[1],[2],[3],[4],[5],[17],[12],[13],[14],[15],[16],[18]]
def hintsB12 (i : Nat) : List Nat := tableBlock% i 12 [[19],[20],[21],[22],[23],[24],[25],[28,29],[30],[31],[32],[32]]
def hintsB24 (i : Nat) : List Nat := tableBlock% i 24 [[27],[26],[33],[34],[35],[35],[35],[35],[36],[40],[11],[62]]
def hintsB36 (i : Nat) : List Nat := tableBlock% i 36 [[107,109],[47],[48],[48],[49],[50],[51],[51],[51],[51],[52],[53]]
def hintsB48 (i : Nat) : List Nat := tableBlock% i 48 [[54],[55],[56],[57],[58],[38],[6],[7],[8],[60],[106,108],[72]]
def hintsB60 (i : Nat) : List Nat := tableBlock% i 60 [[69],[70,71],[74,75,76,77],[65,66,67,68],[73],[81],[82],[83],[84],[63],[110],[111]]
def hintsB72 (i : Nat) : List Nat := tableBlock% i 72 [[105],[105],[42],[43],[44],[45],[89],[86],[86],[87],[88],[91]]
def hintsB84 (i : Nat) : List Nat := tableBlock% i 84 [[92],[90],[93],[94],[94],[95],[96],[97],[97],[98],[99],[100]]
def hintsB96 (i : Nat) : List Nat := tableBlock% i 96 [[101],[102],[78,85],[59,64],[103],[104],[37,46],[9],[10],[61],[39],[41]]
def hintsB108 (i : Nat) : List Nat := tableBlock% i 108 [[106,108],[107,109],[79],[80]]
def hints (i : Nat) : List Nat := if i < 112 then (if i < 60 then (if i < 24 then (if i < 12 then hintsB0 i else hintsB12 i) else (if i < 36 then hintsB24 i else (if i < 48 then hintsB36 i else hintsB48 i))) else (if i < 84 then (if i < 72 then hintsB60 i else hintsB72 i) else (if i < 96 then hintsB84 i else (if i < 108 then hintsB96 i else hintsB108 i)))) else []
def ck (i : Nat) := FloorIndex.check pCode values konts (RegProof.states 112 getSt) i (hints i)
end Blc.Floor45.Reg9690409929590
