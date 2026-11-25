import Blc.SelfintResidual45.TableNotation
import Blc.SelfintResidual45.RegProof

set_option Elab.async false
namespace Blc.Floor45.Reg9690391613238
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
def pCodeB0 (i : Nat) : Certgen.Code := tableBlock% i 0 [.app 1 23,.app 2 22,.app 3 7,.lam 4,.app 5 6,.var 0,.var 0,.lam 8,.lam 9,.app 10 11,.var 1,.lam 12]
def pCodeB12 (i : Nat) : Certgen.Code := tableBlock% i 12 [.app 13 19,.app 14 15,.var 0,.app 16 17,.var 0,.lam 18,.var 3,.app 20 21,.var 0,.var 1,.opaque,.lam 24]
def pCodeB24 (i : Nat) : Certgen.Code := tableBlock% i 24 [.app 25 30,.app 26 27,.var 0,.lam 28,.lam 29,.var 1,.lam 31,.app 32 37,.app 33 34,.var 0,.lam 35,.lam 36]
def pCodeB36 (i : Nat) : Certgen.Code := tableBlock% i 36 [.var 1,.lam 38,.app 39 44,.app 40 41,.var 0,.lam 42,.lam 43,.var 0,.lam 45,.app 46 51,.app 47 48,.var 0]
def pCodeB48 (i : Nat) : Certgen.Code := tableBlock% i 48 [.lam 49,.lam 50,.var 1,.opaque]
def pCode (i : Nat) : Certgen.Code := if i < 52 then (if i < 24 then (if i < 12 then pCodeB0 i else pCodeB12 i) else (if i < 36 then pCodeB24 i else (if i < 48 then pCodeB36 i else pCodeB48 i))) else .opaque
def lit47 : Term := .var 0
def lit50 : Term := .var 1
def lit42 : Term := .lam lit47
def lit18 : Term := .var 3
def lit49 : Term := .lam lit50
def lit4 : Term := .app lit47 lit47
def lit41 : Term := .lam lit42
def lit51 : Term := .var 4
def lit17 : Term := .lam lit18
def lit19 : Term := .app lit47 lit50
def lit48 : Term := .lam lit49
def lit3 : Term := .lam lit4
def lit39 : Term := .app lit47 lit41
def lit15 : Term := .app lit47 lit17
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
def getTermB12 (i : Nat) : Term := tableBlock% i 12 [lit12,lit13,lit47,lit15,lit47,lit17,lit18,lit19,lit47,lit50,lit50,lit23]
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
def valuesB0 (i : Nat) : List AClo := tableBlock% i 0 [[⟨15,[2,10,7]⟩,⟨15,[2,12,6]⟩],[⟨17,[2,10,7]⟩,⟨17,[2,12,6]⟩],[⟨11,[9,8]⟩,⟨11,[11,8]⟩],[⟨15,[1,9,8]⟩,⟨15,[1,11,8]⟩],[⟨21,[1,9,8]⟩,⟨21,[1,11,8]⟩],[⟨7,[]⟩],[⟨19,[1,9,8]⟩,⟨19,[1,11,8]⟩],[⟨6,[5]⟩],[⟨11,[10,7]⟩,⟨11,[12,6]⟩],[⟨23,[]⟩],[⟨22,[]⟩],[⟨19,[0,9,8]⟩,⟨19,[0,11,8]⟩]]
def valuesB12 (i : Nat) : List AClo := [⟨15,[0,9,8]⟩,⟨15,[0,11,8]⟩]
def values (i : Nat) : List AClo := if i < 13 then (if i < 12 then valuesB0 i else valuesB12 i) else []
def kontsB0 (i : Nat) : List Frame := tableBlock% i 0 [[],[⟨⟨23,[]⟩,0⟩],[⟨⟨22,[]⟩,1⟩],[⟨⟨19,[0,9,8]⟩,7⟩,⟨⟨19,[0,9,8]⟩,8⟩],[⟨⟨19,[0,11,8]⟩,7⟩,⟨⟨19,[0,11,8]⟩,8⟩],[⟨⟨19,[1,9,8]⟩,9⟩,⟨⟨19,[1,9,8]⟩,10⟩],[⟨⟨19,[1,11,8]⟩,9⟩,⟨⟨19,[1,11,8]⟩,10⟩],[⟨⟨19,[2,10,7]⟩,0⟩,⟨⟨19,[2,10,7]⟩,7⟩,⟨⟨19,[2,10,7]⟩,8⟩],[⟨⟨19,[2,12,6]⟩,0⟩,⟨⟨19,[2,12,6]⟩,7⟩,⟨⟨19,[2,12,6]⟩,8⟩],[⟨⟨15,[0,9,8]⟩,3⟩],[⟨⟨15,[0,11,8]⟩,4⟩],[⟨⟨15,[1,9,8]⟩,5⟩]]
def kontsB12 (i : Nat) : List Frame := tableBlock% i 12 [[⟨⟨15,[1,11,8]⟩,6⟩],[⟨⟨15,[2,10,7]⟩,7⟩],[⟨⟨15,[2,12,6]⟩,8⟩],[⟨⟨17,[2,10,7]⟩,9⟩,⟨⟨17,[2,10,7]⟩,10⟩],[⟨⟨17,[2,12,6]⟩,9⟩,⟨⟨17,[2,12,6]⟩,10⟩],[⟨⟨21,[1,9,8]⟩,5⟩,⟨⟨21,[1,9,8]⟩,6⟩],[⟨⟨21,[1,9,8]⟩,5⟩,⟨⟨21,[1,9,8]⟩,6⟩,⟨⟨21,[1,9,8]⟩,28⟩],[⟨⟨21,[1,9,8]⟩,28⟩],[⟨⟨21,[1,11,8]⟩,5⟩,⟨⟨21,[1,11,8]⟩,6⟩],[⟨⟨21,[1,11,8]⟩,5⟩,⟨⟨21,[1,11,8]⟩,6⟩,⟨⟨21,[1,11,8]⟩,28⟩],[⟨⟨21,[1,11,8]⟩,28⟩],[⟨⟨7,[]⟩,2⟩]]
def kontsB24 (i : Nat) : List Frame := tableBlock% i 24 [[⟨⟨6,[5]⟩,2⟩],[⟨⟨11,[9,8]⟩,0⟩],[⟨⟨11,[10,7]⟩,1⟩],[⟨⟨11,[11,8]⟩,7⟩,⟨⟨11,[11,8]⟩,8⟩],[⟨⟨11,[12,6]⟩,3⟩,⟨⟨11,[12,6]⟩,4⟩]]
def konts (i : Nat) : List Frame := if i < 29 then (if i < 12 then kontsB0 i else (if i < 24 then kontsB12 i else kontsB24 i)) else []
def getStB0 (i : Nat) : AState := tableBlock% i 0 [⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[]⟩,23⟩,⟨⟨4,[5]⟩,2⟩,⟨⟨5,[5]⟩,24⟩,⟨⟨6,[5]⟩,5⟩,⟨⟨6,[5]⟩,6⟩,⟨⟨6,[5]⟩,26⟩,⟨⟨6,[5]⟩,28⟩,⟨⟨7,[]⟩,5⟩,⟨⟨7,[]⟩,6⟩]
def getStB12 (i : Nat) : AState := tableBlock% i 12 [⟨⟨7,[]⟩,24⟩,⟨⟨7,[]⟩,26⟩,⟨⟨7,[]⟩,28⟩,⟨⟨8,[6]⟩,9⟩,⟨⟨8,[6]⟩,10⟩,⟨⟨8,[7]⟩,2⟩,⟨⟨8,[8]⟩,1⟩,⟨⟨8,[8]⟩,3⟩,⟨⟨8,[8]⟩,4⟩,⟨⟨9,[9,8]⟩,0⟩,⟨⟨9,[10,7]⟩,1⟩,⟨⟨9,[11,8]⟩,7⟩]
def getStB24 (i : Nat) : AState := tableBlock% i 24 [⟨⟨9,[11,8]⟩,8⟩,⟨⟨9,[12,6]⟩,3⟩,⟨⟨9,[12,6]⟩,4⟩,⟨⟨10,[9,8]⟩,25⟩,⟨⟨10,[10,7]⟩,26⟩,⟨⟨10,[11,8]⟩,27⟩,⟨⟨10,[12,6]⟩,28⟩,⟨⟨11,[9,8]⟩,13⟩,⟨⟨11,[9,8]⟩,14⟩,⟨⟨11,[9,8]⟩,15⟩,⟨⟨11,[9,8]⟩,16⟩,⟨⟨11,[10,7]⟩,25⟩]
def getStB36 (i : Nat) : AState := tableBlock% i 36 [⟨⟨11,[10,7]⟩,27⟩,⟨⟨11,[11,8]⟩,13⟩,⟨⟨11,[11,8]⟩,14⟩,⟨⟨11,[11,8]⟩,15⟩,⟨⟨11,[11,8]⟩,16⟩,⟨⟨11,[12,6]⟩,25⟩,⟨⟨11,[12,6]⟩,27⟩,⟨⟨12,[0,9,8]⟩,7⟩,⟨⟨12,[0,9,8]⟩,8⟩,⟨⟨12,[0,11,8]⟩,7⟩,⟨⟨12,[0,11,8]⟩,8⟩,⟨⟨12,[1,9,8]⟩,9⟩]
def getStB48 (i : Nat) : AState := tableBlock% i 48 [⟨⟨12,[1,9,8]⟩,10⟩,⟨⟨12,[1,11,8]⟩,9⟩,⟨⟨12,[1,11,8]⟩,10⟩,⟨⟨12,[2,10,7]⟩,0⟩,⟨⟨12,[2,10,7]⟩,7⟩,⟨⟨12,[2,10,7]⟩,8⟩,⟨⟨12,[2,12,6]⟩,0⟩,⟨⟨12,[2,12,6]⟩,7⟩,⟨⟨12,[2,12,6]⟩,8⟩,⟨⟨13,[0,9,8]⟩,3⟩,⟨⟨13,[0,11,8]⟩,4⟩,⟨⟨13,[1,9,8]⟩,5⟩]
def getStB60 (i : Nat) : AState := tableBlock% i 60 [⟨⟨13,[1,11,8]⟩,6⟩,⟨⟨13,[2,10,7]⟩,7⟩,⟨⟨13,[2,12,6]⟩,8⟩,⟨⟨14,[0,9,8]⟩,9⟩,⟨⟨14,[0,11,8]⟩,10⟩,⟨⟨14,[1,9,8]⟩,11⟩,⟨⟨14,[1,11,8]⟩,12⟩,⟨⟨14,[2,10,7]⟩,13⟩,⟨⟨14,[2,12,6]⟩,14⟩,⟨⟨15,[2,10,7]⟩,9⟩,⟨⟨15,[2,10,7]⟩,10⟩,⟨⟨15,[2,12,6]⟩,9⟩]
def getStB72 (i : Nat) : AState := tableBlock% i 72 [⟨⟨15,[2,12,6]⟩,10⟩,⟨⟨16,[2,10,7]⟩,15⟩,⟨⟨16,[2,12,6]⟩,16⟩,⟨⟨17,[2,10,7]⟩,11⟩,⟨⟨17,[2,10,7]⟩,12⟩,⟨⟨17,[2,10,7]⟩,17⟩,⟨⟨17,[2,10,7]⟩,18⟩,⟨⟨17,[2,10,7]⟩,19⟩,⟨⟨17,[2,10,7]⟩,20⟩,⟨⟨17,[2,10,7]⟩,21⟩,⟨⟨17,[2,10,7]⟩,22⟩,⟨⟨17,[2,12,6]⟩,11⟩]
def getStB84 (i : Nat) : AState := tableBlock% i 84 [⟨⟨17,[2,12,6]⟩,12⟩,⟨⟨17,[2,12,6]⟩,17⟩,⟨⟨17,[2,12,6]⟩,18⟩,⟨⟨17,[2,12,6]⟩,19⟩,⟨⟨17,[2,12,6]⟩,20⟩,⟨⟨17,[2,12,6]⟩,21⟩,⟨⟨17,[2,12,6]⟩,22⟩,⟨⟨18,[3,2,10,7]⟩,5⟩,⟨⟨18,[3,2,10,7]⟩,6⟩,⟨⟨18,[3,2,12,6]⟩,5⟩,⟨⟨18,[3,2,12,6]⟩,6⟩,⟨⟨18,[4,2,10,7]⟩,5⟩]
def getStB96 (i : Nat) : AState := tableBlock% i 96 [⟨⟨18,[4,2,10,7]⟩,6⟩,⟨⟨18,[4,2,10,7]⟩,28⟩,⟨⟨18,[4,2,12,6]⟩,5⟩,⟨⟨18,[4,2,12,6]⟩,6⟩,⟨⟨18,[4,2,12,6]⟩,28⟩,⟨⟨19,[1,9,8]⟩,5⟩,⟨⟨19,[1,9,8]⟩,6⟩,⟨⟨19,[1,9,8]⟩,28⟩,⟨⟨19,[1,11,8]⟩,5⟩,⟨⟨19,[1,11,8]⟩,6⟩,⟨⟨19,[1,11,8]⟩,28⟩,⟨⟨20,[1,9,8]⟩,17⟩]
def getStB108 (i : Nat) : AState := tableBlock% i 108 [⟨⟨20,[1,9,8]⟩,18⟩,⟨⟨20,[1,9,8]⟩,19⟩,⟨⟨20,[1,11,8]⟩,20⟩,⟨⟨20,[1,11,8]⟩,21⟩,⟨⟨20,[1,11,8]⟩,22⟩]
def getSt (i : Nat) : AState := if i < 113 then (if i < 60 then (if i < 24 then (if i < 12 then getStB0 i else getStB12 i) else (if i < 36 then getStB24 i else (if i < 48 then getStB36 i else getStB48 i))) else (if i < 84 then (if i < 72 then getStB60 i else getStB72 i) else (if i < 96 then getStB84 i else (if i < 108 then getStB96 i else getStB108 i)))) else entry
def hintsB0 (i : Nat) : List Nat := tableBlock% i 0 [[1],[2],[3],[4],[5],[12],[10],[11],[13],[14],[15,16],[15,16]]
def hintsB12 (i : Nat) : List Nat := tableBlock% i 12 [[17],[18],[19,20],[25],[26],[22],[21],[23,24],[23,24],[27],[28],[29]]
def hintsB24 (i : Nat) : List Nat := tableBlock% i 24 [[29],[30],[30],[35,41],[8],[36,42],[103,106],[43],[44],[47,48],[47,48],[51]]
def hintsB36 (i : Nat) : List Nat := tableBlock% i 36 [[52,53],[45],[46],[49,50],[49,50],[54],[55,56],[57],[57],[58],[58],[59]]
def hintsB48 (i : Nat) : List Nat := tableBlock% i 48 [[59],[60],[60],[61],[61],[61],[62],[62],[62],[63],[64],[65]]
def hintsB60 (i : Nat) : List Nat := tableBlock% i 60 [[66],[67],[68],[69,71],[70,72],[75,83],[76,84],[31,37],[32,38],[73],[73],[74]]
def hintsB72 (i : Nat) : List Nat := tableBlock% i 72 [[74],[33,39],[34,40],[91],[92],[95,96],[95,96,97],[97],[95,96],[95,96,97],[97],[93]]
def hintsB84 (i : Nat) : List Nat := tableBlock% i 84 [[94],[98,99],[98,99,100],[100],[98,99],[98,99,100],[100],[6],[7],[101,104],[102,105],[6]]
def hintsB96 (i : Nat) : List Nat := tableBlock% i 96 [[7],[9],[101,104],[102,105],[103,106],[107],[107],[108],[110],[110],[111],[77,85]]
def hintsB108 (i : Nat) : List Nat := tableBlock% i 108 [[78,86],[79,87],[80,88],[81,89],[82,90]]
def hints (i : Nat) : List Nat := if i < 113 then (if i < 60 then (if i < 24 then (if i < 12 then hintsB0 i else hintsB12 i) else (if i < 36 then hintsB24 i else (if i < 48 then hintsB36 i else hintsB48 i))) else (if i < 84 then (if i < 72 then hintsB60 i else hintsB72 i) else (if i < 96 then hintsB84 i else (if i < 108 then hintsB96 i else hintsB108 i)))) else []
def ck (i : Nat) := FloorIndex.check pCode values konts (RegProof.states 113 getSt) i (hints i)
end Blc.Floor45.Reg9690391613238
