import Blc.SelfintResidual45.TableNotation
import Blc.SelfintResidual45.RegProof

set_option Elab.async false
namespace Blc.Floor45.Reg9690391634742
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
def pCodeB0 (i : Nat) : Certgen.Code := tableBlock% i 0 [.app 1 23,.app 2 22,.app 3 7,.lam 4,.app 5 6,.var 0,.var 0,.lam 8,.lam 9,.app 10 11,.var 1,.lam 12]
def pCodeB12 (i : Nat) : Certgen.Code := tableBlock% i 12 [.app 13 19,.app 14 15,.var 0,.app 16 17,.var 2,.lam 18,.var 1,.app 20 21,.var 0,.var 1,.opaque,.lam 24]
def pCodeB24 (i : Nat) : Certgen.Code := tableBlock% i 24 [.app 25 30,.app 26 27,.var 0,.lam 28,.lam 29,.var 1,.lam 31,.app 32 37,.app 33 34,.var 0,.lam 35,.lam 36]
def pCodeB36 (i : Nat) : Certgen.Code := tableBlock% i 36 [.var 1,.lam 38,.app 39 44,.app 40 41,.var 0,.lam 42,.lam 43,.var 0,.lam 45,.app 46 51,.app 47 48,.var 0]
def pCodeB48 (i : Nat) : Certgen.Code := tableBlock% i 48 [.lam 49,.lam 50,.var 1,.opaque]
def pCode (i : Nat) : Certgen.Code := if i < 52 then (if i < 24 then (if i < 12 then pCodeB0 i else pCodeB12 i) else (if i < 36 then pCodeB24 i else (if i < 48 then pCodeB36 i else pCodeB48 i))) else .opaque
def lit47 : Term := .var 0
def lit50 : Term := .var 1
def lit16 : Term := .var 2
def lit42 : Term := .lam lit47
def lit49 : Term := .lam lit50
def lit4 : Term := .app lit47 lit47
def lit41 : Term := .lam lit42
def lit51 : Term := .var 4
def lit19 : Term := .app lit47 lit50
def lit48 : Term := .lam lit49
def lit3 : Term := .lam lit4
def lit39 : Term := .app lit47 lit41
def lit15 : Term := .app lit16 lit49
def lit46 : Term := .app lit47 lit48
def lit13 : Term := .app lit47 lit15
def lit45 : Term := .app lit46 lit51
def lit44 : Term := .lam lit45
def lit12 : Term := .app lit13 lit19
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
def getTermB12 (i : Nat) : Term := tableBlock% i 12 [lit12,lit13,lit47,lit15,lit16,lit49,lit50,lit19,lit47,lit50,lit50,lit23]
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
def valuesB0 (i : Nat) : List AClo := tableBlock% i 0 [[⟨19,[1,11,10]⟩,⟨19,[2,12,9]⟩],[⟨15,[0,11,10]⟩,⟨15,[3,12,9]⟩],[⟨17,[0,11,10]⟩],[⟨11,[11,10]⟩],[⟨15,[2,12,9]⟩],[⟨21,[2,12,9]⟩],[⟨11,[13,8]⟩,⟨11,[14,8]⟩],[⟨7,[]⟩],[⟨17,[3,12,9]⟩],[⟨6,[7]⟩],[⟨11,[12,9]⟩],[⟨23,[]⟩]]
def valuesB12 (i : Nat) : List AClo := tableBlock% i 12 [[⟨22,[]⟩],[⟨15,[1,11,10]⟩],[⟨21,[1,11,10]⟩]]
def values (i : Nat) : List AClo := if i < 15 then (if i < 12 then valuesB0 i else valuesB12 i) else []
def kontsB0 (i : Nat) : List Frame := tableBlock% i 0 [[],[⟨⟨23,[]⟩,0⟩],[⟨⟨22,[]⟩,1⟩],[⟨⟨19,[0,11,10]⟩,3⟩,⟨⟨19,[0,11,10]⟩,6⟩,⟨⟨19,[0,11,10]⟩,8⟩,⟨⟨19,[0,11,10]⟩,19⟩,⟨⟨19,[0,11,10]⟩,20⟩,⟨⟨19,[0,11,10]⟩,21⟩],[⟨⟨19,[1,11,10]⟩,3⟩,⟨⟨19,[1,11,10]⟩,6⟩],[⟨⟨19,[2,12,9]⟩,8⟩,⟨⟨19,[2,12,9]⟩,19⟩,⟨⟨19,[2,12,9]⟩,20⟩,⟨⟨19,[2,12,9]⟩,21⟩],[⟨⟨19,[3,12,9]⟩,0⟩],[⟨⟨15,[0,11,10]⟩,3⟩],[⟨⟨15,[1,11,10]⟩,4⟩],[⟨⟨15,[2,12,9]⟩,5⟩],[⟨⟨15,[3,12,9]⟩,6⟩],[⟨⟨17,[0,11,10]⟩,19⟩]]
def kontsB12 (i : Nat) : List Frame := tableBlock% i 12 [[⟨⟨17,[0,11,10]⟩,8⟩],[⟨⟨17,[0,11,10]⟩,20⟩],[⟨⟨17,[0,11,10]⟩,21⟩],[⟨⟨17,[3,12,9]⟩,19⟩],[⟨⟨17,[3,12,9]⟩,8⟩],[⟨⟨17,[3,12,9]⟩,20⟩],[⟨⟨17,[3,12,9]⟩,21⟩],[⟨⟨21,[1,11,10]⟩,7⟩],[⟨⟨21,[1,11,10]⟩,5⟩],[⟨⟨21,[1,11,10]⟩,5⟩,⟨⟨21,[1,11,10]⟩,7⟩],[⟨⟨21,[2,12,9]⟩,7⟩],[⟨⟨21,[2,12,9]⟩,5⟩]]
def kontsB24 (i : Nat) : List Frame := tableBlock% i 24 [[⟨⟨21,[2,12,9]⟩,5⟩,⟨⟨21,[2,12,9]⟩,7⟩],[⟨⟨7,[]⟩,2⟩],[⟨⟨6,[7]⟩,2⟩],[⟨⟨11,[11,10]⟩,0⟩],[⟨⟨11,[12,9]⟩,1⟩],[⟨⟨11,[13,8]⟩,4⟩],[⟨⟨11,[14,8]⟩,5⟩,⟨⟨11,[14,8]⟩,7⟩]]
def konts (i : Nat) : List Frame := if i < 31 then (if i < 12 then kontsB0 i else (if i < 24 then kontsB12 i else kontsB24 i)) else []
def getStB0 (i : Nat) : AState := tableBlock% i 0 [⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[]⟩,25⟩,⟨⟨4,[7]⟩,2⟩,⟨⟨5,[7]⟩,26⟩,⟨⟨6,[7]⟩,15⟩,⟨⟨6,[7]⟩,16⟩,⟨⟨6,[7]⟩,17⟩,⟨⟨6,[7]⟩,18⟩,⟨⟨6,[7]⟩,28⟩,⟨⟨7,[]⟩,15⟩]
def getStB12 (i : Nat) : AState := tableBlock% i 12 [⟨⟨7,[]⟩,16⟩,⟨⟨7,[]⟩,17⟩,⟨⟨7,[]⟩,18⟩,⟨⟨7,[]⟩,26⟩,⟨⟨7,[]⟩,28⟩,⟨⟨8,[8]⟩,8⟩,⟨⟨8,[8]⟩,19⟩,⟨⟨8,[8]⟩,20⟩,⟨⟨8,[8]⟩,21⟩,⟨⟨8,[9]⟩,2⟩,⟨⟨8,[10]⟩,1⟩,⟨⟨9,[11,10]⟩,0⟩]
def getStB24 (i : Nat) : AState := tableBlock% i 24 [⟨⟨9,[12,9]⟩,1⟩,⟨⟨9,[13,8]⟩,4⟩,⟨⟨9,[14,8]⟩,5⟩,⟨⟨9,[14,8]⟩,7⟩,⟨⟨10,[11,10]⟩,27⟩,⟨⟨10,[12,9]⟩,28⟩,⟨⟨10,[13,8]⟩,29⟩,⟨⟨10,[14,8]⟩,30⟩,⟨⟨11,[11,10]⟩,4⟩,⟨⟨11,[11,10]⟩,5⟩,⟨⟨11,[11,10]⟩,7⟩,⟨⟨11,[11,10]⟩,10⟩]
def getStB36 (i : Nat) : AState := tableBlock% i 36 [⟨⟨11,[12,9]⟩,11⟩,⟨⟨11,[12,9]⟩,12⟩,⟨⟨11,[12,9]⟩,13⟩,⟨⟨11,[12,9]⟩,14⟩,⟨⟨11,[12,9]⟩,27⟩,⟨⟨12,[0,11,10]⟩,3⟩,⟨⟨12,[0,11,10]⟩,6⟩,⟨⟨12,[0,11,10]⟩,8⟩,⟨⟨12,[0,11,10]⟩,19⟩,⟨⟨12,[0,11,10]⟩,20⟩,⟨⟨12,[0,11,10]⟩,21⟩,⟨⟨12,[1,11,10]⟩,3⟩]
def getStB48 (i : Nat) : AState := tableBlock% i 48 [⟨⟨12,[1,11,10]⟩,6⟩,⟨⟨12,[2,12,9]⟩,8⟩,⟨⟨12,[2,12,9]⟩,19⟩,⟨⟨12,[2,12,9]⟩,20⟩,⟨⟨12,[2,12,9]⟩,21⟩,⟨⟨12,[3,12,9]⟩,0⟩,⟨⟨13,[0,11,10]⟩,3⟩,⟨⟨13,[1,11,10]⟩,4⟩,⟨⟨13,[2,12,9]⟩,5⟩,⟨⟨13,[3,12,9]⟩,6⟩,⟨⟨14,[0,11,10]⟩,7⟩,⟨⟨14,[1,11,10]⟩,8⟩]
def getStB60 (i : Nat) : AState := tableBlock% i 60 [⟨⟨14,[2,12,9]⟩,9⟩,⟨⟨14,[3,12,9]⟩,10⟩,⟨⟨15,[0,11,10]⟩,8⟩,⟨⟨15,[0,11,10]⟩,19⟩,⟨⟨15,[0,11,10]⟩,20⟩,⟨⟨15,[0,11,10]⟩,21⟩,⟨⟨15,[3,12,9]⟩,8⟩,⟨⟨15,[3,12,9]⟩,19⟩,⟨⟨15,[3,12,9]⟩,20⟩,⟨⟨15,[3,12,9]⟩,21⟩,⟨⟨16,[0,11,10]⟩,11⟩,⟨⟨16,[0,11,10]⟩,12⟩]
def getStB72 (i : Nat) : AState := tableBlock% i 72 [⟨⟨16,[0,11,10]⟩,13⟩,⟨⟨16,[0,11,10]⟩,14⟩,⟨⟨16,[3,12,9]⟩,15⟩,⟨⟨16,[3,12,9]⟩,16⟩,⟨⟨16,[3,12,9]⟩,17⟩,⟨⟨16,[3,12,9]⟩,18⟩,⟨⟨17,[0,11,10]⟩,9⟩,⟨⟨17,[0,11,10]⟩,22⟩,⟨⟨17,[0,11,10]⟩,23⟩,⟨⟨17,[0,11,10]⟩,24⟩,⟨⟨17,[3,12,9]⟩,29⟩,⟨⟨17,[3,12,9]⟩,30⟩]
def getStB84 (i : Nat) : AState := tableBlock% i 84 [⟨⟨18,[4,0,11,10]⟩,5⟩,⟨⟨18,[5,0,11,10]⟩,5⟩,⟨⟨18,[5,0,11,10]⟩,7⟩,⟨⟨18,[6,3,12,9]⟩,4⟩,⟨⟨18,[6,3,12,9]⟩,5⟩,⟨⟨18,[6,3,12,9]⟩,7⟩,⟨⟨19,[1,11,10]⟩,5⟩,⟨⟨19,[1,11,10]⟩,7⟩,⟨⟨19,[2,12,9]⟩,5⟩,⟨⟨19,[2,12,9]⟩,7⟩,⟨⟨20,[1,11,10]⟩,19⟩,⟨⟨20,[1,11,10]⟩,20⟩]
def getStB96 (i : Nat) : AState := tableBlock% i 96 [⟨⟨20,[1,11,10]⟩,21⟩,⟨⟨20,[2,12,9]⟩,22⟩,⟨⟨20,[2,12,9]⟩,23⟩,⟨⟨20,[2,12,9]⟩,24⟩]
def getSt (i : Nat) : AState := if i < 100 then (if i < 48 then (if i < 24 then (if i < 12 then getStB0 i else getStB12 i) else (if i < 36 then getStB24 i else getStB36 i)) else (if i < 72 then (if i < 60 then getStB48 i else getStB60 i) else (if i < 84 then getStB72 i else (if i < 96 then getStB84 i else getStB96 i)))) else entry
def hintsB0 (i : Nat) : List Nat := tableBlock% i 0 [[1],[2],[3],[4],[5],[15],[11],[12],[13],[14],[16],[18]]
def hintsB12 (i : Nat) : List Nat := tableBlock% i 12 [[17],[19],[20],[21],[22],[25],[27],[26],[26,27],[24],[23],[28]]
def hintsB24 (i : Nat) : List Nat := tableBlock% i 24 [[29],[30],[31],[31],[40],[10],[82],[83],[41,42],[43,44,45,46],[47],[48]]
def hintsB36 (i : Nat) : List Nat := tableBlock% i 36 [[50],[49],[51],[52],[53],[54],[54],[54],[54],[54],[54],[55]]
def hintsB48 (i : Nat) : List Nat := tableBlock% i 48 [[55],[56],[56],[56],[56],[57],[58],[59],[60],[61],[91,93],[62,66]]
def hintsB60 (i : Nat) : List Nat := tableBlock% i 60 [[78],[35],[71],[70],[72],[73],[75],[74],[76],[77],[36],[37]]
def hintsB72 (i : Nat) : List Nat := tableBlock% i 72 [[38],[39],[6],[7],[8],[9],[84],[86],[85],[85,86],[87],[88,89]]
def hintsB84 (i : Nat) : List Nat := tableBlock% i 84 [[90,92],[90,92],[91,93],[32],[33],[34],[95],[94],[98],[97],[63,67],[64,68]]
def hintsB96 (i : Nat) : List Nat := tableBlock% i 96 [[65,69],[79],[80],[81]]
def hints (i : Nat) : List Nat := if i < 100 then (if i < 48 then (if i < 24 then (if i < 12 then hintsB0 i else hintsB12 i) else (if i < 36 then hintsB24 i else hintsB36 i)) else (if i < 72 then (if i < 60 then hintsB48 i else hintsB60 i) else (if i < 84 then hintsB72 i else (if i < 96 then hintsB84 i else hintsB96 i)))) else []
def ck (i : Nat) := FloorIndex.check pCode values konts (RegProof.states 100 getSt) i (hints i)
end Blc.Floor45.Reg9690391634742
