import Blc.SelfintResidual45.TableNotation
import Blc.SelfintResidual45.RegProof

set_option Elab.async false
namespace Blc.Floor45.Reg9690391395638
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
def pCodeB0 (i : Nat) : Certgen.Code := tableBlock% i 0 [.app 1 73,.app 2 64,.app 3 27,.app 4 24,.app 5 9,.lam 6,.app 7 8,.var 0,.var 0,.lam 10,.lam 11,.app 12 13]
def pCodeB12 (i : Nat) : Certgen.Code := tableBlock% i 12 [.var 1,.lam 14,.app 15 21,.app 16 20,.app 17 18,.var 0,.lam 19,.var 3,.var 0,.app 22 23,.var 0,.var 1]
def pCodeB24 (i : Nat) : Certgen.Code := tableBlock% i 24 [.lam 25,.lam 26,.var 1,.lam 28,.app 29 34,.app 30 31,.var 0,.lam 32,.lam 33,.var 1,.lam 35,.app 36 41]
def pCodeB36 (i : Nat) : Certgen.Code := tableBlock% i 36 [.app 37 38,.var 0,.lam 39,.lam 40,.var 1,.lam 42,.app 43 48,.app 44 45,.var 0,.lam 46,.lam 47,.var 0]
def pCodeB48 (i : Nat) : Certgen.Code := tableBlock% i 48 [.lam 49,.app 50 55,.app 51 52,.var 0,.lam 53,.lam 54,.var 1,.app 56 60,.lam 57,.app 58 59,.var 0,.var 0]
def pCodeB60 (i : Nat) : Certgen.Code := tableBlock% i 60 [.lam 61,.app 62 63,.var 0,.var 0,.app 65 69,.lam 66,.app 67 68,.var 0,.var 0,.lam 70,.app 71 72,.var 0]
def pCodeB72 (i : Nat) : Certgen.Code := tableBlock% i 72 [.var 0,.lam 74,.var 0]
def pCode (i : Nat) : Certgen.Code := if i < 75 then (if i < 36 then (if i < 12 then pCodeB0 i else (if i < 24 then pCodeB12 i else pCodeB24 i)) else (if i < 60 then (if i < 48 then pCodeB36 i else pCodeB48 i) else (if i < 72 then pCodeB60 i else pCodeB72 i))) else .opaque
def lit74 : Term := .var 0
def lit54 : Term := .var 1
def lit73 : Term := .lam lit74
def lit19 : Term := .var 3
def lit53 : Term := .lam lit54
def lit70 : Term := .app lit74 lit74
def lit45 : Term := .lam lit73
def lit18 : Term := .lam lit19
def lit21 : Term := .app lit74 lit54
def lit52 : Term := .lam lit53
def lit69 : Term := .lam lit70
def lit43 : Term := .app lit74 lit45
def lit16 : Term := .app lit74 lit18
def lit50 : Term := .app lit74 lit52
def lit15 : Term := .app lit16 lit74
def lit64 : Term := .app lit69 lit69
def lit14 : Term := .app lit15 lit21
def lit13 : Term := .lam lit14
def lit11 : Term := .app lit54 lit13
def lit49 : Term := .app lit50 lit64
def lit10 : Term := .lam lit11
def lit48 : Term := .lam lit49
def lit9 : Term := .lam lit10
def lit4 : Term := .app lit69 lit9
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
def getTermB0 (i : Nat) : Term := tableBlock% i 0 [lit0,lit1,lit2,lit3,lit4,lit69,lit70,lit74,lit74,lit9,lit10,lit11]
def getTermB12 (i : Nat) : Term := tableBlock% i 12 [lit54,lit13,lit14,lit15,lit16,lit74,lit18,lit19,lit74,lit21,lit74,lit54]
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
def valuesB0 (i : Nat) : List AClo := tableBlock% i 0 [[⟨73,[]⟩],[⟨21,[5,3,18]⟩,⟨21,[8,2,16]⟩],[⟨27,[]⟩],[⟨24,[]⟩],[⟨13,[1,17]⟩],[⟨13,[2,16]⟩],[⟨20,[6,3,18]⟩,⟨20,[7,1,17]⟩],[⟨18,[4,2,16]⟩],[⟨18,[5,3,18]⟩],[⟨18,[6,3,18]⟩,⟨18,[7,1,17]⟩],[⟨18,[8,2,16]⟩],[⟨9,[]⟩]]
def valuesB12 (i : Nat) : List AClo := tableBlock% i 12 [[⟨69,[]⟩],[⟨68,[12]⟩],[⟨72,[13]⟩,⟨72,[14]⟩],[⟨64,[]⟩],[⟨13,[3,18]⟩],[⟨20,[5,3,18]⟩,⟨20,[8,2,16]⟩],[⟨8,[11]⟩]]
def values (i : Nat) : List AClo := if i < 19 then (if i < 12 then valuesB0 i else valuesB12 i) else []
def kontsB0 (i : Nat) : List Frame := tableBlock% i 0 [[],[⟨⟨73,[]⟩,0⟩],[⟨⟨64,[]⟩,1⟩],[⟨⟨13,[0,15]⟩,0⟩],[⟨⟨13,[1,17]⟩,2⟩,⟨⟨13,[1,17]⟩,13⟩],[⟨⟨13,[2,16]⟩,2⟩],[⟨⟨13,[3,18]⟩,22⟩],[⟨⟨21,[4,2,16]⟩,2⟩,⟨⟨21,[4,2,16]⟩,13⟩],[⟨⟨21,[5,3,18]⟩,2⟩],[⟨⟨21,[6,3,18]⟩,9⟩,⟨⟨21,[6,3,18]⟩,10⟩],[⟨⟨21,[7,1,17]⟩,12⟩],[⟨⟨21,[8,2,16]⟩,13⟩]]
def kontsB12 (i : Nat) : List Frame := tableBlock% i 12 [[⟨⟨20,[4,2,16]⟩,7⟩],[⟨⟨20,[5,3,18]⟩,8⟩],[⟨⟨20,[6,3,18]⟩,9⟩],[⟨⟨20,[7,1,17]⟩,10⟩],[⟨⟨20,[8,2,16]⟩,11⟩],[⟨⟨18,[4,2,16]⟩,12⟩],[⟨⟨18,[5,3,18]⟩,13⟩],[⟨⟨18,[6,3,18]⟩,14⟩],[⟨⟨18,[7,1,17]⟩,15⟩],[⟨⟨18,[8,2,16]⟩,16⟩],[⟨⟨27,[]⟩,2⟩],[⟨⟨24,[]⟩,22⟩]]
def kontsB24 (i : Nat) : List Frame := tableBlock% i 24 [[⟨⟨9,[]⟩,23⟩],[⟨⟨8,[11]⟩,23⟩],[⟨⟨69,[]⟩,3⟩],[⟨⟨68,[12]⟩,3⟩],[⟨⟨72,[13]⟩,3⟩],[⟨⟨72,[14]⟩,3⟩]]
def konts (i : Nat) : List Frame := if i < 30 then (if i < 12 then kontsB0 i else (if i < 24 then kontsB12 i else kontsB24 i)) else []
def getStB0 (i : Nat) : AState := tableBlock% i 0 [⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[]⟩,22⟩,⟨⟨4,[]⟩,23⟩,⟨⟨5,[]⟩,24⟩,⟨⟨6,[11]⟩,23⟩,⟨⟨7,[11]⟩,25⟩,⟨⟨8,[11]⟩,2⟩,⟨⟨8,[11]⟩,6⟩,⟨⟨8,[11]⟩,13⟩,⟨⟨8,[11]⟩,16⟩]
def getStB12 (i : Nat) : AState := tableBlock% i 12 [⟨⟨9,[]⟩,2⟩,⟨⟨9,[]⟩,6⟩,⟨⟨9,[]⟩,13⟩,⟨⟨9,[]⟩,16⟩,⟨⟨9,[]⟩,25⟩,⟨⟨10,[15]⟩,1⟩,⟨⟨10,[16]⟩,22⟩,⟨⟨10,[17]⟩,8⟩,⟨⟨10,[17]⟩,11⟩,⟨⟨10,[18]⟩,23⟩,⟨⟨11,[0,15]⟩,0⟩,⟨⟨11,[1,17]⟩,2⟩]
def getStB24 (i : Nat) : AState := tableBlock% i 24 [⟨⟨11,[1,17]⟩,13⟩,⟨⟨11,[2,16]⟩,2⟩,⟨⟨11,[3,18]⟩,22⟩,⟨⟨12,[0,15]⟩,3⟩,⟨⟨12,[1,17]⟩,4⟩,⟨⟨12,[2,16]⟩,5⟩,⟨⟨12,[3,18]⟩,6⟩,⟨⟨13,[1,17]⟩,17⟩,⟨⟨13,[2,16]⟩,4⟩,⟨⟨13,[2,16]⟩,18⟩,⟨⟨13,[3,18]⟩,5⟩,⟨⟨13,[3,18]⟩,14⟩]
def getStB36 (i : Nat) : AState := tableBlock% i 36 [⟨⟨13,[3,18]⟩,15⟩,⟨⟨14,[4,2,16]⟩,2⟩,⟨⟨14,[4,2,16]⟩,13⟩,⟨⟨14,[5,3,18]⟩,2⟩,⟨⟨14,[6,3,18]⟩,9⟩,⟨⟨14,[6,3,18]⟩,10⟩,⟨⟨14,[7,1,17]⟩,12⟩,⟨⟨14,[8,2,16]⟩,13⟩,⟨⟨15,[4,2,16]⟩,7⟩,⟨⟨15,[5,3,18]⟩,8⟩,⟨⟨15,[6,3,18]⟩,9⟩,⟨⟨15,[7,1,17]⟩,10⟩]
def getStB48 (i : Nat) : AState := tableBlock% i 48 [⟨⟨15,[8,2,16]⟩,11⟩,⟨⟨16,[4,2,16]⟩,12⟩,⟨⟨16,[5,3,18]⟩,13⟩,⟨⟨16,[6,3,18]⟩,14⟩,⟨⟨16,[7,1,17]⟩,15⟩,⟨⟨16,[8,2,16]⟩,16⟩,⟨⟨17,[4,2,16]⟩,17⟩,⟨⟨17,[5,3,18]⟩,18⟩,⟨⟨17,[6,3,18]⟩,19⟩,⟨⟨17,[7,1,17]⟩,20⟩,⟨⟨17,[8,2,16]⟩,21⟩,⟨⟨18,[4,2,16]⟩,19⟩]
def getStB60 (i : Nat) : AState := tableBlock% i 60 [⟨⟨18,[4,2,16]⟩,20⟩,⟨⟨18,[5,3,18]⟩,4⟩,⟨⟨18,[5,3,18]⟩,21⟩,⟨⟨19,[4,5,3,18]⟩,2⟩,⟨⟨19,[4,5,3,18]⟩,13⟩,⟨⟨19,[9,4,2,16]⟩,14⟩,⟨⟨19,[9,4,2,16]⟩,15⟩,⟨⟨19,[10,5,3,18]⟩,16⟩,⟨⟨20,[5,3,18]⟩,4⟩,⟨⟨20,[6,3,18]⟩,19⟩,⟨⟨20,[7,1,17]⟩,19⟩,⟨⟨20,[8,2,16]⟩,4⟩]
def getStB72 (i : Nat) : AState := tableBlock% i 72 [⟨⟨64,[]⟩,3⟩,⟨⟨65,[]⟩,26⟩,⟨⟨66,[12]⟩,3⟩,⟨⟨67,[12]⟩,27⟩,⟨⟨68,[12]⟩,28⟩,⟨⟨68,[12]⟩,29⟩,⟨⟨69,[]⟩,27⟩,⟨⟨69,[]⟩,28⟩,⟨⟨69,[]⟩,29⟩,⟨⟨70,[13]⟩,3⟩,⟨⟨70,[14]⟩,3⟩,⟨⟨71,[13]⟩,28⟩]
def getStB84 (i : Nat) : AState := tableBlock% i 84 [⟨⟨71,[14]⟩,29⟩,⟨⟨72,[13]⟩,29⟩,⟨⟨72,[14]⟩,29⟩]
def getSt (i : Nat) : AState := if i < 87 then (if i < 48 then (if i < 24 then (if i < 12 then getStB0 i else getStB12 i) else (if i < 36 then getStB24 i else getStB36 i)) else (if i < 72 then (if i < 60 then getStB48 i else getStB60 i) else (if i < 84 then getStB72 i else getStB84 i))) else entry
def hintsB0 (i : Nat) : List Nat := tableBlock% i 0 [[1],[2],[3],[4],[5],[6],[7],[16],[12],[13],[14],[15]]
def hintsB12 (i : Nat) : List Nat := tableBlock% i 12 [[17],[18],[19],[20],[21],[22],[25],[23],[24],[26],[27],[28]]
def hintsB24 (i : Nat) : List Nat := tableBlock% i 24 [[28],[29],[30],[72],[68,71],[34],[9],[42],[37,38],[43],[39],[40]]
def hintsB36 (i : Nat) : List Nat := tableBlock% i 36 [[41],[44],[44],[45],[46],[46],[47],[48],[49],[50],[51],[52]]
def hintsB48 (i : Nat) : List Nat := tableBlock% i 48 [[53],[54],[55],[56],[57],[58],[31],[33],[69,70],[60],[62],[65]]
def hintsB60 (i : Nat) : List Nat := tableBlock% i 60 [[66],[63,64],[67],[8],[10],[35],[36],[11],[32],[69,70],[59],[61]]
def hintsB72 (i : Nat) : List Nat := tableBlock% i 72 [[73],[74],[75],[78],[79],[80],[81],[82],[82],[83],[84],[76]]
def hintsB84 (i : Nat) : List Nat := tableBlock% i 84 [[85,86],[77],[85,86]]
def hints (i : Nat) : List Nat := if i < 87 then (if i < 48 then (if i < 24 then (if i < 12 then hintsB0 i else hintsB12 i) else (if i < 36 then hintsB24 i else hintsB36 i)) else (if i < 72 then (if i < 60 then hintsB48 i else hintsB60 i) else (if i < 84 then hintsB72 i else hintsB84 i))) else []
def ck (i : Nat) := FloorIndex.check pCode values konts (RegProof.states 87 getSt) i (hints i)
end Blc.Floor45.Reg9690391395638
