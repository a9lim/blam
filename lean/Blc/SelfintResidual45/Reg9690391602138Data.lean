import Blc.SelfintResidual45.TableNotation
import Blc.SelfintResidual45.RegProof

set_option Elab.async false
namespace Blc.Floor45.Reg9690391602138
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
def pCodeB0 (i : Nat) : Certgen.Code := tableBlock% i 0 [.app 1 23,.app 2 22,.app 3 7,.lam 4,.app 5 6,.var 0,.var 0,.lam 8,.lam 9,.app 10 11,.var 1,.lam 12]
def pCodeB12 (i : Nat) : Certgen.Code := tableBlock% i 12 [.app 13 21,.app 14 15,.var 0,.app 16 20,.app 17 18,.var 0,.lam 19,.var 3,.var 1,.var 0,.opaque,.lam 24]
def pCodeB24 (i : Nat) : Certgen.Code := tableBlock% i 24 [.app 25 30,.app 26 27,.var 0,.lam 28,.lam 29,.var 1,.lam 31,.app 32 37,.app 33 34,.var 0,.lam 35,.lam 36]
def pCodeB36 (i : Nat) : Certgen.Code := tableBlock% i 36 [.var 1,.lam 38,.app 39 44,.app 40 41,.var 0,.lam 42,.lam 43,.var 0,.lam 45,.app 46 51,.app 47 48,.var 0]
def pCodeB48 (i : Nat) : Certgen.Code := tableBlock% i 48 [.lam 49,.lam 50,.var 1,.opaque]
def pCode (i : Nat) : Certgen.Code := if i < 52 then (if i < 24 then (if i < 12 then pCodeB0 i else pCodeB12 i) else (if i < 36 then pCodeB24 i else (if i < 48 then pCodeB36 i else pCodeB48 i))) else .opaque
def lit47 : Term := .var 0
def lit50 : Term := .var 1
def lit42 : Term := .lam lit47
def lit19 : Term := .var 3
def lit49 : Term := .lam lit50
def lit4 : Term := .app lit47 lit47
def lit41 : Term := .lam lit42
def lit51 : Term := .var 4
def lit18 : Term := .lam lit19
def lit48 : Term := .lam lit49
def lit3 : Term := .lam lit4
def lit39 : Term := .app lit47 lit41
def lit16 : Term := .app lit47 lit18
def lit46 : Term := .app lit47 lit48
def lit15 : Term := .app lit16 lit50
def lit45 : Term := .app lit46 lit51
def lit13 : Term := .app lit47 lit15
def lit44 : Term := .lam lit45
def lit12 : Term := .app lit13 lit47
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
def getTermB12 (i : Nat) : Term := tableBlock% i 12 [lit12,lit13,lit47,lit15,lit16,lit47,lit18,lit19,lit50,lit47,lit50,lit23]
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
def valuesB0 (i : Nat) : List AClo := tableBlock% i 0 [[⟨15,[2,12,9]⟩],[⟨18,[2,12,9]⟩],[⟨11,[11,10]⟩,⟨11,[13,7]⟩],[⟨15,[1,11,10]⟩,⟨15,[1,13,7]⟩],[⟨11,[14,6]⟩,⟨11,[14,8]⟩],[⟨7,[]⟩],[⟨21,[1,11,10]⟩,⟨21,[1,13,7]⟩],[⟨15,[0,11,10]⟩,⟨15,[0,13,7]⟩],[⟨18,[0,11,10]⟩,⟨18,[0,13,7]⟩],[⟨6,[5]⟩],[⟨11,[12,9]⟩],[⟨23,[]⟩]]
def valuesB12 (i : Nat) : List AClo := tableBlock% i 12 [[⟨22,[]⟩],[⟨21,[0,11,10]⟩,⟨21,[0,13,7]⟩],[⟨20,[0,11,10]⟩,⟨20,[0,13,7]⟩,⟨20,[2,12,9]⟩]]
def values (i : Nat) : List AClo := if i < 15 then (if i < 12 then valuesB0 i else valuesB12 i) else []
def kontsB0 (i : Nat) : List Frame := tableBlock% i 0 [[],[⟨⟨23,[]⟩,0⟩],[⟨⟨22,[]⟩,1⟩],[⟨⟨21,[0,11,10]⟩,7⟩],[⟨⟨21,[0,13,7]⟩,7⟩],[⟨⟨21,[1,11,10]⟩,15⟩,⟨⟨21,[1,11,10]⟩,16⟩],[⟨⟨21,[1,13,7]⟩,15⟩,⟨⟨21,[1,13,7]⟩,16⟩],[⟨⟨21,[2,12,9]⟩,0⟩,⟨⟨21,[2,12,9]⟩,7⟩],[⟨⟨15,[0,11,10]⟩,3⟩],[⟨⟨15,[0,13,7]⟩,4⟩],[⟨⟨15,[1,11,10]⟩,5⟩],[⟨⟨15,[1,13,7]⟩,6⟩]]
def kontsB12 (i : Nat) : List Frame := tableBlock% i 12 [[⟨⟨15,[2,12,9]⟩,7⟩],[⟨⟨20,[0,11,10]⟩,25⟩],[⟨⟨20,[0,13,7]⟩,25⟩],[⟨⟨20,[2,12,9]⟩,8⟩,⟨⟨20,[2,12,9]⟩,9⟩],[⟨⟨20,[2,12,9]⟩,17⟩,⟨⟨20,[2,12,9]⟩,18⟩],[⟨⟨18,[0,11,10]⟩,13⟩],[⟨⟨18,[0,13,7]⟩,14⟩],[⟨⟨18,[2,12,9]⟩,15⟩],[⟨⟨18,[2,12,9]⟩,16⟩],[⟨⟨7,[]⟩,2⟩],[⟨⟨6,[5]⟩,2⟩],[⟨⟨11,[11,10]⟩,0⟩]]
def kontsB24 (i : Nat) : List Frame := tableBlock% i 24 [[⟨⟨11,[12,9]⟩,1⟩],[⟨⟨11,[13,7]⟩,7⟩],[⟨⟨11,[14,6]⟩,8⟩,⟨⟨11,[14,6]⟩,9⟩,⟨⟨11,[14,6]⟩,17⟩,⟨⟨11,[14,6]⟩,18⟩],[⟨⟨11,[14,8]⟩,25⟩]]
def konts (i : Nat) : List Frame := if i < 28 then (if i < 12 then kontsB0 i else (if i < 24 then kontsB12 i else kontsB24 i)) else []
def getStB0 (i : Nat) : AState := tableBlock% i 0 [⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[]⟩,21⟩,⟨⟨4,[5]⟩,2⟩,⟨⟨5,[5]⟩,22⟩,⟨⟨6,[5]⟩,5⟩,⟨⟨6,[5]⟩,6⟩,⟨⟨6,[5]⟩,8⟩,⟨⟨6,[5]⟩,9⟩,⟨⟨6,[5]⟩,17⟩,⟨⟨6,[5]⟩,18⟩]
def getStB12 (i : Nat) : AState := tableBlock% i 12 [⟨⟨6,[5]⟩,24⟩,⟨⟨7,[]⟩,5⟩,⟨⟨7,[]⟩,6⟩,⟨⟨7,[]⟩,8⟩,⟨⟨7,[]⟩,9⟩,⟨⟨7,[]⟩,17⟩,⟨⟨7,[]⟩,18⟩,⟨⟨7,[]⟩,22⟩,⟨⟨7,[]⟩,24⟩,⟨⟨8,[6]⟩,15⟩,⟨⟨8,[6]⟩,16⟩,⟨⟨8,[7]⟩,3⟩]
def getStB24 (i : Nat) : AState := tableBlock% i 24 [⟨⟨8,[7]⟩,4⟩,⟨⟨8,[8]⟩,13⟩,⟨⟨8,[8]⟩,14⟩,⟨⟨8,[9]⟩,2⟩,⟨⟨8,[10]⟩,1⟩,⟨⟨9,[11,10]⟩,0⟩,⟨⟨9,[12,9]⟩,1⟩,⟨⟨9,[13,7]⟩,7⟩,⟨⟨9,[14,6]⟩,8⟩,⟨⟨9,[14,6]⟩,9⟩,⟨⟨9,[14,6]⟩,17⟩,⟨⟨9,[14,6]⟩,18⟩]
def getStB36 (i : Nat) : AState := tableBlock% i 36 [⟨⟨9,[14,8]⟩,25⟩,⟨⟨10,[11,10]⟩,23⟩,⟨⟨10,[12,9]⟩,24⟩,⟨⟨10,[13,7]⟩,25⟩,⟨⟨10,[14,6]⟩,26⟩,⟨⟨10,[14,8]⟩,27⟩,⟨⟨11,[11,10]⟩,12⟩,⟨⟨11,[11,10]⟩,19⟩,⟨⟨11,[11,10]⟩,20⟩,⟨⟨11,[12,9]⟩,23⟩,⟨⟨11,[12,9]⟩,25⟩,⟨⟨11,[13,7]⟩,12⟩]
def getStB48 (i : Nat) : AState := tableBlock% i 48 [⟨⟨11,[13,7]⟩,19⟩,⟨⟨11,[13,7]⟩,20⟩,⟨⟨12,[0,11,10]⟩,7⟩,⟨⟨12,[0,13,7]⟩,7⟩,⟨⟨12,[1,11,10]⟩,15⟩,⟨⟨12,[1,11,10]⟩,16⟩,⟨⟨12,[1,13,7]⟩,15⟩,⟨⟨12,[1,13,7]⟩,16⟩,⟨⟨12,[2,12,9]⟩,0⟩,⟨⟨12,[2,12,9]⟩,7⟩,⟨⟨13,[0,11,10]⟩,3⟩,⟨⟨13,[0,13,7]⟩,4⟩]
def getStB60 (i : Nat) : AState := tableBlock% i 60 [⟨⟨13,[1,11,10]⟩,5⟩,⟨⟨13,[1,13,7]⟩,6⟩,⟨⟨13,[2,12,9]⟩,7⟩,⟨⟨14,[0,11,10]⟩,8⟩,⟨⟨14,[0,13,7]⟩,9⟩,⟨⟨14,[1,11,10]⟩,10⟩,⟨⟨14,[1,13,7]⟩,11⟩,⟨⟨14,[2,12,9]⟩,12⟩,⟨⟨15,[0,11,10]⟩,25⟩,⟨⟨15,[0,13,7]⟩,25⟩,⟨⟨15,[2,12,9]⟩,8⟩,⟨⟨15,[2,12,9]⟩,9⟩]
def getStB72 (i : Nat) : AState := tableBlock% i 72 [⟨⟨15,[2,12,9]⟩,17⟩,⟨⟨15,[2,12,9]⟩,18⟩,⟨⟨16,[0,11,10]⟩,13⟩,⟨⟨16,[0,13,7]⟩,14⟩,⟨⟨16,[2,12,9]⟩,15⟩,⟨⟨16,[2,12,9]⟩,16⟩,⟨⟨17,[0,11,10]⟩,17⟩,⟨⟨17,[0,13,7]⟩,18⟩,⟨⟨17,[2,12,9]⟩,19⟩,⟨⟨17,[2,12,9]⟩,20⟩,⟨⟨18,[0,11,10]⟩,27⟩,⟨⟨18,[0,13,7]⟩,27⟩]
def getStB84 (i : Nat) : AState := tableBlock% i 84 [⟨⟨18,[2,12,9]⟩,10⟩,⟨⟨18,[2,12,9]⟩,11⟩,⟨⟨18,[2,12,9]⟩,26⟩,⟨⟨19,[3,2,12,9]⟩,5⟩,⟨⟨19,[3,2,12,9]⟩,6⟩,⟨⟨19,[4,0,11,10]⟩,25⟩,⟨⟨19,[4,0,13,7]⟩,25⟩,⟨⟨19,[4,2,12,9]⟩,8⟩,⟨⟨19,[4,2,12,9]⟩,9⟩,⟨⟨19,[4,2,12,9]⟩,17⟩,⟨⟨19,[4,2,12,9]⟩,18⟩,⟨⟨21,[1,11,10]⟩,26⟩]
def getStB96 (i : Nat) : AState := ⟨⟨21,[1,13,7]⟩,26⟩
def getSt (i : Nat) : AState := if i < 97 then (if i < 48 then (if i < 24 then (if i < 12 then getStB0 i else getStB12 i) else (if i < 36 then getStB24 i else getStB36 i)) else (if i < 72 then (if i < 60 then getStB48 i else getStB60 i) else (if i < 84 then getStB72 i else (if i < 96 then getStB84 i else getStB96 i)))) else entry
def hintsB0 (i : Nat) : List Nat := tableBlock% i 0 [[1],[2],[3],[4],[5],[19],[13],[14],[15],[16],[17],[18]]
def hintsB12 (i : Nat) : List Nat := tableBlock% i 12 [[20],[21,22],[21,22],[23],[24],[25],[26],[27],[28],[32,33],[34,35],[31]]
def hintsB24 (i : Nat) : List Nat := tableBlock% i 24 [[31],[36],[36],[30],[29],[37],[38],[39],[40],[40],[40],[40]]
def hintsB36 (i : Nat) : List Nat := tableBlock% i 36 [[41],[45],[12],[68,69],[95,96],[82,83],[50],[52],[53],[56],[57],[51]]
def hintsB48 (i : Nat) : List Nat := tableBlock% i 48 [[54],[55],[58],[59],[60],[60],[61],[61],[62],[62],[63],[64]]
def hintsB60 (i : Nat) : List Nat := tableBlock% i 60 [[65],[66],[67],[70],[71],[84],[85],[42,47],[74],[75],[76],[76]]
def hintsB72 (i : Nat) : List Nat := tableBlock% i 72 [[77],[77],[78],[79],[80],[81],[72],[73],[43,48],[44,49],[89],[90]]
def hintsB84 (i : Nat) : List Nat := tableBlock% i 84 [[87],[88],[91,92,93,94],[6],[7],[46],[68,69],[8],[9],[10],[11],[86]]
def hintsB96 (i : Nat) : List Nat := [86]
def hints (i : Nat) : List Nat := if i < 97 then (if i < 48 then (if i < 24 then (if i < 12 then hintsB0 i else hintsB12 i) else (if i < 36 then hintsB24 i else hintsB36 i)) else (if i < 72 then (if i < 60 then hintsB48 i else hintsB60 i) else (if i < 84 then hintsB72 i else (if i < 96 then hintsB84 i else hintsB96 i)))) else []
def ck (i : Nat) := FloorIndex.check pCode values konts (RegProof.states 97 getSt) i (hints i)
end Blc.Floor45.Reg9690391602138
