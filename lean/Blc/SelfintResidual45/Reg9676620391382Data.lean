import Blc.SelfintResidual45.TableNotation
import Blc.SelfintResidual45.RegProof

set_option Elab.async false
namespace Blc.Floor45.Reg9676620391382
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
def pCodeB0 (i : Nat) : Certgen.Code := tableBlock% i 0 [.app 1 73,.app 2 64,.app 3 27,.app 4 24,.app 5 11,.lam 6,.app 7 8,.var 0,.app 9 10,.var 0,.var 0,.lam 12]
def pCodeB12 (i : Nat) : Certgen.Code := tableBlock% i 12 [.lam 13,.app 14 15,.var 1,.lam 16,.app 17 23,.app 18 22,.app 19 20,.var 0,.lam 21,.var 3,.var 0,.var 1]
def pCodeB24 (i : Nat) : Certgen.Code := tableBlock% i 24 [.lam 25,.lam 26,.var 1,.lam 28,.app 29 34,.app 30 31,.var 0,.lam 32,.lam 33,.var 1,.lam 35,.app 36 41]
def pCodeB36 (i : Nat) : Certgen.Code := tableBlock% i 36 [.app 37 38,.var 0,.lam 39,.lam 40,.var 1,.lam 42,.app 43 48,.app 44 45,.var 0,.lam 46,.lam 47,.var 0]
def pCodeB48 (i : Nat) : Certgen.Code := tableBlock% i 48 [.lam 49,.app 50 55,.app 51 52,.var 0,.lam 53,.lam 54,.var 1,.app 56 60,.lam 57,.app 58 59,.var 0,.var 0]
def pCodeB60 (i : Nat) : Certgen.Code := tableBlock% i 60 [.lam 61,.app 62 63,.var 0,.var 0,.app 65 69,.lam 66,.app 67 68,.var 0,.var 0,.lam 70,.app 71 72,.var 0]
def pCodeB72 (i : Nat) : Certgen.Code := tableBlock% i 72 [.var 0,.lam 74,.var 0]
def pCode (i : Nat) : Certgen.Code := if i < 75 then (if i < 36 then (if i < 12 then pCodeB0 i else (if i < 24 then pCodeB12 i else pCodeB24 i)) else (if i < 60 then (if i < 48 then pCodeB36 i else pCodeB48 i) else (if i < 72 then pCodeB60 i else pCodeB72 i))) else .opaque
def lit74 : Term := .var 0
def lit54 : Term := .var 1
def lit73 : Term := .lam lit74
def lit21 : Term := .var 3
def lit53 : Term := .lam lit54
def lit70 : Term := .app lit74 lit74
def lit45 : Term := .lam lit73
def lit20 : Term := .lam lit21
def lit52 : Term := .lam lit53
def lit69 : Term := .lam lit70
def lit6 : Term := .app lit74 lit70
def lit43 : Term := .app lit74 lit45
def lit18 : Term := .app lit74 lit20
def lit50 : Term := .app lit74 lit52
def lit5 : Term := .lam lit6
def lit17 : Term := .app lit18 lit74
def lit64 : Term := .app lit69 lit69
def lit16 : Term := .app lit17 lit54
def lit15 : Term := .lam lit16
def lit13 : Term := .app lit54 lit15
def lit12 : Term := .lam lit13
def lit11 : Term := .lam lit12
def lit49 : Term := .app lit50 lit64
def lit48 : Term := .lam lit49
def lit4 : Term := .app lit5 lit11
def lit42 : Term := .app lit43 lit48
def lit41 : Term := .lam lit42
def lit3 : Term := .app lit4 lit52
def lit35 : Term := .app lit50 lit41
def lit34 : Term := .lam lit35
def lit28 : Term := .app lit50 lit34
def lit27 : Term := .lam lit28
def lit2 : Term := .app lit3 lit27
def lit1 : Term := .app lit2 lit64
def lit0 : Term := .app lit1 lit73
def getTermB0 (i : Nat) : Term := tableBlock% i 0 [lit0,lit1,lit2,lit3,lit4,lit5,lit6,lit74,lit70,lit74,lit74,lit11]
def getTermB12 (i : Nat) : Term := tableBlock% i 12 [lit12,lit13,lit54,lit15,lit16,lit17,lit18,lit74,lit20,lit21,lit74,lit54]
def getTermB24 (i : Nat) : Term := tableBlock% i 24 [lit52,lit53,lit54,lit27,lit28,lit50,lit74,lit52,lit53,lit54,lit34,lit35]
def getTermB36 (i : Nat) : Term := tableBlock% i 36 [lit50,lit74,lit52,lit53,lit54,lit41,lit42,lit43,lit74,lit45,lit73,lit74]
def getTermB48 (i : Nat) : Term := tableBlock% i 48 [lit48,lit49,lit50,lit74,lit52,lit53,lit54,lit64,lit69,lit70,lit74,lit74]
def getTermB60 (i : Nat) : Term := tableBlock% i 60 [lit69,lit70,lit74,lit74,lit64,lit69,lit70,lit74,lit74,lit69,lit70,lit74]
def getTermB72 (i : Nat) : Term := tableBlock% i 72 [lit74,lit73,lit74]
def getTerm (i : Nat) : Term := if i < 75 then (if i < 36 then (if i < 12 then getTermB0 i else (if i < 24 then getTermB12 i else getTermB24 i)) else (if i < 60 then (if i < 48 then getTermB36 i else getTermB48 i) else (if i < 72 then getTermB60 i else getTermB72 i))) else .var 0
def align := RegProof.aligned getTerm pCode
theorem al0 : RegProof.Span align 0 10 := RegProof.block (n := 10) (by decide +kernel)
theorem al10 : RegProof.Span align 10 20 := RegProof.block (n := 10) (by decide +kernel)
theorem al20 : RegProof.Span align 20 30 := RegProof.block (n := 10) (by decide +kernel)
theorem al30 : RegProof.Span align 30 40 := RegProof.block (n := 10) (by decide +kernel)
theorem al40 : RegProof.Span align 40 50 := RegProof.block (n := 10) (by decide +kernel)
theorem al50 : RegProof.Span align 50 60 := RegProof.block (n := 10) (by decide +kernel)
theorem al60 : RegProof.Span align 60 70 := RegProof.block (n := 10) (by decide +kernel)
theorem al70 : RegProof.Span align 70 75 := RegProof.block (n := 5) (by decide +kernel)
theorem alAll : RegProof.Span align 0 75 := (RegProof.merge (RegProof.merge (RegProof.merge al0 al10) (RegProof.merge al20 al30)) (RegProof.merge (RegProof.merge al40 al50) (RegProof.merge al60 al70)))
def mdl : Model pCode := RegProof.alignedModel getTerm pCode (by
  intro i
  by_cases h : i < 75
  · exact alAll i (by omega) h
  · simp [RegProof.aligned,pCode,h])
