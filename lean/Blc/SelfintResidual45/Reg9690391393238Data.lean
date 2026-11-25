import Blc.SelfintResidual45.TableNotation
import Blc.SelfintResidual45.RegProof

set_option Elab.async false
namespace Blc.Floor45.Reg9690391393238
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
def pCodeB0 (i : Nat) : Certgen.Code := tableBlock% i 0 [.app 1 23,.app 2 22,.app 3 7,.lam 4,.app 5 6,.var 0,.var 0,.lam 8,.lam 9,.app 10 11,.var 1,.lam 12]
def pCodeB12 (i : Nat) : Certgen.Code := tableBlock% i 12 [.app 13 21,.app 14 18,.app 15 16,.var 0,.lam 17,.var 1,.app 19 20,.var 2,.var 0,.var 1,.opaque,.lam 24]
def pCodeB24 (i : Nat) : Certgen.Code := tableBlock% i 24 [.app 25 30,.app 26 27,.var 0,.lam 28,.lam 29,.var 1,.lam 31,.app 32 37,.app 33 34,.var 0,.lam 35,.lam 36]
def pCodeB36 (i : Nat) : Certgen.Code := tableBlock% i 36 [.var 1,.lam 38,.app 39 44,.app 40 41,.var 0,.lam 42,.lam 43,.var 0,.lam 45,.app 46 51,.app 47 48,.var 0]
def pCodeB48 (i : Nat) : Certgen.Code := tableBlock% i 48 [.lam 49,.lam 50,.var 1,.opaque]
def pCode (i : Nat) : Certgen.Code := if i < 52 then (if i < 24 then (if i < 12 then pCodeB0 i else pCodeB12 i) else (if i < 36 then pCodeB24 i else (if i < 48 then pCodeB36 i else pCodeB48 i))) else .opaque
def lit47 : Term := .var 0
def lit50 : Term := .var 1
def lit19 : Term := .var 2
def lit42 : Term := .lam lit47
def lit49 : Term := .lam lit50
def lit4 : Term := .app lit47 lit47
def lit41 : Term := .lam lit42
def lit51 : Term := .var 4
def lit48 : Term := .lam lit49
def lit3 : Term := .lam lit4
def lit18 : Term := .app lit19 lit47
def lit14 : Term := .app lit47 lit49
def lit39 : Term := .app lit47 lit41
def lit46 : Term := .app lit47 lit48
def lit13 : Term := .app lit14 lit18
def lit45 : Term := .app lit46 lit51
def lit44 : Term := .lam lit45
def lit12 : Term := .app lit13 lit50
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
def getTermB12 (i : Nat) : Term := tableBlock% i 12 [lit12,lit13,lit14,lit47,lit49,lit50,lit18,lit19,lit47,lit50,lit50,lit23]
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
def valuesB0 (i : Nat) : List AClo := tableBlock% i 0 [[⟨18,[0,10,9]⟩,⟨18,[1,10,9]⟩,⟨18,[2,11,8]⟩],[⟨16,[3,11,8]⟩],[⟨20,[0,10,9]⟩,⟨20,[1,10,9]⟩],[⟨11,[10,9]⟩],[⟨16,[1,10,9]⟩,⟨16,[2,11,8]⟩],[⟨11,[5,7]⟩,⟨11,[12,7]⟩],[⟨7,[]⟩],[⟨20,[2,11,8]⟩],[⟨6,[6]⟩],[⟨11,[11,8]⟩],[⟨23,[]⟩],[⟨22,[]⟩]]
def valuesB12 (i : Nat) : List AClo := [⟨16,[0,10,9]⟩,⟨16,[2,11,8]⟩]
def values (i : Nat) : List AClo := if i < 13 then (if i < 12 then valuesB0 i else valuesB12 i) else []
def kontsB0 (i : Nat) : List Frame := tableBlock% i 0 [[],[⟨⟨23,[]⟩,0⟩],[⟨⟨22,[]⟩,1⟩],[⟨⟨21,[0,10,9]⟩,3⟩,⟨⟨21,[0,10,9]⟩,4⟩,⟨⟨21,[0,10,9]⟩,5⟩],[⟨⟨21,[1,10,9]⟩,10⟩],[⟨⟨21,[2,11,8]⟩,11⟩,⟨⟨21,[2,11,8]⟩,13⟩,⟨⟨21,[2,11,8]⟩,31⟩,⟨⟨21,[2,11,8]⟩,32⟩],[⟨⟨21,[3,11,8]⟩,0⟩],[⟨⟨18,[0,10,9]⟩,3⟩],[⟨⟨18,[1,10,9]⟩,4⟩],[⟨⟨18,[2,11,8]⟩,5⟩],[⟨⟨18,[3,11,8]⟩,6⟩],[⟨⟨16,[0,10,9]⟩,7⟩]]
def kontsB12 (i : Nat) : List Frame := tableBlock% i 12 [[⟨⟨16,[1,10,9]⟩,8⟩],[⟨⟨16,[2,11,8]⟩,9⟩],[⟨⟨16,[3,11,8]⟩,10⟩],[⟨⟨20,[0,10,9]⟩,11⟩],[⟨⟨20,[0,10,9]⟩,13⟩],[⟨⟨20,[0,10,9]⟩,31⟩],[⟨⟨20,[0,10,9]⟩,32⟩],[⟨⟨20,[1,10,9]⟩,11⟩],[⟨⟨20,[1,10,9]⟩,13⟩],[⟨⟨20,[1,10,9]⟩,31⟩],[⟨⟨20,[1,10,9]⟩,32⟩],[⟨⟨20,[2,11,8]⟩,11⟩]]
def kontsB24 (i : Nat) : List Frame := tableBlock% i 24 [[⟨⟨20,[2,11,8]⟩,13⟩],[⟨⟨20,[2,11,8]⟩,31⟩],[⟨⟨20,[2,11,8]⟩,32⟩],[⟨⟨7,[]⟩,2⟩],[⟨⟨6,[6]⟩,2⟩],[⟨⟨11,[10,9]⟩,0⟩],[⟨⟨11,[11,8]⟩,1⟩],[⟨⟨11,[12,7]⟩,7⟩,⟨⟨11,[12,7]⟩,9⟩],[⟨⟨11,[5,7]⟩,7⟩,⟨⟨11,[5,7]⟩,9⟩]]
def konts (i : Nat) : List Frame := if i < 33 then (if i < 12 then kontsB0 i else (if i < 24 then kontsB12 i else kontsB24 i)) else []
def getStB0 (i : Nat) : AState := tableBlock% i 0 [⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[]⟩,27⟩,⟨⟨4,[6]⟩,2⟩,⟨⟨5,[6]⟩,28⟩,⟨⟨6,[6]⟩,23⟩,⟨⟨6,[6]⟩,24⟩,⟨⟨6,[6]⟩,25⟩,⟨⟨6,[6]⟩,26⟩,⟨⟨6,[6]⟩,30⟩,⟨⟨7,[]⟩,23⟩]
def getStB12 (i : Nat) : AState := tableBlock% i 12 [⟨⟨7,[]⟩,24⟩,⟨⟨7,[]⟩,25⟩,⟨⟨7,[]⟩,26⟩,⟨⟨7,[]⟩,28⟩,⟨⟨7,[]⟩,30⟩,⟨⟨8,[7]⟩,11⟩,⟨⟨8,[7]⟩,13⟩,⟨⟨8,[7]⟩,31⟩,⟨⟨8,[7]⟩,32⟩,⟨⟨8,[8]⟩,2⟩,⟨⟨8,[9]⟩,1⟩,⟨⟨9,[5,7]⟩,7⟩]
def getStB24 (i : Nat) : AState := tableBlock% i 24 [⟨⟨9,[5,7]⟩,9⟩,⟨⟨9,[10,9]⟩,0⟩,⟨⟨9,[11,8]⟩,1⟩,⟨⟨9,[12,7]⟩,7⟩,⟨⟨9,[12,7]⟩,9⟩,⟨⟨10,[5,7]⟩,32⟩,⟨⟨10,[10,9]⟩,29⟩,⟨⟨10,[11,8]⟩,30⟩,⟨⟨10,[12,7]⟩,31⟩,⟨⟨11,[10,9]⟩,7⟩,⟨⟨11,[10,9]⟩,8⟩,⟨⟨11,[10,9]⟩,9⟩]
def getStB36 (i : Nat) : AState := tableBlock% i 36 [⟨⟨11,[10,9]⟩,14⟩,⟨⟨11,[11,8]⟩,15⟩,⟨⟨11,[11,8]⟩,16⟩,⟨⟨11,[11,8]⟩,17⟩,⟨⟨11,[11,8]⟩,18⟩,⟨⟨11,[11,8]⟩,19⟩,⟨⟨11,[11,8]⟩,20⟩,⟨⟨11,[11,8]⟩,21⟩,⟨⟨11,[11,8]⟩,22⟩,⟨⟨11,[11,8]⟩,29⟩,⟨⟨12,[0,10,9]⟩,3⟩,⟨⟨12,[0,10,9]⟩,4⟩]
def getStB48 (i : Nat) : AState := tableBlock% i 48 [⟨⟨12,[0,10,9]⟩,5⟩,⟨⟨12,[1,10,9]⟩,10⟩,⟨⟨12,[2,11,8]⟩,11⟩,⟨⟨12,[2,11,8]⟩,13⟩,⟨⟨12,[2,11,8]⟩,31⟩,⟨⟨12,[2,11,8]⟩,32⟩,⟨⟨12,[3,11,8]⟩,0⟩,⟨⟨13,[0,10,9]⟩,3⟩,⟨⟨13,[1,10,9]⟩,4⟩,⟨⟨13,[2,11,8]⟩,5⟩,⟨⟨13,[3,11,8]⟩,6⟩,⟨⟨14,[0,10,9]⟩,7⟩]
def getStB60 (i : Nat) : AState := tableBlock% i 60 [⟨⟨14,[1,10,9]⟩,8⟩,⟨⟨14,[2,11,8]⟩,9⟩,⟨⟨14,[3,11,8]⟩,10⟩,⟨⟨15,[0,10,9]⟩,11⟩,⟨⟨15,[1,10,9]⟩,12⟩,⟨⟨15,[2,11,8]⟩,13⟩,⟨⟨15,[3,11,8]⟩,14⟩,⟨⟨16,[3,11,8]⟩,12⟩,⟨⟨16,[3,11,8]⟩,13⟩,⟨⟨16,[3,11,8]⟩,31⟩,⟨⟨16,[3,11,8]⟩,32⟩,⟨⟨17,[4,3,11,8]⟩,8⟩]
def getStB72 (i : Nat) : AState := tableBlock% i 72 [⟨⟨17,[4,3,11,8]⟩,9⟩,⟨⟨17,[5,3,11,8]⟩,7⟩,⟨⟨17,[5,3,11,8]⟩,9⟩,⟨⟨18,[0,10,9]⟩,11⟩,⟨⟨18,[0,10,9]⟩,13⟩,⟨⟨18,[0,10,9]⟩,31⟩,⟨⟨18,[0,10,9]⟩,32⟩,⟨⟨18,[1,10,9]⟩,11⟩,⟨⟨18,[1,10,9]⟩,13⟩,⟨⟨18,[1,10,9]⟩,31⟩,⟨⟨18,[1,10,9]⟩,32⟩,⟨⟨18,[2,11,8]⟩,11⟩]
def getStB84 (i : Nat) : AState := tableBlock% i 84 [⟨⟨18,[2,11,8]⟩,13⟩,⟨⟨18,[2,11,8]⟩,31⟩,⟨⟨18,[2,11,8]⟩,32⟩,⟨⟨19,[0,10,9]⟩,15⟩,⟨⟨19,[0,10,9]⟩,16⟩,⟨⟨19,[0,10,9]⟩,17⟩,⟨⟨19,[0,10,9]⟩,18⟩,⟨⟨19,[1,10,9]⟩,19⟩,⟨⟨19,[1,10,9]⟩,20⟩,⟨⟨19,[1,10,9]⟩,21⟩,⟨⟨19,[1,10,9]⟩,22⟩,⟨⟨19,[2,11,8]⟩,23⟩]
def getStB96 (i : Nat) : AState := tableBlock% i 96 [⟨⟨19,[2,11,8]⟩,24⟩,⟨⟨19,[2,11,8]⟩,25⟩,⟨⟨19,[2,11,8]⟩,26⟩,⟨⟨20,[0,10,9]⟩,13⟩,⟨⟨20,[0,10,9]⟩,31⟩,⟨⟨20,[0,10,9]⟩,32⟩,⟨⟨20,[1,10,9]⟩,13⟩,⟨⟨20,[1,10,9]⟩,31⟩,⟨⟨20,[1,10,9]⟩,32⟩,⟨⟨20,[2,11,8]⟩,31⟩,⟨⟨20,[2,11,8]⟩,32⟩]
def getSt (i : Nat) : AState := if i < 107 then (if i < 48 then (if i < 24 then (if i < 12 then getStB0 i else getStB12 i) else (if i < 36 then getStB24 i else getStB36 i)) else (if i < 72 then (if i < 60 then getStB48 i else getStB60 i) else (if i < 84 then getStB72 i else (if i < 96 then getStB84 i else getStB96 i)))) else entry
def hintsB0 (i : Nat) : List Nat := tableBlock% i 0 [[1],[2],[3],[4],[5],[15],[11],[12],[13],[14],[16],[17]]
def hintsB12 (i : Nat) : List Nat := tableBlock% i 12 [[18],[19],[20],[21],[22],[27],[28],[23,24],[23,24],[26],[25],[29]]
def hintsB24 (i : Nat) : List Nat := tableBlock% i 24 [[29],[30],[31],[32],[32],[106],[45],[10],[105],[46],[47],[48]]
def hintsB36 (i : Nat) : List Nat := tableBlock% i 36 [[49],[50],[51],[52],[53],[50],[51],[52],[53],[54],[55],[55]]
def hintsB48 (i : Nat) : List Nat := tableBlock% i 48 [[55],[56],[57],[57],[57],[57],[58],[59],[60],[61],[62],[63]]
def hintsB60 (i : Nat) : List Nat := tableBlock% i 60 [[64],[65],[66],[75,79,83],[67],[99,102],[36],[71],[72],[73,74],[73,74],[34]]
def hintsB72 (i : Nat) : List Nat := tableBlock% i 72 [[35],[33],[35],[87],[88],[89],[90],[91],[92],[93],[94],[95]]
def hintsB84 (i : Nat) : List Nat := tableBlock% i 84 [[96],[97],[98],[37],[38],[39],[40],[41],[42],[43],[44],[6]]
def hintsB96 (i : Nat) : List Nat := tableBlock% i 96 [[7],[8],[9],[76,80,84],[77,81,85],[78,82,86],[68],[69],[70],[100,103],[101,104]]
def hints (i : Nat) : List Nat := if i < 107 then (if i < 48 then (if i < 24 then (if i < 12 then hintsB0 i else hintsB12 i) else (if i < 36 then hintsB24 i else hintsB36 i)) else (if i < 72 then (if i < 60 then hintsB48 i else hintsB60 i) else (if i < 84 then hintsB72 i else (if i < 96 then hintsB84 i else hintsB96 i)))) else []
def ck (i : Nat) := FloorIndex.check pCode values konts (RegProof.states 107 getSt) i (hints i)
end Blc.Floor45.Reg9690391393238
