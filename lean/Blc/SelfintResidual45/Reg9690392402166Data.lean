import Blc.SelfintResidual45.TableNotation
import Blc.SelfintResidual45.RegProof

set_option Elab.async false
namespace Blc.Floor45.Reg9690392402166
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
def pCodeB0 (i : Nat) : Certgen.Code := tableBlock% i 0 [.app 1 23,.app 2 22,.app 3 7,.lam 4,.app 5 6,.var 0,.var 0,.lam 8,.lam 9,.app 10 11,.var 1,.lam 12]
def pCodeB12 (i : Nat) : Certgen.Code := tableBlock% i 12 [.app 13 14,.var 0,.app 15 21,.app 16 17,.var 0,.app 18 19,.var 0,.lam 20,.var 3,.var 1,.opaque,.lam 24]
def pCodeB24 (i : Nat) : Certgen.Code := tableBlock% i 24 [.app 25 30,.app 26 27,.var 0,.lam 28,.lam 29,.var 1,.lam 31,.app 32 37,.app 33 34,.var 0,.lam 35,.lam 36]
def pCodeB36 (i : Nat) : Certgen.Code := tableBlock% i 36 [.var 1,.lam 38,.app 39 44,.app 40 41,.var 0,.lam 42,.lam 43,.var 0,.lam 45,.app 46 51,.app 47 48,.var 0]
def pCodeB48 (i : Nat) : Certgen.Code := tableBlock% i 48 [.lam 49,.lam 50,.var 1,.opaque]
def pCode (i : Nat) : Certgen.Code := if i < 52 then (if i < 24 then (if i < 12 then pCodeB0 i else pCodeB12 i) else (if i < 36 then pCodeB24 i else (if i < 48 then pCodeB36 i else pCodeB48 i))) else .opaque
def lit47 : Term := .var 0
def lit50 : Term := .var 1
def lit42 : Term := .lam lit47
def lit20 : Term := .var 3
def lit49 : Term := .lam lit50
def lit4 : Term := .app lit47 lit47
def lit41 : Term := .lam lit42
def lit51 : Term := .var 4
def lit19 : Term := .lam lit20
def lit48 : Term := .lam lit49
def lit3 : Term := .lam lit4
def lit39 : Term := .app lit47 lit41
def lit17 : Term := .app lit47 lit19
def lit46 : Term := .app lit47 lit48
def lit15 : Term := .app lit47 lit17
def lit45 : Term := .app lit46 lit51
def lit14 : Term := .app lit15 lit50
def lit44 : Term := .lam lit45
def lit12 : Term := .app lit47 lit14
def lit11 : Term := .lam lit12
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
def getTermB12 (i : Nat) : Term := tableBlock% i 12 [lit12,lit47,lit14,lit15,lit47,lit17,lit47,lit19,lit20,lit50,lit50,lit23]
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
def valuesB0 (i : Nat) : List AClo := tableBlock% i 0 [[⟨14,[3,13,10]⟩],[⟨17,[3,13,10]⟩],[⟨19,[3,13,10]⟩],[⟨11,[12,11]⟩,⟨11,[14,7]⟩],[⟨14,[2,12,11]⟩,⟨14,[2,14,7]⟩],[⟨11,[15,9]⟩],[⟨7,[]⟩],[⟨14,[1,12,11]⟩,⟨14,[1,14,7]⟩],[⟨17,[1,12,11]⟩,⟨17,[1,14,7]⟩],[⟨19,[1,12,11]⟩,⟨19,[1,14,7]⟩],[⟨6,[6]⟩],[⟨11,[13,10]⟩]]
def valuesB12 (i : Nat) : List AClo := tableBlock% i 12 [[⟨23,[]⟩],[⟨22,[]⟩],[⟨21,[1,12,11]⟩,⟨21,[1,14,7]⟩,⟨21,[3,13,10]⟩],[⟨11,[14,8]⟩]]
def values (i : Nat) : List AClo := if i < 16 then (if i < 12 then valuesB0 i else valuesB12 i) else []
def kontsB0 (i : Nat) : List Frame := tableBlock% i 0 [[],[⟨⟨23,[]⟩,0⟩],[⟨⟨22,[]⟩,1⟩],[⟨⟨14,[0,12,11]⟩,0⟩,⟨⟨14,[0,12,11]⟩,3⟩,⟨⟨14,[0,12,11]⟩,4⟩],[⟨⟨14,[0,14,7]⟩,0⟩,⟨⟨14,[0,14,7]⟩,3⟩,⟨⟨14,[0,14,7]⟩,4⟩],[⟨⟨14,[1,12,11]⟩,12⟩],[⟨⟨14,[1,14,7]⟩,12⟩],[⟨⟨14,[2,12,11]⟩,5⟩,⟨⟨14,[2,12,11]⟩,6⟩,⟨⟨14,[2,12,11]⟩,13⟩,⟨⟨14,[2,12,11]⟩,14⟩,⟨⟨14,[2,12,11]⟩,16⟩,⟨⟨14,[2,12,11]⟩,17⟩],[⟨⟨14,[2,14,7]⟩,5⟩,⟨⟨14,[2,14,7]⟩,6⟩,⟨⟨14,[2,14,7]⟩,13⟩,⟨⟨14,[2,14,7]⟩,14⟩,⟨⟨14,[2,14,7]⟩,16⟩,⟨⟨14,[2,14,7]⟩,17⟩],[⟨⟨14,[3,13,10]⟩,0⟩,⟨⟨14,[3,13,10]⟩,3⟩,⟨⟨14,[3,13,10]⟩,4⟩],[⟨⟨21,[1,12,11]⟩,25⟩],[⟨⟨21,[1,14,7]⟩,25⟩]]
def kontsB12 (i : Nat) : List Frame := tableBlock% i 12 [[⟨⟨21,[3,13,10]⟩,3⟩,⟨⟨21,[3,13,10]⟩,4⟩],[⟨⟨17,[1,12,11]⟩,10⟩],[⟨⟨17,[1,14,7]⟩,11⟩],[⟨⟨17,[3,13,10]⟩,12⟩],[⟨⟨19,[1,12,11]⟩,26⟩],[⟨⟨19,[1,14,7]⟩,26⟩],[⟨⟨19,[3,13,10]⟩,5⟩,⟨⟨19,[3,13,10]⟩,6⟩],[⟨⟨19,[3,13,10]⟩,13⟩,⟨⟨19,[3,13,10]⟩,14⟩],[⟨⟨19,[3,13,10]⟩,13⟩,⟨⟨19,[3,13,10]⟩,14⟩,⟨⟨19,[3,13,10]⟩,16⟩,⟨⟨19,[3,13,10]⟩,17⟩],[⟨⟨7,[]⟩,2⟩],[⟨⟨6,[6]⟩,2⟩],[⟨⟨11,[12,11]⟩,0⟩]]
def kontsB24 (i : Nat) : List Frame := tableBlock% i 24 [[⟨⟨11,[13,10]⟩,1⟩],[⟨⟨11,[14,7]⟩,3⟩,⟨⟨11,[14,7]⟩,4⟩],[⟨⟨11,[14,8]⟩,25⟩],[⟨⟨11,[15,9]⟩,25⟩]]
def konts (i : Nat) : List Frame := if i < 28 then (if i < 12 then kontsB0 i else (if i < 24 then kontsB12 i else kontsB24 i)) else []
def getStB0 (i : Nat) : AState := tableBlock% i 0 [⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[]⟩,21⟩,⟨⟨4,[6]⟩,2⟩,⟨⟨5,[6]⟩,22⟩,⟨⟨6,[6]⟩,5⟩,⟨⟨6,[6]⟩,6⟩,⟨⟨6,[6]⟩,13⟩,⟨⟨6,[6]⟩,14⟩,⟨⟨6,[6]⟩,16⟩,⟨⟨6,[6]⟩,17⟩]
def getStB12 (i : Nat) : AState := tableBlock% i 12 [⟨⟨6,[6]⟩,24⟩,⟨⟨7,[]⟩,5⟩,⟨⟨7,[]⟩,6⟩,⟨⟨7,[]⟩,13⟩,⟨⟨7,[]⟩,14⟩,⟨⟨7,[]⟩,16⟩,⟨⟨7,[]⟩,17⟩,⟨⟨7,[]⟩,22⟩,⟨⟨7,[]⟩,24⟩,⟨⟨8,[7]⟩,12⟩,⟨⟨8,[8]⟩,10⟩,⟨⟨8,[8]⟩,11⟩]
def getStB24 (i : Nat) : AState := tableBlock% i 24 [⟨⟨8,[9]⟩,26⟩,⟨⟨8,[10]⟩,2⟩,⟨⟨8,[11]⟩,1⟩,⟨⟨9,[12,11]⟩,0⟩,⟨⟨9,[13,10]⟩,1⟩,⟨⟨9,[14,7]⟩,3⟩,⟨⟨9,[14,7]⟩,4⟩,⟨⟨9,[14,8]⟩,25⟩,⟨⟨9,[15,9]⟩,25⟩,⟨⟨10,[12,11]⟩,23⟩,⟨⟨10,[13,10]⟩,24⟩,⟨⟨10,[14,7]⟩,25⟩]
def getStB36 (i : Nat) : AState := tableBlock% i 36 [⟨⟨10,[14,8]⟩,26⟩,⟨⟨10,[15,9]⟩,27⟩,⟨⟨11,[12,11]⟩,9⟩,⟨⟨11,[12,11]⟩,15⟩,⟨⟨11,[12,11]⟩,18⟩,⟨⟨11,[12,11]⟩,19⟩,⟨⟨11,[12,11]⟩,20⟩,⟨⟨11,[13,10]⟩,23⟩,⟨⟨11,[13,10]⟩,25⟩,⟨⟨11,[14,7]⟩,9⟩,⟨⟨11,[14,7]⟩,15⟩,⟨⟨11,[14,7]⟩,18⟩]
def getStB48 (i : Nat) : AState := tableBlock% i 48 [⟨⟨11,[14,7]⟩,19⟩,⟨⟨11,[14,7]⟩,20⟩,⟨⟨12,[0,12,11]⟩,0⟩,⟨⟨12,[0,12,11]⟩,3⟩,⟨⟨12,[0,12,11]⟩,4⟩,⟨⟨12,[0,14,7]⟩,0⟩,⟨⟨12,[0,14,7]⟩,3⟩,⟨⟨12,[0,14,7]⟩,4⟩,⟨⟨12,[1,12,11]⟩,12⟩,⟨⟨12,[1,14,7]⟩,12⟩,⟨⟨12,[2,12,11]⟩,5⟩,⟨⟨12,[2,12,11]⟩,6⟩]
def getStB60 (i : Nat) : AState := tableBlock% i 60 [⟨⟨12,[2,12,11]⟩,13⟩,⟨⟨12,[2,12,11]⟩,14⟩,⟨⟨12,[2,12,11]⟩,16⟩,⟨⟨12,[2,12,11]⟩,17⟩,⟨⟨12,[2,14,7]⟩,5⟩,⟨⟨12,[2,14,7]⟩,6⟩,⟨⟨12,[2,14,7]⟩,13⟩,⟨⟨12,[2,14,7]⟩,14⟩,⟨⟨12,[2,14,7]⟩,16⟩,⟨⟨12,[2,14,7]⟩,17⟩,⟨⟨12,[3,13,10]⟩,0⟩,⟨⟨12,[3,13,10]⟩,3⟩]
def getStB72 (i : Nat) : AState := tableBlock% i 72 [⟨⟨12,[3,13,10]⟩,4⟩,⟨⟨13,[0,12,11]⟩,3⟩,⟨⟨13,[0,14,7]⟩,4⟩,⟨⟨13,[1,12,11]⟩,5⟩,⟨⟨13,[1,14,7]⟩,6⟩,⟨⟨13,[2,12,11]⟩,7⟩,⟨⟨13,[2,14,7]⟩,8⟩,⟨⟨13,[3,13,10]⟩,9⟩,⟨⟨14,[1,12,11]⟩,25⟩,⟨⟨14,[1,14,7]⟩,25⟩,⟨⟨14,[3,13,10]⟩,3⟩,⟨⟨14,[3,13,10]⟩,4⟩]
def getStB84 (i : Nat) : AState := tableBlock% i 84 [⟨⟨15,[1,12,11]⟩,10⟩,⟨⟨15,[1,14,7]⟩,11⟩,⟨⟨15,[3,13,10]⟩,12⟩,⟨⟨16,[1,12,11]⟩,13⟩,⟨⟨16,[1,14,7]⟩,14⟩,⟨⟨16,[3,13,10]⟩,15⟩,⟨⟨17,[1,12,11]⟩,26⟩,⟨⟨17,[1,14,7]⟩,26⟩,⟨⟨17,[3,13,10]⟩,5⟩,⟨⟨17,[3,13,10]⟩,6⟩,⟨⟨17,[3,13,10]⟩,13⟩,⟨⟨17,[3,13,10]⟩,14⟩]
def getStB96 (i : Nat) : AState := tableBlock% i 96 [⟨⟨17,[3,13,10]⟩,16⟩,⟨⟨17,[3,13,10]⟩,17⟩,⟨⟨18,[1,12,11]⟩,16⟩,⟨⟨18,[1,14,7]⟩,17⟩,⟨⟨18,[3,13,10]⟩,18⟩,⟨⟨18,[3,13,10]⟩,19⟩,⟨⟨18,[3,13,10]⟩,20⟩,⟨⟨19,[1,12,11]⟩,27⟩,⟨⟨19,[1,14,7]⟩,27⟩,⟨⟨19,[3,13,10]⟩,7⟩,⟨⟨19,[3,13,10]⟩,8⟩,⟨⟨20,[4,3,13,10]⟩,5⟩]
def getStB108 (i : Nat) : AState := tableBlock% i 108 [⟨⟨20,[4,3,13,10]⟩,6⟩,⟨⟨20,[4,3,13,10]⟩,13⟩,⟨⟨20,[4,3,13,10]⟩,14⟩,⟨⟨20,[4,3,13,10]⟩,16⟩,⟨⟨20,[4,3,13,10]⟩,17⟩,⟨⟨20,[5,1,12,11]⟩,25⟩,⟨⟨20,[5,1,14,7]⟩,25⟩]
def getSt (i : Nat) : AState := if i < 115 then (if i < 60 then (if i < 24 then (if i < 12 then getStB0 i else getStB12 i) else (if i < 36 then getStB24 i else (if i < 48 then getStB36 i else getStB48 i))) else (if i < 84 then (if i < 72 then getStB60 i else getStB72 i) else (if i < 96 then getStB84 i else (if i < 108 then getStB96 i else getStB108 i)))) else entry
def hintsB0 (i : Nat) : List Nat := tableBlock% i 0 [[1],[2],[3],[4],[5],[19],[13],[14],[15],[16],[17],[18]]
def hintsB12 (i : Nat) : List Nat := tableBlock% i 12 [[20],[21],[21],[22],[23],[24],[24],[25],[26],[29,30],[31],[31]]
def hintsB24 (i : Nat) : List Nat := tableBlock% i 24 [[32],[28],[27],[33],[34],[35],[35],[36],[37],[43],[12],[80,81]]
def hintsB36 (i : Nat) : List Nat := tableBlock% i 36 [[90,91],[103,104],[50,51,52],[56],[58,59],[60,61],[60,61,62,63],[70],[71,72],[53,54,55],[57],[64,65]]
def hintsB48 (i : Nat) : List Nat := tableBlock% i 48 [[66,67],[66,67,68,69],[73],[73],[73],[74],[74],[74],[75],[76],[77],[77]]
def hintsB60 (i : Nat) : List Nat := tableBlock% i 60 [[77],[77],[77],[77],[78],[78],[78],[78],[78],[78],[79],[79]]
def hintsB72 (i : Nat) : List Nat := tableBlock% i 72 [[79],[82],[83],[92],[93],[105],[106],[38,45],[84],[85],[86],[86]]
def hintsB84 (i : Nat) : List Nat := tableBlock% i 84 [[87],[88],[89],[94],[95],[39,46],[98],[99],[100],[100],[101],[101]]
def hintsB96 (i : Nat) : List Nat := tableBlock% i 96 [[102],[102],[96],[97],[40,47],[41,48],[42,49],[113],[114],[107,108,109,110,111,112],[107,108,109,110,111,112],[6]]
def hintsB108 (i : Nat) : List Nat := tableBlock% i 108 [[7],[8],[9],[10],[11],[44],[80,81]]
def hints (i : Nat) : List Nat := if i < 115 then (if i < 60 then (if i < 24 then (if i < 12 then hintsB0 i else hintsB12 i) else (if i < 36 then hintsB24 i else (if i < 48 then hintsB36 i else hintsB48 i))) else (if i < 84 then (if i < 72 then hintsB60 i else hintsB72 i) else (if i < 96 then hintsB84 i else (if i < 108 then hintsB96 i else hintsB108 i)))) else []
def ck (i : Nat) := FloorIndex.check pCode values konts (RegProof.states 115 getSt) i (hints i)
end Blc.Floor45.Reg9690392402166
