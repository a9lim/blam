import Blc.SelfintResidual45.TableNotation
import Blc.SelfintResidual45.RegProof

set_option Elab.async false
namespace Blc.Floor45.Reg9668408052694
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
def pCodeB0 (i : Nat) : Certgen.Code := tableBlock% i 0 [.app 1 23,.app 2 22,.app 3 12,.lam 4,.app 5 6,.var 0,.app 7 11,.app 8 9,.var 0,.lam 10,.var 1,.var 0]
def pCodeB12 (i : Nat) : Certgen.Code := tableBlock% i 12 [.lam 13,.lam 14,.app 15 16,.var 1,.lam 17,.app 18 21,.app 19 20,.var 2,.var 0,.var 1,.opaque,.lam 24]
def pCodeB24 (i : Nat) : Certgen.Code := tableBlock% i 24 [.app 25 30,.app 26 27,.var 0,.lam 28,.lam 29,.var 1,.lam 31,.app 32 37,.app 33 34,.var 0,.lam 35,.lam 36]
def pCodeB36 (i : Nat) : Certgen.Code := tableBlock% i 36 [.var 1,.lam 38,.app 39 44,.app 40 41,.var 0,.lam 42,.lam 43,.var 0,.lam 45,.app 46 51,.app 47 48,.var 0]
def pCodeB48 (i : Nat) : Certgen.Code := tableBlock% i 48 [.lam 49,.lam 50,.var 1,.opaque]
def pCode (i : Nat) : Certgen.Code := if i < 52 then (if i < 24 then (if i < 12 then pCodeB0 i else pCodeB12 i) else (if i < 36 then pCodeB24 i else (if i < 48 then pCodeB36 i else pCodeB48 i))) else .opaque
def lit47 : Term := .var 0
def lit50 : Term := .var 1
def lit19 : Term := .var 2
def lit42 : Term := .lam lit47
def lit49 : Term := .lam lit50
def lit41 : Term := .lam lit42
def lit51 : Term := .var 4
def lit48 : Term := .lam lit49
def lit18 : Term := .app lit19 lit47
def lit7 : Term := .app lit47 lit49
def lit39 : Term := .app lit47 lit41
def lit46 : Term := .app lit47 lit48
def lit6 : Term := .app lit7 lit47
def lit17 : Term := .app lit18 lit50
def lit16 : Term := .lam lit17
def lit4 : Term := .app lit47 lit6
def lit3 : Term := .lam lit4
def lit45 : Term := .app lit46 lit51
def lit14 : Term := .app lit50 lit16
def lit44 : Term := .lam lit45
def lit13 : Term := .lam lit14
def lit12 : Term := .lam lit13
def lit38 : Term := .app lit39 lit44
def lit37 : Term := .lam lit38
def lit2 : Term := .app lit3 lit12
def lit31 : Term := .app lit46 lit37
def lit1 : Term := .app lit2 lit50
def lit30 : Term := .lam lit31
def lit24 : Term := .app lit46 lit30
def lit23 : Term := .lam lit24
def lit0 : Term := .app lit1 lit23
def getTermB0 (i : Nat) : Term := tableBlock% i 0 [lit0,lit1,lit2,lit3,lit4,lit47,lit6,lit7,lit47,lit49,lit50,lit47]
def getTermB12 (i : Nat) : Term := tableBlock% i 12 [lit12,lit13,lit14,lit50,lit16,lit17,lit18,lit19,lit47,lit50,lit50,lit23]
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
def valuesB0 (i : Nat) : List AClo := tableBlock% i 0 [[⟨16,[5,2]⟩],[⟨20,[8,5,2]⟩,⟨20,[9,5,2]⟩],[⟨6,[10]⟩],[⟨9,[10]⟩],[⟨23,[]⟩],[⟨22,[]⟩],[⟨21,[8,5,2]⟩,⟨21,[9,5,2]⟩],[⟨11,[10]⟩],[⟨16,[4,0]⟩,⟨16,[6,1]⟩],[⟨20,[8,4,0]⟩,⟨20,[8,6,1]⟩,⟨20,[9,4,0]⟩,⟨20,[9,6,1]⟩],[⟨12,[]⟩],[⟨16,[7,3]⟩]]
def values (i : Nat) : List AClo := if i < 12 then valuesB0 i else []
def kontsB0 (i : Nat) : List Frame := tableBlock% i 0 [[],[⟨⟨23,[]⟩,0⟩],[⟨⟨22,[]⟩,1⟩],[⟨⟨16,[4,0]⟩,0⟩],[⟨⟨16,[5,2]⟩,1⟩],[⟨⟨16,[6,1]⟩,0⟩,⟨⟨16,[6,1]⟩,7⟩,⟨⟨16,[6,1]⟩,10⟩],[⟨⟨16,[7,3]⟩,4⟩,⟨⟨16,[7,3]⟩,14⟩,⟨⟨16,[7,3]⟩,17⟩],[⟨⟨21,[8,4,0]⟩,0⟩,⟨⟨21,[8,4,0]⟩,7⟩,⟨⟨21,[8,4,0]⟩,10⟩],[⟨⟨21,[8,5,2]⟩,0⟩],[⟨⟨21,[8,6,1]⟩,0⟩,⟨⟨21,[8,6,1]⟩,7⟩,⟨⟨21,[8,6,1]⟩,10⟩],[⟨⟨21,[9,4,0]⟩,9⟩,⟨⟨21,[9,4,0]⟩,12⟩],[⟨⟨21,[9,5,2]⟩,7⟩,⟨⟨21,[9,5,2]⟩,10⟩]]
def kontsB12 (i : Nat) : List Frame := tableBlock% i 12 [[⟨⟨21,[9,6,1]⟩,9⟩,⟨⟨21,[9,6,1]⟩,12⟩],[⟨⟨20,[8,4,0]⟩,7⟩],[⟨⟨20,[8,5,2]⟩,8⟩],[⟨⟨20,[8,6,1]⟩,9⟩],[⟨⟨20,[9,4,0]⟩,10⟩],[⟨⟨20,[9,5,2]⟩,11⟩],[⟨⟨20,[9,6,1]⟩,12⟩],[⟨⟨12,[]⟩,2⟩],[⟨⟨6,[10]⟩,2⟩],[⟨⟨11,[10]⟩,4⟩],[⟨⟨11,[10]⟩,14⟩],[⟨⟨11,[10]⟩,17⟩]]
def kontsB24 (i : Nat) : List Frame := tableBlock% i 24 [[⟨⟨9,[10]⟩,21⟩],[⟨⟨9,[10]⟩,22⟩],[⟨⟨9,[10]⟩,23⟩]]
def konts (i : Nat) : List Frame := if i < 27 then (if i < 12 then kontsB0 i else (if i < 24 then kontsB12 i else kontsB24 i)) else []
def getStB0 (i : Nat) : AState := tableBlock% i 0 [⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[]⟩,19⟩,⟨⟨4,[10]⟩,2⟩,⟨⟨5,[10]⟩,20⟩,⟨⟨6,[10]⟩,4⟩,⟨⟨6,[10]⟩,14⟩,⟨⟨6,[10]⟩,17⟩,⟨⟨7,[10]⟩,21⟩,⟨⟨7,[10]⟩,22⟩,⟨⟨7,[10]⟩,23⟩]
def getStB12 (i : Nat) : AState := tableBlock% i 12 [⟨⟨8,[10]⟩,24⟩,⟨⟨8,[10]⟩,25⟩,⟨⟨8,[10]⟩,26⟩,⟨⟨9,[10]⟩,6⟩,⟨⟨10,[11,10]⟩,4⟩,⟨⟨10,[11,10]⟩,14⟩,⟨⟨10,[11,10]⟩,17⟩,⟨⟨12,[]⟩,4⟩,⟨⟨12,[]⟩,14⟩,⟨⟨12,[]⟩,17⟩,⟨⟨12,[]⟩,20⟩,⟨⟨12,[]⟩,24⟩]
def getStB24 (i : Nat) : AState := tableBlock% i 24 [⟨⟨12,[]⟩,25⟩,⟨⟨12,[]⟩,26⟩,⟨⟨13,[0]⟩,1⟩,⟨⟨13,[1]⟩,8⟩,⟨⟨13,[1]⟩,11⟩,⟨⟨13,[2]⟩,2⟩,⟨⟨13,[3]⟩,21⟩,⟨⟨13,[3]⟩,22⟩,⟨⟨13,[3]⟩,23⟩,⟨⟨14,[4,0]⟩,0⟩,⟨⟨14,[5,2]⟩,1⟩,⟨⟨14,[6,1]⟩,0⟩]
def getStB36 (i : Nat) : AState := tableBlock% i 36 [⟨⟨14,[6,1]⟩,7⟩,⟨⟨14,[6,1]⟩,10⟩,⟨⟨14,[7,3]⟩,4⟩,⟨⟨14,[7,3]⟩,14⟩,⟨⟨14,[7,3]⟩,17⟩,⟨⟨15,[4,0]⟩,3⟩,⟨⟨15,[5,2]⟩,4⟩,⟨⟨15,[6,1]⟩,5⟩,⟨⟨15,[7,3]⟩,6⟩,⟨⟨16,[4,0]⟩,5⟩,⟨⟨16,[4,0]⟩,15⟩,⟨⟨16,[4,0]⟩,18⟩]
def getStB48 (i : Nat) : AState := tableBlock% i 48 [⟨⟨16,[5,2]⟩,3⟩,⟨⟨16,[5,2]⟩,13⟩,⟨⟨16,[5,2]⟩,16⟩,⟨⟨16,[6,1]⟩,5⟩,⟨⟨16,[6,1]⟩,15⟩,⟨⟨16,[6,1]⟩,18⟩,⟨⟨17,[8,4,0]⟩,0⟩,⟨⟨17,[8,4,0]⟩,7⟩,⟨⟨17,[8,4,0]⟩,10⟩,⟨⟨17,[8,5,2]⟩,0⟩,⟨⟨17,[8,6,1]⟩,0⟩,⟨⟨17,[8,6,1]⟩,7⟩]
def getStB60 (i : Nat) : AState := tableBlock% i 60 [⟨⟨17,[8,6,1]⟩,10⟩,⟨⟨17,[9,4,0]⟩,9⟩,⟨⟨17,[9,4,0]⟩,12⟩,⟨⟨17,[9,5,2]⟩,7⟩,⟨⟨17,[9,5,2]⟩,10⟩,⟨⟨17,[9,6,1]⟩,9⟩,⟨⟨17,[9,6,1]⟩,12⟩,⟨⟨18,[8,4,0]⟩,7⟩,⟨⟨18,[8,5,2]⟩,8⟩,⟨⟨18,[8,6,1]⟩,9⟩,⟨⟨18,[9,4,0]⟩,10⟩,⟨⟨18,[9,5,2]⟩,11⟩]
def getStB72 (i : Nat) : AState := tableBlock% i 72 [⟨⟨18,[9,6,1]⟩,12⟩,⟨⟨19,[8,4,0]⟩,13⟩,⟨⟨19,[8,5,2]⟩,14⟩,⟨⟨19,[8,6,1]⟩,15⟩,⟨⟨19,[9,4,0]⟩,16⟩,⟨⟨19,[9,5,2]⟩,17⟩,⟨⟨19,[9,6,1]⟩,18⟩,⟨⟨20,[8,4,0]⟩,5⟩,⟨⟨20,[8,4,0]⟩,15⟩,⟨⟨20,[8,4,0]⟩,18⟩,⟨⟨20,[8,5,2]⟩,5⟩,⟨⟨20,[8,5,2]⟩,15⟩]
def getStB84 (i : Nat) : AState := tableBlock% i 84 [⟨⟨20,[8,5,2]⟩,18⟩,⟨⟨20,[8,6,1]⟩,5⟩,⟨⟨20,[8,6,1]⟩,15⟩,⟨⟨20,[8,6,1]⟩,18⟩,⟨⟨20,[9,4,0]⟩,5⟩,⟨⟨20,[9,4,0]⟩,15⟩,⟨⟨20,[9,4,0]⟩,18⟩,⟨⟨20,[9,5,2]⟩,5⟩,⟨⟨20,[9,5,2]⟩,15⟩,⟨⟨20,[9,5,2]⟩,18⟩,⟨⟨20,[9,6,1]⟩,5⟩,⟨⟨20,[9,6,1]⟩,15⟩]
def getStB96 (i : Nat) : AState := ⟨⟨20,[9,6,1]⟩,18⟩
def getSt (i : Nat) : AState := if i < 97 then (if i < 48 then (if i < 24 then (if i < 12 then getStB0 i else getStB12 i) else (if i < 36 then getStB24 i else getStB36 i)) else (if i < 72 then (if i < 60 then getStB48 i else getStB60 i) else (if i < 84 then getStB72 i else (if i < 96 then getStB84 i else getStB96 i)))) else entry
def hintsB0 (i : Nat) : List Nat := tableBlock% i 0 [[1],[2],[3],[4],[5],[22],[9],[10],[11],[12],[13],[14]]
def hintsB12 (i : Nat) : List Nat := tableBlock% i 12 [[23],[24],[25],[16,17,18],[19],[20],[21],[26],[27],[28],[29],[30]]
def hintsB24 (i : Nat) : List Nat := tableBlock% i 24 [[31],[32],[33],[35],[36,37],[34],[38],[39],[40],[41],[42],[43]]
def hintsB36 (i : Nat) : List Nat := tableBlock% i 36 [[43],[43],[44],[44],[44],[48],[6],[82,91],[15],[54,55,56],[61],[62]]
def hintsB48 (i : Nat) : List Nat := tableBlock% i 48 [[57],[63],[64],[58,59,60],[65],[66],[67],[67],[67],[68],[69],[69]]
def hintsB60 (i : Nat) : List Nat := tableBlock% i 60 [[69],[70],[70],[71],[71],[72],[72],[73],[74],[75],[76],[77]]
def hintsB72 (i : Nat) : List Nat := tableBlock% i 72 [[78],[49],[7],[83,92],[50],[8],[84,93],[45,51],[46,52],[47,53],[45,51],[46,52]]
def hintsB84 (i : Nat) : List Nat := tableBlock% i 84 [[47,53],[45,51],[46,52],[47,53],[79,85,88,94],[80,86,89,95],[81,87,90,96],[79,85,88,94],[80,86,89,95],[81,87,90,96],[79,85,88,94],[80,86,89,95]]
def hintsB96 (i : Nat) : List Nat := [81,87,90,96]
def hints (i : Nat) : List Nat := if i < 97 then (if i < 48 then (if i < 24 then (if i < 12 then hintsB0 i else hintsB12 i) else (if i < 36 then hintsB24 i else hintsB36 i)) else (if i < 72 then (if i < 60 then hintsB48 i else hintsB60 i) else (if i < 84 then hintsB72 i else (if i < 96 then hintsB84 i else hintsB96 i)))) else []
def ck (i : Nat) := FloorIndex.check pCode values konts (RegProof.states 97 getSt) i (hints i)
end Blc.Floor45.Reg9668408052694
