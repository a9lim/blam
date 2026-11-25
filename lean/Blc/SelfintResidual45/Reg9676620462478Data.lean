import Blc.SelfintResidual45.TableNotation
import Blc.SelfintResidual45.RegProof

set_option Elab.async false
namespace Blc.Floor45.Reg9676620462478
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
def pCodeB0 (i : Nat) : Certgen.Code := tableBlock% i 0 [.app 1 55,.app 2 26,.app 3 23,.app 4 10,.lam 5,.app 6 7,.var 0,.app 8 9,.var 0,.var 0,.lam 11,.lam 12]
def pCodeB12 (i : Nat) : Certgen.Code := tableBlock% i 12 [.app 13 14,.var 1,.lam 15,.app 16 17,.var 0,.app 18 19,.var 2,.app 20 21,.var 0,.lam 22,.var 2,.lam 24]
def pCodeB24 (i : Nat) : Certgen.Code := tableBlock% i 24 [.lam 25,.var 0,.lam 27,.app 28 33,.app 29 30,.var 0,.lam 31,.lam 32,.var 1,.lam 34,.app 35 40,.app 36 37]
def pCodeB36 (i : Nat) : Certgen.Code := tableBlock% i 36 [.var 0,.lam 38,.lam 39,.var 1,.lam 41,.app 42 47,.app 43 44,.var 0,.lam 45,.lam 46,.var 0,.lam 48]
def pCodeB48 (i : Nat) : Certgen.Code := tableBlock% i 48 [.app 49 54,.app 50 51,.var 0,.lam 52,.lam 53,.var 1,.opaque,.app 56 60,.lam 57,.app 58 59,.var 0,.var 0]
def pCodeB60 (i : Nat) : Certgen.Code := tableBlock% i 60 [.lam 61,.app 62 63,.var 0,.var 0]
def pCode (i : Nat) : Certgen.Code := if i < 64 then (if i < 36 then (if i < 12 then pCodeB0 i else (if i < 24 then pCodeB12 i else pCodeB24 i)) else (if i < 48 then pCodeB36 i else (if i < 60 then pCodeB48 i else pCodeB60 i))) else .opaque
def lit63 : Term := .var 0
def lit53 : Term := .var 1
def lit22 : Term := .var 2
def lit45 : Term := .lam lit63
def lit52 : Term := .lam lit53
def lit61 : Term := .app lit63 lit63
def lit21 : Term := .lam lit22
def lit44 : Term := .lam lit45
def lit54 : Term := .var 4
def lit51 : Term := .lam lit52
def lit60 : Term := .lam lit61
def lit5 : Term := .app lit63 lit61
def lit19 : Term := .app lit63 lit21
def lit42 : Term := .app lit63 lit44
def lit49 : Term := .app lit63 lit51
def lit4 : Term := .lam lit5
def lit17 : Term := .app lit22 lit19
def lit55 : Term := .app lit60 lit60
def lit48 : Term := .app lit49 lit54
def lit15 : Term := .app lit63 lit17
def lit47 : Term := .lam lit48
def lit14 : Term := .lam lit15
def lit12 : Term := .app lit53 lit14
def lit11 : Term := .lam lit12
def lit10 : Term := .lam lit11
def lit41 : Term := .app lit42 lit47
def lit40 : Term := .lam lit41
def lit3 : Term := .app lit4 lit10
def lit34 : Term := .app lit49 lit40
def lit33 : Term := .lam lit34
def lit2 : Term := .app lit3 lit44
def lit27 : Term := .app lit49 lit33
def lit26 : Term := .lam lit27
def lit1 : Term := .app lit2 lit26
def lit0 : Term := .app lit1 lit55
def getTermB0 (i : Nat) : Term := tableBlock% i 0 [lit0,lit1,lit2,lit3,lit4,lit5,lit63,lit61,lit63,lit63,lit10,lit11]
def getTermB12 (i : Nat) : Term := tableBlock% i 12 [lit12,lit53,lit14,lit15,lit63,lit17,lit22,lit19,lit63,lit21,lit22,lit44]
def getTermB24 (i : Nat) : Term := tableBlock% i 24 [lit45,lit63,lit26,lit27,lit49,lit63,lit51,lit52,lit53,lit33,lit34,lit49]
def getTermB36 (i : Nat) : Term := tableBlock% i 36 [lit63,lit51,lit52,lit53,lit40,lit41,lit42,lit63,lit44,lit45,lit63,lit47]
def getTermB48 (i : Nat) : Term := tableBlock% i 48 [lit48,lit49,lit63,lit51,lit52,lit53,lit54,lit55,lit60,lit61,lit63,lit63]
def getTermB60 (i : Nat) : Term := tableBlock% i 60 [lit60,lit61,lit63,lit63]
def getTerm (i : Nat) : Term := if i < 64 then (if i < 36 then (if i < 12 then getTermB0 i else (if i < 24 then getTermB12 i else getTermB24 i)) else (if i < 48 then getTermB36 i else (if i < 60 then getTermB48 i else getTermB60 i))) else .var 0
def align := RegProof.aligned getTerm pCode
theorem al0 : RegProof.Span align 0 10 := RegProof.block (n := 10) (by decide +kernel)
theorem al10 : RegProof.Span align 10 20 := RegProof.block (n := 10) (by decide +kernel)
theorem al20 : RegProof.Span align 20 30 := RegProof.block (n := 10) (by decide +kernel)
theorem al30 : RegProof.Span align 30 40 := RegProof.block (n := 10) (by decide +kernel)
theorem al40 : RegProof.Span align 40 50 := RegProof.block (n := 10) (by decide +kernel)
theorem al50 : RegProof.Span align 50 60 := RegProof.block (n := 10) (by decide +kernel)
theorem al60 : RegProof.Span align 60 64 := RegProof.block (n := 4) (by decide +kernel)
theorem alAll : RegProof.Span align 0 64 := (RegProof.merge (RegProof.merge al0 (RegProof.merge al10 al20)) (RegProof.merge (RegProof.merge al30 al40) (RegProof.merge al50 al60)))
def mdl : Model pCode := RegProof.alignedModel getTerm pCode (by
  intro i
  by_cases h : i < 64
  · exact alAll i (by omega) h
  · simp [RegProof.aligned,pCode,h])
