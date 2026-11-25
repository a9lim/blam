import Blc.SelfintResidual45.TableNotation
import Blc.SelfintResidual45.RegProof

set_option Elab.async false
namespace Blc.Floor45.Reg9692399783850
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
def pCodeB0 (i : Nat) : Certgen.Code := tableBlock% i 0 [.app 1 23,.app 2 22,.app 3 7,.lam 4,.app 5 6,.var 0,.var 0,.lam 8,.app 9 21,.app 10 11,.var 0,.lam 12]
def pCodeB12 (i : Nat) : Certgen.Code := tableBlock% i 12 [.lam 13,.lam 14,.app 15 20,.app 16 17,.var 2,.app 18 19,.var 3,.var 0,.var 0,.var 0,.opaque,.lam 24]
def pCodeB24 (i : Nat) : Certgen.Code := tableBlock% i 24 [.app 25 30,.app 26 27,.var 0,.lam 28,.lam 29,.var 1,.lam 31,.app 32 37,.app 33 34,.var 0,.lam 35,.lam 36]
def pCodeB36 (i : Nat) : Certgen.Code := tableBlock% i 36 [.var 1,.lam 38,.app 39 44,.app 40 41,.var 0,.lam 42,.lam 43,.var 0,.lam 45,.app 46 51,.app 47 48,.var 0]
def pCodeB48 (i : Nat) : Certgen.Code := tableBlock% i 48 [.lam 49,.lam 50,.var 1,.opaque]
def pCode (i : Nat) : Certgen.Code := if i < 52 then (if i < 24 then (if i < 12 then pCodeB0 i else pCodeB12 i) else (if i < 36 then pCodeB24 i else (if i < 48 then pCodeB36 i else pCodeB48 i))) else .opaque
def lit47 : Term := .var 0
def lit50 : Term := .var 1
def lit16 : Term := .var 2
def lit42 : Term := .lam lit47
def lit18 : Term := .var 3
def lit49 : Term := .lam lit50
def lit4 : Term := .app lit47 lit47
def lit41 : Term := .lam lit42
def lit51 : Term := .var 4
def lit48 : Term := .lam lit49
def lit3 : Term := .lam lit4
def lit17 : Term := .app lit18 lit47
def lit39 : Term := .app lit47 lit41
def lit46 : Term := .app lit47 lit48
def lit15 : Term := .app lit16 lit17
def lit14 : Term := .app lit15 lit47
def lit45 : Term := .app lit46 lit51
def lit13 : Term := .lam lit14
def lit44 : Term := .lam lit45
def lit12 : Term := .lam lit13
def lit11 : Term := .lam lit12
def lit9 : Term := .app lit47 lit11
def lit8 : Term := .app lit9 lit47
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
def getTermB0 (i : Nat) : Term := tableBlock% i 0 [lit0,lit1,lit2,lit3,lit4,lit47,lit47,lit7,lit8,lit9,lit47,lit11]
def getTermB12 (i : Nat) : Term := tableBlock% i 12 [lit12,lit13,lit14,lit15,lit16,lit17,lit18,lit47,lit47,lit47,lit50,lit23]
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
def valuesB0 (i : Nat) : List AClo := tableBlock% i 0 [[⟨17,[6,3,1,8]⟩,⟨17,[6,3,1,9]⟩],[⟨11,[10]⟩],[⟨20,[6,3,1,8]⟩,⟨20,[6,3,1,9]⟩],[⟨21,[10]⟩],[⟨22,[]⟩],[⟨17,[4,2,0,10]⟩,⟨17,[5,2,0,10]⟩],[⟨21,[8]⟩,⟨21,[9]⟩],[⟨7,[]⟩],[⟨19,[6,3,1,8]⟩,⟨19,[6,3,1,9]⟩],[⟨6,[7]⟩],[⟨11,[8]⟩,⟨11,[9]⟩]]
def values (i : Nat) : List AClo := if i < 11 then valuesB0 i else []
def kontsB0 (i : Nat) : List Frame := tableBlock% i 0 [[],[⟨⟨23,[]⟩,0⟩],[⟨⟨22,[]⟩,1⟩],[⟨⟨20,[4,2,0,10]⟩,1⟩],[⟨⟨20,[5,2,0,10]⟩,3⟩,⟨⟨20,[5,2,0,10]⟩,4⟩],[⟨⟨20,[6,3,1,8]⟩,2⟩,⟨⟨20,[6,3,1,8]⟩,7⟩,⟨⟨20,[6,3,1,8]⟩,8⟩],[⟨⟨20,[6,3,1,9]⟩,2⟩,⟨⟨20,[6,3,1,9]⟩,7⟩,⟨⟨20,[6,3,1,9]⟩,8⟩],[⟨⟨17,[4,2,0,10]⟩,3⟩],[⟨⟨17,[5,2,0,10]⟩,4⟩],[⟨⟨17,[6,3,1,8]⟩,5⟩],[⟨⟨17,[6,3,1,9]⟩,6⟩],[⟨⟨19,[6,3,1,8]⟩,7⟩]]
def kontsB12 (i : Nat) : List Frame := tableBlock% i 12 [[⟨⟨19,[6,3,1,8]⟩,8⟩],[⟨⟨19,[6,3,1,9]⟩,7⟩],[⟨⟨19,[6,3,1,9]⟩,8⟩],[⟨⟨7,[]⟩,2⟩],[⟨⟨6,[7]⟩,2⟩],[⟨⟨21,[8]⟩,7⟩,⟨⟨21,[8]⟩,8⟩],[⟨⟨21,[9]⟩,2⟩],[⟨⟨21,[10]⟩,17⟩,⟨⟨21,[10]⟩,18⟩],[⟨⟨11,[8]⟩,17⟩],[⟨⟨11,[9]⟩,18⟩],[⟨⟨11,[10]⟩,19⟩]]
def konts (i : Nat) : List Frame := if i < 23 then (if i < 12 then kontsB0 i else kontsB12 i) else []
def getStB0 (i : Nat) : AState := tableBlock% i 0 [⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[]⟩,15⟩,⟨⟨4,[7]⟩,2⟩,⟨⟨5,[7]⟩,16⟩,⟨⟨6,[7]⟩,11⟩,⟨⟨6,[7]⟩,12⟩,⟨⟨6,[7]⟩,13⟩,⟨⟨6,[7]⟩,14⟩,⟨⟨6,[7]⟩,20⟩,⟨⟨6,[7]⟩,21⟩]
def getStB12 (i : Nat) : AState := tableBlock% i 12 [⟨⟨7,[]⟩,11⟩,⟨⟨7,[]⟩,12⟩,⟨⟨7,[]⟩,13⟩,⟨⟨7,[]⟩,14⟩,⟨⟨7,[]⟩,16⟩,⟨⟨7,[]⟩,20⟩,⟨⟨7,[]⟩,21⟩,⟨⟨8,[8]⟩,7⟩,⟨⟨8,[8]⟩,8⟩,⟨⟨8,[9]⟩,2⟩,⟨⟨8,[10]⟩,17⟩,⟨⟨8,[10]⟩,18⟩]
def getStB24 (i : Nat) : AState := tableBlock% i 24 [⟨⟨9,[8]⟩,17⟩,⟨⟨9,[9]⟩,18⟩,⟨⟨9,[10]⟩,19⟩,⟨⟨10,[8]⟩,20⟩,⟨⟨10,[9]⟩,21⟩,⟨⟨10,[10]⟩,22⟩,⟨⟨11,[8]⟩,22⟩,⟨⟨11,[9]⟩,22⟩,⟨⟨11,[10]⟩,9⟩,⟨⟨11,[10]⟩,10⟩,⟨⟨12,[0,10]⟩,5⟩,⟨⟨12,[0,10]⟩,6⟩]
def getStB36 (i : Nat) : AState := tableBlock% i 36 [⟨⟨12,[1,8]⟩,19⟩,⟨⟨12,[1,9]⟩,19⟩,⟨⟨13,[2,0,10]⟩,2⟩,⟨⟨13,[2,0,10]⟩,7⟩,⟨⟨13,[2,0,10]⟩,8⟩,⟨⟨13,[3,1,8]⟩,17⟩,⟨⟨13,[3,1,8]⟩,18⟩,⟨⟨13,[3,1,9]⟩,17⟩,⟨⟨13,[3,1,9]⟩,18⟩,⟨⟨14,[4,2,0,10]⟩,1⟩,⟨⟨14,[5,2,0,10]⟩,3⟩,⟨⟨14,[5,2,0,10]⟩,4⟩]
def getStB48 (i : Nat) : AState := tableBlock% i 48 [⟨⟨14,[6,3,1,8]⟩,2⟩,⟨⟨14,[6,3,1,8]⟩,7⟩,⟨⟨14,[6,3,1,8]⟩,8⟩,⟨⟨14,[6,3,1,9]⟩,2⟩,⟨⟨14,[6,3,1,9]⟩,7⟩,⟨⟨14,[6,3,1,9]⟩,8⟩,⟨⟨15,[4,2,0,10]⟩,3⟩,⟨⟨15,[5,2,0,10]⟩,4⟩,⟨⟨15,[6,3,1,8]⟩,5⟩,⟨⟨15,[6,3,1,9]⟩,6⟩,⟨⟨16,[4,2,0,10]⟩,7⟩,⟨⟨16,[5,2,0,10]⟩,8⟩]
def getStB60 (i : Nat) : AState := tableBlock% i 60 [⟨⟨16,[6,3,1,8]⟩,9⟩,⟨⟨16,[6,3,1,9]⟩,10⟩,⟨⟨17,[6,3,1,8]⟩,7⟩,⟨⟨17,[6,3,1,8]⟩,8⟩,⟨⟨17,[6,3,1,9]⟩,7⟩,⟨⟨17,[6,3,1,9]⟩,8⟩,⟨⟨18,[6,3,1,8]⟩,11⟩,⟨⟨18,[6,3,1,8]⟩,12⟩,⟨⟨18,[6,3,1,9]⟩,13⟩,⟨⟨18,[6,3,1,9]⟩,14⟩,⟨⟨19,[6,3,1,8]⟩,11⟩,⟨⟨19,[6,3,1,8]⟩,12⟩]
def getStB72 (i : Nat) : AState := tableBlock% i 72 [⟨⟨19,[6,3,1,8]⟩,20⟩,⟨⟨19,[6,3,1,9]⟩,11⟩,⟨⟨19,[6,3,1,9]⟩,12⟩,⟨⟨19,[6,3,1,9]⟩,20⟩,⟨⟨21,[8]⟩,11⟩,⟨⟨21,[8]⟩,12⟩,⟨⟨21,[8]⟩,20⟩,⟨⟨21,[9]⟩,11⟩,⟨⟨21,[9]⟩,12⟩,⟨⟨21,[9]⟩,20⟩]
def getSt (i : Nat) : AState := if i < 82 then (if i < 36 then (if i < 12 then getStB0 i else (if i < 24 then getStB12 i else getStB24 i)) else (if i < 60 then (if i < 48 then getStB36 i else getStB48 i) else (if i < 72 then getStB60 i else getStB72 i))) else entry
def hintsB0 (i : Nat) : List Nat := tableBlock% i 0 [[1],[2],[3],[4],[5],[16],[12],[13],[14],[15],[17],[18]]
def hintsB12 (i : Nat) : List Nat := tableBlock% i 12 [[19],[20],[19],[20],[21],[22],[23],[24],[24],[25],[26],[26]]
def hintsB24 (i : Nat) : List Nat := tableBlock% i 24 [[27],[28],[29],[72,75],[11],[30,31],[36],[37],[34],[35],[38,39,40],[38,39,40]]
def hintsB36 (i : Nat) : List Nat := tableBlock% i 36 [[41,42],[43,44],[45],[46],[47],[49,50],[48],[52,53],[51],[54],[55],[55]]
def hintsB48 (i : Nat) : List Nat := tableBlock% i 48 [[56],[56],[56],[57],[57],[57],[58],[59],[60],[61],[62,64],[63,65]]
def hintsB60 (i : Nat) : List Nat := tableBlock% i 60 [[32],[33],[66],[67],[68],[69],[70,73],[71,74],[8],[9],[76,79],[77,80]]
def hintsB72 (i : Nat) : List Nat := tableBlock% i 72 [[78,81],[76,79],[77,80],[78,81],[70,73],[71,74],[72,75],[6],[7],[10]]
def hints (i : Nat) : List Nat := if i < 82 then (if i < 36 then (if i < 12 then hintsB0 i else (if i < 24 then hintsB12 i else hintsB24 i)) else (if i < 60 then (if i < 48 then hintsB36 i else hintsB48 i) else (if i < 72 then hintsB60 i else hintsB72 i))) else []
def ck (i : Nat) := FloorIndex.check pCode values konts (RegProof.states 82 getSt) i (hints i)
end Blc.Floor45.Reg9692399783850
