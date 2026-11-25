import Blc.SelfintResidual45.TableNotation
import Blc.SelfintResidual45.RegProof

set_option Elab.async false
namespace Blc.Floor45.Reg9692683226934
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
def pCodeB0 (i : Nat) : Certgen.Code := tableBlock% i 0 [.app 1 73,.app 2 64,.app 3 27,.app 4 24,.app 5 9,.lam 6,.app 7 8,.var 0,.var 0,.lam 10,.app 11 12,.var 0]
def pCodeB12 (i : Nat) : Certgen.Code := tableBlock% i 12 [.lam 13,.lam 14,.app 15 16,.var 2,.lam 17,.app 18 19,.var 0,.app 20 21,.var 2,.app 22 23,.var 0,.var 1]
def pCodeB24 (i : Nat) : Certgen.Code := tableBlock% i 24 [.lam 25,.lam 26,.var 1,.lam 28,.app 29 34,.app 30 31,.var 0,.lam 32,.lam 33,.var 1,.lam 35,.app 36 41]
def pCodeB36 (i : Nat) : Certgen.Code := tableBlock% i 36 [.app 37 38,.var 0,.lam 39,.lam 40,.var 1,.lam 42,.app 43 48,.app 44 45,.var 0,.lam 46,.lam 47,.var 0]
def pCodeB48 (i : Nat) : Certgen.Code := tableBlock% i 48 [.lam 49,.app 50 55,.app 51 52,.var 0,.lam 53,.lam 54,.var 1,.app 56 60,.lam 57,.app 58 59,.var 0,.var 0]
def pCodeB60 (i : Nat) : Certgen.Code := tableBlock% i 60 [.lam 61,.app 62 63,.var 0,.var 0,.app 65 69,.lam 66,.app 67 68,.var 0,.var 0,.lam 70,.app 71 72,.var 0]
def pCodeB72 (i : Nat) : Certgen.Code := tableBlock% i 72 [.var 0,.lam 74,.var 0]
def pCode (i : Nat) : Certgen.Code := if i < 75 then (if i < 36 then (if i < 12 then pCodeB0 i else (if i < 24 then pCodeB12 i else pCodeB24 i)) else (if i < 60 then (if i < 48 then pCodeB36 i else pCodeB48 i) else (if i < 72 then pCodeB60 i else pCodeB72 i))) else .opaque
def lit74 : Term := .var 0
def lit54 : Term := .var 1
def lit20 : Term := .var 2
def lit73 : Term := .lam lit74
def lit53 : Term := .lam lit54
def lit70 : Term := .app lit74 lit74
def lit45 : Term := .lam lit73
def lit21 : Term := .app lit74 lit54
def lit52 : Term := .lam lit53
def lit69 : Term := .lam lit70
def lit43 : Term := .app lit74 lit45
def lit50 : Term := .app lit74 lit52
def lit19 : Term := .app lit20 lit21
def lit17 : Term := .app lit74 lit19
def lit64 : Term := .app lit69 lit69
def lit16 : Term := .lam lit17
def lit14 : Term := .app lit20 lit16
def lit13 : Term := .lam lit14
def lit12 : Term := .lam lit13
def lit49 : Term := .app lit50 lit64
def lit10 : Term := .app lit74 lit12
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
def getTermB0 (i : Nat) : Term := tableBlock% i 0 [lit0,lit1,lit2,lit3,lit4,lit69,lit70,lit74,lit74,lit9,lit10,lit74]
def getTermB12 (i : Nat) : Term := tableBlock% i 12 [lit12,lit13,lit14,lit20,lit16,lit17,lit74,lit19,lit20,lit21,lit74,lit54]
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
def valuesB0 (i : Nat) : List AClo := tableBlock% i 0 [[⟨12,[23]⟩],[⟨16,[6,3,23]⟩],[⟨19,[9,5,1,26]⟩,⟨19,[10,8,0,26]⟩],[⟨21,[12,8,0,26]⟩],[⟨73,[]⟩],[⟨64,[]⟩],[⟨19,[14,7,2,25]⟩],[⟨27,[]⟩],[⟨24,[]⟩],[⟨12,[24]⟩],[⟨12,[25]⟩],[⟨16,[4,2,24]⟩]]
def valuesB12 (i : Nat) : List AClo := tableBlock% i 12 [[⟨16,[7,2,25]⟩],[⟨19,[11,5,1,26]⟩],[⟨19,[12,8,0,26]⟩],[⟨21,[11,5,1,26]⟩],[⟨23,[11,5,1,26]⟩],[⟨9,[]⟩],[⟨69,[]⟩],[⟨68,[18]⟩],[⟨72,[19]⟩],[⟨72,[20]⟩],[⟨72,[21]⟩,⟨72,[22]⟩],[⟨12,[26]⟩]]
def valuesB24 (i : Nat) : List AClo := tableBlock% i 24 [[⟨16,[5,1,26]⟩],[⟨16,[8,0,26]⟩],[⟨8,[17]⟩]]
def values (i : Nat) : List AClo := if i < 27 then (if i < 12 then valuesB0 i else (if i < 24 then valuesB12 i else valuesB24 i)) else []
def kontsB0 (i : Nat) : List Frame := tableBlock% i 0 [[],[⟨⟨73,[]⟩,0⟩],[⟨⟨64,[]⟩,1⟩],[⟨⟨12,[23]⟩,24⟩],[⟨⟨12,[24]⟩,1⟩],[⟨⟨12,[25]⟩,22⟩],[⟨⟨12,[26]⟩,24⟩],[⟨⟨16,[4,2,24]⟩,0⟩],[⟨⟨16,[5,1,26]⟩,1⟩],[⟨⟨16,[6,3,23]⟩,2⟩],[⟨⟨16,[7,2,25]⟩,2⟩],[⟨⟨16,[8,0,26]⟩,22⟩]]
def kontsB12 (i : Nat) : List Frame := tableBlock% i 12 [[⟨⟨19,[9,5,1,26]⟩,1⟩],[⟨⟨19,[10,8,0,26]⟩,22⟩],[⟨⟨19,[11,5,1,26]⟩,0⟩],[⟨⟨19,[12,8,0,26]⟩,2⟩],[⟨⟨19,[13,4,2,24]⟩,0⟩],[⟨⟨19,[14,7,2,25]⟩,2⟩],[⟨⟨19,[15,6,3,23]⟩,16⟩],[⟨⟨19,[16,4,2,24]⟩,18⟩],[⟨⟨21,[11,5,1,26]⟩,16⟩],[⟨⟨21,[12,8,0,26]⟩,17⟩],[⟨⟨27,[]⟩,2⟩],[⟨⟨23,[11,5,1,26]⟩,18⟩]]
def kontsB24 (i : Nat) : List Frame := tableBlock% i 24 [[⟨⟨24,[]⟩,22⟩],[⟨⟨9,[]⟩,24⟩],[⟨⟨8,[17]⟩,24⟩],[⟨⟨69,[]⟩,19⟩],[⟨⟨68,[18]⟩,19⟩],[⟨⟨72,[19]⟩,19⟩],[⟨⟨72,[20]⟩,19⟩],[⟨⟨72,[21]⟩,19⟩],[⟨⟨72,[22]⟩,19⟩]]
def konts (i : Nat) : List Frame := if i < 33 then (if i < 12 then kontsB0 i else (if i < 24 then kontsB12 i else kontsB24 i)) else []
def getStB0 (i : Nat) : AState := tableBlock% i 0 [⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[]⟩,22⟩,⟨⟨4,[]⟩,24⟩,⟨⟨5,[]⟩,25⟩,⟨⟨6,[17]⟩,24⟩,⟨⟨7,[17]⟩,26⟩,⟨⟨8,[17]⟩,6⟩,⟨⟨8,[17]⟩,8⟩,⟨⟨8,[17]⟩,11⟩,⟨⟨9,[]⟩,6⟩]
def getStB12 (i : Nat) : AState := tableBlock% i 12 [⟨⟨9,[]⟩,8⟩,⟨⟨9,[]⟩,11⟩,⟨⟨9,[]⟩,26⟩,⟨⟨10,[23]⟩,24⟩,⟨⟨10,[24]⟩,1⟩,⟨⟨10,[25]⟩,22⟩,⟨⟨10,[26]⟩,24⟩,⟨⟨11,[23]⟩,3⟩,⟨⟨11,[24]⟩,4⟩,⟨⟨11,[25]⟩,5⟩,⟨⟨11,[26]⟩,6⟩,⟨⟨12,[23]⟩,21⟩]
def getStB24 (i : Nat) : AState := tableBlock% i 24 [⟨⟨12,[24]⟩,12⟩,⟨⟨12,[25]⟩,13⟩,⟨⟨12,[26]⟩,3⟩,⟨⟨12,[26]⟩,9⟩,⟨⟨13,[0,26]⟩,24⟩,⟨⟨13,[1,26]⟩,2⟩,⟨⟨13,[2,24]⟩,1⟩,⟨⟨13,[2,25]⟩,22⟩,⟨⟨13,[3,23]⟩,17⟩,⟨⟨14,[4,2,24]⟩,0⟩,⟨⟨14,[5,1,26]⟩,1⟩,⟨⟨14,[6,3,23]⟩,2⟩]
def getStB36 (i : Nat) : AState := tableBlock% i 36 [⟨⟨14,[7,2,25]⟩,2⟩,⟨⟨14,[8,0,26]⟩,22⟩,⟨⟨15,[4,2,24]⟩,7⟩,⟨⟨15,[5,1,26]⟩,8⟩,⟨⟨15,[6,3,23]⟩,9⟩,⟨⟨15,[7,2,25]⟩,10⟩,⟨⟨15,[8,0,26]⟩,11⟩,⟨⟨16,[4,2,24]⟩,14⟩,⟨⟨16,[4,2,24]⟩,23⟩,⟨⟨16,[5,1,26]⟩,4⟩,⟨⟨16,[5,1,26]⟩,7⟩,⟨⟨16,[6,3,23]⟩,20⟩]
def getStB48 (i : Nat) : AState := tableBlock% i 48 [⟨⟨16,[7,2,25]⟩,15⟩,⟨⟨16,[8,0,26]⟩,5⟩,⟨⟨16,[8,0,26]⟩,10⟩,⟨⟨17,[9,5,1,26]⟩,1⟩,⟨⟨17,[10,8,0,26]⟩,22⟩,⟨⟨17,[11,5,1,26]⟩,0⟩,⟨⟨17,[12,8,0,26]⟩,2⟩,⟨⟨17,[13,4,2,24]⟩,0⟩,⟨⟨17,[14,7,2,25]⟩,2⟩,⟨⟨17,[15,6,3,23]⟩,16⟩,⟨⟨17,[16,4,2,24]⟩,18⟩,⟨⟨18,[9,5,1,26]⟩,12⟩]
def getStB60 (i : Nat) : AState := tableBlock% i 60 [⟨⟨18,[10,8,0,26]⟩,13⟩,⟨⟨18,[11,5,1,26]⟩,14⟩,⟨⟨18,[12,8,0,26]⟩,15⟩,⟨⟨18,[13,4,2,24]⟩,16⟩,⟨⟨18,[14,7,2,25]⟩,17⟩,⟨⟨18,[15,6,3,23]⟩,18⟩,⟨⟨18,[16,4,2,24]⟩,19⟩,⟨⟨19,[11,5,1,26]⟩,16⟩,⟨⟨19,[12,8,0,26]⟩,17⟩,⟨⟨20,[11,5,1,26]⟩,20⟩,⟨⟨20,[12,8,0,26]⟩,21⟩,⟨⟨21,[11,5,1,26]⟩,18⟩]
def getStB72 (i : Nat) : AState := tableBlock% i 72 [⟨⟨22,[11,5,1,26]⟩,23⟩,⟨⟨23,[11,5,1,26]⟩,19⟩,⟨⟨64,[]⟩,19⟩,⟨⟨65,[]⟩,27⟩,⟨⟨66,[18]⟩,19⟩,⟨⟨67,[18]⟩,28⟩,⟨⟨68,[18]⟩,29⟩,⟨⟨68,[18]⟩,30⟩,⟨⟨68,[18]⟩,31⟩,⟨⟨68,[18]⟩,32⟩,⟨⟨69,[]⟩,28⟩,⟨⟨69,[]⟩,29⟩]
def getStB84 (i : Nat) : AState := tableBlock% i 84 [⟨⟨69,[]⟩,30⟩,⟨⟨69,[]⟩,31⟩,⟨⟨69,[]⟩,32⟩,⟨⟨70,[19]⟩,19⟩,⟨⟨70,[20]⟩,19⟩,⟨⟨70,[21]⟩,19⟩,⟨⟨70,[22]⟩,19⟩,⟨⟨71,[19]⟩,29⟩,⟨⟨71,[20]⟩,30⟩,⟨⟨71,[21]⟩,31⟩,⟨⟨71,[22]⟩,32⟩,⟨⟨72,[19]⟩,30⟩]
def getStB96 (i : Nat) : AState := tableBlock% i 96 [⟨⟨72,[19]⟩,31⟩,⟨⟨72,[19]⟩,32⟩,⟨⟨72,[20]⟩,31⟩,⟨⟨72,[20]⟩,32⟩,⟨⟨72,[21]⟩,32⟩,⟨⟨72,[22]⟩,32⟩]
def getSt (i : Nat) : AState := if i < 102 then (if i < 48 then (if i < 24 then (if i < 12 then getStB0 i else getStB12 i) else (if i < 36 then getStB24 i else getStB36 i)) else (if i < 72 then (if i < 60 then getStB48 i else getStB60 i) else (if i < 84 then getStB72 i else (if i < 96 then getStB84 i else getStB96 i)))) else entry
def hintsB0 (i : Nat) : List Nat := tableBlock% i 0 [[1],[2],[3],[4],[5],[6],[7],[14],[11],[12],[13],[15]]
def hintsB12 (i : Nat) : List Nat := tableBlock% i 12 [[16],[17],[18],[19],[20],[21],[22],[26],[45],[49],[8],[32]]
def hintsB24 (i : Nat) : List Nat := tableBlock% i 24 [[30],[31],[28],[29],[37],[34],[33],[36],[35],[38],[39],[40]]
def hintsB36 (i : Nat) : List Nat := tableBlock% i 36 [[41],[42],[46],[9],[27],[50],[10],[55],[58],[51],[53],[57]]
def hintsB48 (i : Nat) : List Nat := tableBlock% i 48 [[56],[52],[54],[59],[60],[61],[62],[63],[64],[65],[66],[24]]
def hintsB60 (i : Nat) : List Nat := tableBlock% i 60 [[25],[43],[48],[67],[68],[71],[73],[69],[70],[47],[23],[72]]
def hintsB72 (i : Nat) : List Nat := tableBlock% i 72 [[44],[74],[75],[76],[77],[82],[83],[84],[85],[86],[87],[88]]
def hintsB84 (i : Nat) : List Nat := tableBlock% i 84 [[89],[90],[90],[91],[92],[93],[94],[78],[95],[98],[100,101],[79]]
def hintsB96 (i : Nat) : List Nat := tableBlock% i 96 [[80],[81],[96],[97],[99],[100,101]]
def hints (i : Nat) : List Nat := if i < 102 then (if i < 48 then (if i < 24 then (if i < 12 then hintsB0 i else hintsB12 i) else (if i < 36 then hintsB24 i else hintsB36 i)) else (if i < 72 then (if i < 60 then hintsB48 i else hintsB60 i) else (if i < 84 then hintsB72 i else (if i < 96 then hintsB84 i else hintsB96 i)))) else []
def ck (i : Nat) := FloorIndex.check pCode values konts (RegProof.states 102 getSt) i (hints i)
end Blc.Floor45.Reg9692683226934