def valuesB0 (i : Nat) : List AClo := tableBlock% i 0 [[⟨14,[5,3]⟩,⟨14,[7,3]⟩],[⟨19,[9,5,3]⟩,⟨19,[9,7,3]⟩],[⟨7,[15]⟩],[⟨9,[15]⟩],[⟨26,[]⟩],[⟨14,[8,2]⟩],[⟨17,[10,4,0]⟩,⟨17,[10,6,0]⟩,⟨17,[10,6,1]⟩],[⟨19,[9,8,2]⟩],[⟨23,[]⟩],[⟨14,[4,0]⟩,⟨14,[6,0]⟩,⟨14,[6,1]⟩],[⟨17,[9,5,3]⟩,⟨17,[9,7,3]⟩,⟨17,[9,8,2]⟩],[⟨21,[9,5,3]⟩,⟨21,[9,7,3]⟩,⟨21,[9,8,2]⟩]]
def valuesB12 (i : Nat) : List AClo := tableBlock% i 12 [[⟨17,[11,4,0]⟩,⟨17,[11,6,0]⟩,⟨17,[11,6,1]⟩],[⟨14,[6,1]⟩],[⟨55,[]⟩],[⟨10,[]⟩],[⟨60,[]⟩],[⟨59,[16]⟩],[⟨63,[17]⟩,⟨63,[18]⟩]]
def values (i : Nat) : List AClo := if i < 19 then (if i < 12 then valuesB0 i else valuesB12 i) else []
def kontsB0 (i : Nat) : List Frame := tableBlock% i 0 [[],[⟨⟨55,[]⟩,0⟩],[⟨⟨26,[]⟩,1⟩],[⟨⟨14,[4,0]⟩,1⟩],[⟨⟨14,[5,3]⟩,2⟩],[⟨⟨14,[6,0]⟩,1⟩],[⟨⟨14,[6,1]⟩,1⟩],[⟨⟨14,[7,3]⟩,12⟩,⟨⟨14,[7,3]⟩,13⟩,⟨⟨14,[7,3]⟩,14⟩],[⟨⟨14,[8,2]⟩,2⟩],[⟨⟨17,[9,5,3]⟩,1⟩],[⟨⟨17,[9,7,3]⟩,1⟩],[⟨⟨17,[9,8,2]⟩,1⟩]]
def kontsB12 (i : Nat) : List Frame := tableBlock% i 12 [[⟨⟨17,[10,4,0]⟩,1⟩],[⟨⟨17,[10,6,0]⟩,1⟩],[⟨⟨17,[10,6,1]⟩,1⟩],[⟨⟨17,[11,4,0]⟩,6⟩],[⟨⟨17,[11,6,0]⟩,6⟩],[⟨⟨17,[11,6,1]⟩,6⟩],[⟨⟨19,[9,5,3]⟩,12⟩,⟨⟨19,[9,5,3]⟩,13⟩,⟨⟨19,[9,5,3]⟩,14⟩],[⟨⟨19,[9,7,3]⟩,12⟩,⟨⟨19,[9,7,3]⟩,13⟩,⟨⟨19,[9,7,3]⟩,14⟩],[⟨⟨19,[9,8,2]⟩,12⟩,⟨⟨19,[9,8,2]⟩,13⟩,⟨⟨19,[9,8,2]⟩,14⟩],[⟨⟨21,[9,5,3]⟩,6⟩],[⟨⟨21,[9,7,3]⟩,6⟩],[⟨⟨21,[9,8,2]⟩,6⟩]]
def kontsB24 (i : Nat) : List Frame := tableBlock% i 24 [[⟨⟨23,[]⟩,2⟩],[⟨⟨10,[]⟩,24⟩],[⟨⟨7,[15]⟩,24⟩],[⟨⟨60,[]⟩,0⟩],[⟨⟨59,[16]⟩,0⟩],[⟨⟨63,[17]⟩,0⟩],[⟨⟨63,[18]⟩,0⟩],[⟨⟨9,[15]⟩,8⟩],[⟨⟨9,[15]⟩,20⟩]]
def konts (i : Nat) : List Frame := if i < 33 then (if i < 12 then kontsB0 i else (if i < 24 then kontsB12 i else kontsB24 i)) else []
def getStB0 (i : Nat) : AState := tableBlock% i 0 [⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[]⟩,24⟩,⟨⟨4,[]⟩,25⟩,⟨⟨5,[15]⟩,24⟩,⟨⟨6,[15]⟩,26⟩,⟨⟨7,[15]⟩,8⟩,⟨⟨7,[15]⟩,20⟩,⟨⟨8,[15]⟩,31⟩,⟨⟨8,[15]⟩,32⟩,⟨⟨9,[15]⟩,4⟩]
def getStB12 (i : Nat) : AState := tableBlock% i 12 [⟨⟨9,[15]⟩,7⟩,⟨⟨9,[15]⟩,18⟩,⟨⟨9,[15]⟩,19⟩,⟨⟨10,[]⟩,4⟩,⟨⟨10,[]⟩,7⟩,⟨⟨10,[]⟩,18⟩,⟨⟨10,[]⟩,19⟩,⟨⟨10,[]⟩,26⟩,⟨⟨10,[]⟩,31⟩,⟨⟨10,[]⟩,32⟩,⟨⟨11,[0]⟩,2⟩,⟨⟨11,[0]⟩,12⟩]
def getStB24 (i : Nat) : AState := tableBlock% i 24 [⟨⟨11,[0]⟩,13⟩,⟨⟨11,[0]⟩,14⟩,⟨⟨11,[1]⟩,12⟩,⟨⟨11,[1]⟩,13⟩,⟨⟨11,[1]⟩,14⟩,⟨⟨11,[2]⟩,24⟩,⟨⟨11,[3]⟩,8⟩,⟨⟨11,[3]⟩,20⟩,⟨⟨12,[4,0]⟩,1⟩,⟨⟨12,[5,3]⟩,2⟩,⟨⟨12,[6,0]⟩,1⟩,⟨⟨12,[6,1]⟩,1⟩]
def getStB36 (i : Nat) : AState := tableBlock% i 36 [⟨⟨12,[7,3]⟩,12⟩,⟨⟨12,[7,3]⟩,13⟩,⟨⟨12,[7,3]⟩,14⟩,⟨⟨12,[8,2]⟩,2⟩,⟨⟨13,[4,0]⟩,3⟩,⟨⟨13,[5,3]⟩,4⟩,⟨⟨13,[6,0]⟩,5⟩,⟨⟨13,[6,1]⟩,6⟩,⟨⟨13,[7,3]⟩,7⟩,⟨⟨13,[8,2]⟩,8⟩,⟨⟨14,[4,0]⟩,9⟩,⟨⟨14,[4,0]⟩,10⟩]
def getStB48 (i : Nat) : AState := tableBlock% i 48 [⟨⟨14,[4,0]⟩,11⟩,⟨⟨14,[4,0]⟩,21⟩,⟨⟨14,[4,0]⟩,22⟩,⟨⟨14,[4,0]⟩,23⟩,⟨⟨14,[5,3]⟩,3⟩,⟨⟨14,[5,3]⟩,5⟩,⟨⟨14,[6,0]⟩,9⟩,⟨⟨14,[6,0]⟩,10⟩,⟨⟨14,[6,0]⟩,11⟩,⟨⟨14,[6,0]⟩,21⟩,⟨⟨14,[6,0]⟩,22⟩,⟨⟨14,[6,0]⟩,23⟩]
def getStB60 (i : Nat) : AState := tableBlock% i 60 [⟨⟨14,[6,1]⟩,9⟩,⟨⟨14,[6,1]⟩,10⟩,⟨⟨14,[6,1]⟩,11⟩,⟨⟨14,[6,1]⟩,21⟩,⟨⟨14,[6,1]⟩,22⟩,⟨⟨14,[6,1]⟩,23⟩,⟨⟨14,[7,3]⟩,3⟩,⟨⟨14,[7,3]⟩,5⟩,⟨⟨14,[8,2]⟩,6⟩,⟨⟨15,[9,5,3]⟩,1⟩,⟨⟨15,[9,7,3]⟩,1⟩,⟨⟨15,[9,8,2]⟩,1⟩]
def getStB72 (i : Nat) : AState := tableBlock% i 72 [⟨⟨15,[10,4,0]⟩,1⟩,⟨⟨15,[10,6,0]⟩,1⟩,⟨⟨15,[10,6,1]⟩,1⟩,⟨⟨15,[11,4,0]⟩,6⟩,⟨⟨15,[11,6,0]⟩,6⟩,⟨⟨15,[11,6,1]⟩,6⟩,⟨⟨16,[9,5,3]⟩,9⟩,⟨⟨16,[9,7,3]⟩,10⟩,⟨⟨16,[9,8,2]⟩,11⟩,⟨⟨16,[10,4,0]⟩,12⟩,⟨⟨16,[10,6,0]⟩,13⟩,⟨⟨16,[10,6,1]⟩,14⟩]
def getStB84 (i : Nat) : AState := tableBlock% i 84 [⟨⟨16,[11,4,0]⟩,15⟩,⟨⟨16,[11,6,0]⟩,16⟩,⟨⟨16,[11,6,1]⟩,17⟩,⟨⟨17,[9,5,3]⟩,12⟩,⟨⟨17,[9,5,3]⟩,13⟩,⟨⟨17,[9,5,3]⟩,14⟩,⟨⟨17,[9,7,3]⟩,12⟩,⟨⟨17,[9,7,3]⟩,13⟩,⟨⟨17,[9,7,3]⟩,14⟩,⟨⟨17,[9,8,2]⟩,12⟩,⟨⟨17,[9,8,2]⟩,13⟩,⟨⟨17,[9,8,2]⟩,14⟩]
def getStB96 (i : Nat) : AState := tableBlock% i 96 [⟨⟨18,[9,5,3]⟩,18⟩,⟨⟨18,[9,7,3]⟩,19⟩,⟨⟨18,[9,8,2]⟩,20⟩,⟨⟨19,[9,5,3]⟩,6⟩,⟨⟨19,[9,7,3]⟩,6⟩,⟨⟨19,[9,8,2]⟩,6⟩,⟨⟨20,[9,5,3]⟩,21⟩,⟨⟨20,[9,7,3]⟩,22⟩,⟨⟨20,[9,8,2]⟩,23⟩,⟨⟨21,[9,5,3]⟩,15⟩,⟨⟨21,[9,5,3]⟩,16⟩,⟨⟨21,[9,5,3]⟩,17⟩]
def getStB108 (i : Nat) : AState := tableBlock% i 108 [⟨⟨21,[9,7,3]⟩,15⟩,⟨⟨21,[9,7,3]⟩,16⟩,⟨⟨21,[9,7,3]⟩,17⟩,⟨⟨21,[9,8,2]⟩,15⟩,⟨⟨21,[9,8,2]⟩,16⟩,⟨⟨21,[9,8,2]⟩,17⟩,⟨⟨22,[12,9,5,3]⟩,6⟩,⟨⟨22,[12,9,7,3]⟩,6⟩,⟨⟨22,[12,9,8,2]⟩,6⟩,⟨⟨23,[]⟩,6⟩,⟨⟨24,[13]⟩,1⟩,⟨⟨25,[14,13]⟩,0⟩]
def getStB120 (i : Nat) : AState := tableBlock% i 120 [⟨⟨55,[]⟩,0⟩,⟨⟨56,[]⟩,27⟩,⟨⟨57,[16]⟩,0⟩,⟨⟨58,[16]⟩,28⟩,⟨⟨59,[16]⟩,29⟩,⟨⟨59,[16]⟩,30⟩,⟨⟨60,[]⟩,28⟩,⟨⟨60,[]⟩,29⟩,⟨⟨60,[]⟩,30⟩,⟨⟨61,[17]⟩,0⟩,⟨⟨61,[18]⟩,0⟩,⟨⟨62,[17]⟩,29⟩]
def getStB132 (i : Nat) : AState := tableBlock% i 132 [⟨⟨62,[18]⟩,30⟩,⟨⟨63,[17]⟩,30⟩,⟨⟨63,[18]⟩,30⟩]
def getSt (i : Nat) : AState := if i < 135 then (if i < 72 then (if i < 36 then (if i < 12 then getStB0 i else (if i < 24 then getStB12 i else getStB24 i)) else (if i < 48 then getStB36 i else (if i < 60 then getStB48 i else getStB60 i))) else (if i < 108 then (if i < 84 then getStB72 i else (if i < 96 then getStB84 i else getStB96 i)) else (if i < 120 then getStB108 i else (if i < 132 then getStB120 i else getStB132 i)))) else entry
def hintsB0 (i : Nat) : List Nat := tableBlock% i 0 [[1],[2],[3],[4],[5],[6],[19],[9],[10],[20],[21],[15]]
def hintsB12 (i : Nat) : List Nat := tableBlock% i 12 [[16],[17],[18],[22],[23,24,25],[26,27,28],[26,27,28],[29],[30],[31],[32],[34]]
def hintsB24 (i : Nat) : List Nat := tableBlock% i 24 [[34],[34],[35],[35],[35],[39],[33],[36,37,38],[40],[41],[42],[43]]
def hintsB36 (i : Nat) : List Nat := tableBlock% i 36 [[44],[44],[44],[45],[52,66],[11],[53,67],[99,100],[12],[7],[72],[72]]
def hintsB48 (i : Nat) : List Nat := tableBlock% i 48 [[72],[75],[75],[75],[69],[69],[73],[73],[73],[76],[76],[76]]
def hintsB60 (i : Nat) : List Nat := tableBlock% i 60 [[74],[74],[74],[77],[77],[77],[70],[70],[71],[78],[79],[80]]
def hintsB72 (i : Nat) : List Nat := tableBlock% i 72 [[81],[82],[83],[84],[85],[86],[46,54,60],[47,55,61],[48,56,62],[87,90,93],[88,91,94],[89,92,95]]
def hintsB84 (i : Nat) : List Nat := tableBlock% i 84 [[105,108,111],[106,109,112],[107,110,113],[96],[96],[96],[97],[97],[97],[98],[98],[98]]
def hintsB96 (i : Nat) : List Nat := tableBlock% i 96 [[13],[14],[8],[102],[103],[104],[49,57,63],[50,58,64],[51,59,65],[114],[114],[114]]
def hintsB108 (i : Nat) : List Nat := tableBlock% i 108 [[115],[115],[115],[116],[116],[116],[68],[101],[117],[118],[119],[120]]
def hintsB120 (i : Nat) : List Nat := tableBlock% i 120 [[121],[122],[123],[126],[127],[128],[129],[130],[130],[131],[132],[124]]
def hintsB132 (i : Nat) : List Nat := tableBlock% i 132 [[133,134],[125],[133,134]]
def hints (i : Nat) : List Nat := if i < 135 then (if i < 72 then (if i < 36 then (if i < 12 then hintsB0 i else (if i < 24 then hintsB12 i else hintsB24 i)) else (if i < 48 then hintsB36 i else (if i < 60 then hintsB48 i else hintsB60 i))) else (if i < 108 then (if i < 84 then hintsB72 i else (if i < 96 then hintsB84 i else hintsB96 i)) else (if i < 120 then hintsB108 i else (if i < 132 then hintsB120 i else hintsB132 i)))) else []
def ck (i : Nat) := FloorIndex.check pCode values konts (RegProof.states 135 getSt) i (hints i)
end Blc.Floor45.Reg9676620462478