def valuesB0 (i : Nat) : List AClo := tableBlock% i 0 [[⟨64,[]⟩],[⟨15,[6,4]⟩],[⟨22,[10,6,4]⟩,⟨22,[14,8,1]⟩],[⟨8,[17]⟩],[⟨10,[17]⟩],[⟨73,[]⟩],[⟨15,[9,3]⟩],[⟨23,[10,6,4]⟩,⟨23,[14,8,1]⟩],[⟨27,[]⟩],[⟨24,[]⟩],[⟨15,[8,1]⟩],[⟨15,[7,2]⟩]]
def valuesB12 (i : Nat) : List AClo := tableBlock% i 12 [[⟨22,[12,6,4]⟩,⟨22,[13,7,2]⟩],[⟨20,[11,8,1]⟩],[⟨20,[10,6,4]⟩],[⟨20,[14,8,1]⟩],[⟨20,[12,6,4]⟩,⟨20,[13,7,2]⟩],[⟨11,[]⟩],[⟨69,[]⟩],[⟨68,[18]⟩],[⟨72,[19]⟩,⟨72,[20]⟩]]
def values (i : Nat) : List AClo := if i < 21 then (if i < 12 then valuesB0 i else valuesB12 i) else []
def kontsB0 (i : Nat) : List Frame := tableBlock% i 0 [[],[⟨⟨73,[]⟩,0⟩],[⟨⟨64,[]⟩,1⟩],[⟨⟨15,[5,0]⟩,0⟩],[⟨⟨15,[6,4]⟩,23⟩],[⟨⟨15,[7,2]⟩,2⟩,⟨⟨15,[7,2]⟩,13⟩],[⟨⟨15,[8,1]⟩,2⟩],[⟨⟨15,[9,3]⟩,23⟩],[⟨⟨23,[10,6,4]⟩,2⟩],[⟨⟨23,[11,8,1]⟩,2⟩,⟨⟨23,[11,8,1]⟩,13⟩],[⟨⟨23,[12,6,4]⟩,10⟩,⟨⟨23,[12,6,4]⟩,11⟩],[⟨⟨23,[13,7,2]⟩,14⟩]]
def kontsB12 (i : Nat) : List Frame := tableBlock% i 12 [[⟨⟨23,[14,8,1]⟩,13⟩],[⟨⟨22,[10,6,4]⟩,8⟩],[⟨⟨22,[11,8,1]⟩,9⟩],[⟨⟨22,[12,6,4]⟩,10⟩],[⟨⟨22,[13,7,2]⟩,11⟩],[⟨⟨22,[14,8,1]⟩,12⟩],[⟨⟨20,[10,6,4]⟩,13⟩],[⟨⟨20,[11,8,1]⟩,14⟩],[⟨⟨20,[12,6,4]⟩,15⟩],[⟨⟨20,[13,7,2]⟩,16⟩],[⟨⟨20,[14,8,1]⟩,17⟩],[⟨⟨27,[]⟩,2⟩]]
def kontsB24 (i : Nat) : List Frame := tableBlock% i 24 [[⟨⟨24,[]⟩,23⟩],[⟨⟨11,[]⟩,24⟩],[⟨⟨8,[17]⟩,24⟩],[⟨⟨69,[]⟩,3⟩],[⟨⟨68,[18]⟩,3⟩],[⟨⟨72,[19]⟩,3⟩],[⟨⟨72,[20]⟩,3⟩],[⟨⟨10,[17]⟩,7⟩]]
def konts (i : Nat) : List Frame := if i < 32 then (if i < 12 then kontsB0 i else (if i < 24 then kontsB12 i else kontsB24 i)) else []
def getStB0 (i : Nat) : AState := tableBlock% i 0 [⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[]⟩,23⟩,⟨⟨4,[]⟩,24⟩,⟨⟨5,[]⟩,25⟩,⟨⟨6,[17]⟩,24⟩,⟨⟨7,[17]⟩,26⟩,⟨⟨8,[17]⟩,7⟩,⟨⟨9,[17]⟩,31⟩,⟨⟨10,[17]⟩,2⟩,⟨⟨10,[17]⟩,4⟩]
def getStB12 (i : Nat) : AState := tableBlock% i 12 [⟨⟨10,[17]⟩,13⟩,⟨⟨10,[17]⟩,17⟩,⟨⟨11,[]⟩,2⟩,⟨⟨11,[]⟩,4⟩,⟨⟨11,[]⟩,13⟩,⟨⟨11,[]⟩,17⟩,⟨⟨11,[]⟩,26⟩,⟨⟨11,[]⟩,31⟩,⟨⟨12,[0]⟩,1⟩,⟨⟨12,[1]⟩,23⟩,⟨⟨12,[2]⟩,8⟩,⟨⟨12,[2]⟩,12⟩]
def getStB24 (i : Nat) : AState := tableBlock% i 24 [⟨⟨12,[3]⟩,24⟩,⟨⟨12,[4]⟩,7⟩,⟨⟨13,[5,0]⟩,0⟩,⟨⟨13,[6,4]⟩,23⟩,⟨⟨13,[7,2]⟩,2⟩,⟨⟨13,[7,2]⟩,13⟩,⟨⟨13,[8,1]⟩,2⟩,⟨⟨13,[9,3]⟩,23⟩,⟨⟨14,[5,0]⟩,3⟩,⟨⟨14,[6,4]⟩,4⟩,⟨⟨14,[7,2]⟩,5⟩,⟨⟨14,[8,1]⟩,6⟩]
def getStB36 (i : Nat) : AState := tableBlock% i 36 [⟨⟨14,[9,3]⟩,7⟩,⟨⟨15,[6,4]⟩,6⟩,⟨⟨15,[6,4]⟩,15⟩,⟨⟨15,[6,4]⟩,16⟩,⟨⟨15,[7,2]⟩,19⟩,⟨⟨15,[8,1]⟩,5⟩,⟨⟨15,[8,1]⟩,18⟩,⟨⟨16,[10,6,4]⟩,2⟩,⟨⟨16,[11,8,1]⟩,2⟩,⟨⟨16,[11,8,1]⟩,13⟩,⟨⟨16,[12,6,4]⟩,10⟩,⟨⟨16,[12,6,4]⟩,11⟩]
def getStB48 (i : Nat) : AState := tableBlock% i 48 [⟨⟨16,[13,7,2]⟩,14⟩,⟨⟨16,[14,8,1]⟩,13⟩,⟨⟨17,[10,6,4]⟩,8⟩,⟨⟨17,[11,8,1]⟩,9⟩,⟨⟨17,[12,6,4]⟩,10⟩,⟨⟨17,[13,7,2]⟩,11⟩,⟨⟨17,[14,8,1]⟩,12⟩,⟨⟨18,[10,6,4]⟩,13⟩,⟨⟨18,[11,8,1]⟩,14⟩,⟨⟨18,[12,6,4]⟩,15⟩,⟨⟨18,[13,7,2]⟩,16⟩,⟨⟨18,[14,8,1]⟩,17⟩]
def getStB60 (i : Nat) : AState := tableBlock% i 60 [⟨⟨19,[10,6,4]⟩,18⟩,⟨⟨19,[11,8,1]⟩,19⟩,⟨⟨19,[12,6,4]⟩,20⟩,⟨⟨19,[13,7,2]⟩,21⟩,⟨⟨19,[14,8,1]⟩,22⟩,⟨⟨20,[10,6,4]⟩,5⟩,⟨⟨20,[10,6,4]⟩,22⟩,⟨⟨20,[11,8,1]⟩,20⟩,⟨⟨20,[11,8,1]⟩,21⟩,⟨⟨21,[11,10,6,4]⟩,2⟩,⟨⟨21,[11,10,6,4]⟩,13⟩,⟨⟨21,[15,10,6,4]⟩,17⟩]
def getStB72 (i : Nat) : AState := tableBlock% i 72 [⟨⟨21,[16,11,8,1]⟩,15⟩,⟨⟨21,[16,11,8,1]⟩,16⟩,⟨⟨22,[10,6,4]⟩,5⟩,⟨⟨22,[12,6,4]⟩,20⟩,⟨⟨22,[13,7,2]⟩,20⟩,⟨⟨22,[14,8,1]⟩,5⟩,⟨⟨64,[]⟩,3⟩,⟨⟨65,[]⟩,27⟩,⟨⟨66,[18]⟩,3⟩,⟨⟨67,[18]⟩,28⟩,⟨⟨68,[18]⟩,29⟩,⟨⟨68,[18]⟩,30⟩]
def getStB84 (i : Nat) : AState := tableBlock% i 84 [⟨⟨69,[]⟩,28⟩,⟨⟨69,[]⟩,29⟩,⟨⟨69,[]⟩,30⟩,⟨⟨70,[19]⟩,3⟩,⟨⟨70,[20]⟩,3⟩,⟨⟨71,[19]⟩,29⟩,⟨⟨71,[20]⟩,30⟩,⟨⟨72,[19]⟩,30⟩,⟨⟨72,[20]⟩,30⟩]
def getSt (i : Nat) : AState := if i < 93 then (if i < 48 then (if i < 24 then (if i < 12 then getStB0 i else getStB12 i) else (if i < 36 then getStB24 i else getStB36 i)) else (if i < 72 then (if i < 60 then getStB48 i else getStB60 i) else (if i < 84 then getStB72 i else getStB84 i))) else entry
def hintsB0 (i : Nat) : List Nat := tableBlock% i 0 [[1],[2],[3],[4],[5],[6],[7],[18],[9],[19],[14],[15]]
def hintsB12 (i : Nat) : List Nat := tableBlock% i 12 [[16],[17],[20],[21],[22],[23],[24],[25],[26],[30],[28],[29]]
def hintsB24 (i : Nat) : List Nat := tableBlock% i 24 [[31],[27],[32],[33],[34],[34],[35],[36],[78],[11],[74,77],[37]]
def hintsB36 (i : Nat) : List Nat := tableBlock% i 36 [[8],[43],[46],[47],[48],[44,45],[49],[50],[51],[51],[52],[52]]
def hintsB48 (i : Nat) : List Nat := tableBlock% i 48 [[53],[54],[55],[56],[57],[58],[59],[60],[61],[62],[63],[64]]
def hintsB60 (i : Nat) : List Nat := tableBlock% i 60 [[42],[40],[75,76],[68],[66],[69,70],[71],[72],[73],[10],[12],[13]]
def hintsB72 (i : Nat) : List Nat := tableBlock% i 72 [[38],[39],[41],[75,76],[67],[65],[79],[80],[81],[84],[85],[86]]
def hintsB84 (i : Nat) : List Nat := tableBlock% i 84 [[87],[88],[88],[89],[90],[82],[91,92],[83],[91,92]]
def hints (i : Nat) : List Nat := if i < 93 then (if i < 48 then (if i < 24 then (if i < 12 then hintsB0 i else hintsB12 i) else (if i < 36 then hintsB24 i else hintsB36 i)) else (if i < 72 then (if i < 60 then hintsB48 i else hintsB60 i) else (if i < 84 then hintsB72 i else hintsB84 i))) else []
def ck (i : Nat) := FloorIndex.check pCode values konts (RegProof.states 93 getSt) i (hints i)
end Blc.Floor45.Reg9676620391382
