import Blc.SelfintResidual45.TableNotation
import Blc.SelfintResidual45.RegProof

set_option Elab.async false
namespace Blc.Floor45.Reg9676620424762
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
def pCodeB0 (i : Nat) : Certgen.Code := tableBlock% i 0 [.app 1 23,.app 2 22,.app 3 9,.lam 4,.app 5 6,.var 0,.app 7 8,.var 0,.var 0,.lam 10,.lam 11,.app 12 13]
def pCodeB12 (i : Nat) : Certgen.Code := tableBlock% i 12 [.var 1,.lam 14,.app 15 21,.app 16 17,.var 2,.app 18 19,.var 0,.lam 20,.var 2,.var 0,.opaque,.lam 24]
def pCodeB24 (i : Nat) : Certgen.Code := tableBlock% i 24 [.app 25 30,.app 26 27,.var 0,.lam 28,.lam 29,.var 1,.lam 31,.app 32 37,.app 33 34,.var 0,.lam 35,.lam 36]
def pCodeB36 (i : Nat) : Certgen.Code := tableBlock% i 36 [.var 1,.lam 38,.app 39 44,.app 40 41,.var 0,.lam 42,.lam 43,.var 0,.lam 45,.app 46 51,.app 47 48,.var 0]
def pCodeB48 (i : Nat) : Certgen.Code := tableBlock% i 48 [.lam 49,.lam 50,.var 1,.opaque]
def pCode (i : Nat) : Certgen.Code := if i < 52 then (if i < 24 then (if i < 12 then pCodeB0 i else pCodeB12 i) else (if i < 36 then pCodeB24 i else (if i < 48 then pCodeB36 i else pCodeB48 i))) else .opaque
def lit47 : Term := .var 0
def lit50 : Term := .var 1
def lit20 : Term := .var 2
def lit42 : Term := .lam lit47
def lit49 : Term := .lam lit50
def lit6 : Term := .app lit47 lit47
def lit19 : Term := .lam lit20
def lit41 : Term := .lam lit42
def lit51 : Term := .var 4
def lit48 : Term := .lam lit49
def lit4 : Term := .app lit47 lit6
def lit17 : Term := .app lit47 lit19
def lit39 : Term := .app lit47 lit41
def lit46 : Term := .app lit47 lit48
def lit3 : Term := .lam lit4
def lit15 : Term := .app lit20 lit17
def lit45 : Term := .app lit46 lit51
def lit14 : Term := .app lit15 lit47
def lit44 : Term := .lam lit45
def lit13 : Term := .lam lit14
def lit11 : Term := .app lit50 lit13
def lit10 : Term := .lam lit11
def lit9 : Term := .lam lit10
def lit38 : Term := .app lit39 lit44
def lit37 : Term := .lam lit38
def lit2 : Term := .app lit3 lit9
def lit31 : Term := .app lit46 lit37
def lit1 : Term := .app lit2 lit50
def lit30 : Term := .lam lit31
def lit24 : Term := .app lit46 lit30
def lit23 : Term := .lam lit24
def lit0 : Term := .app lit1 lit23
def getTermB0 (i : Nat) : Term := tableBlock% i 0 [lit0,lit1,lit2,lit3,lit4,lit47,lit6,lit47,lit47,lit9,lit10,lit11]
def getTermB12 (i : Nat) : Term := tableBlock% i 12 [lit50,lit13,lit14,lit15,lit20,lit17,lit47,lit19,lit20,lit47,lit50,lit23]
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
def valuesB0 (i : Nat) : List AClo := tableBlock% i 0 [[⟨23,[]⟩],[⟨22,[]⟩],[⟨13,[1,12]⟩],[⟨21,[5,2,13]⟩,⟨21,[5,4,13]⟩,⟨21,[6,2,13]⟩,⟨21,[6,4,13]⟩,⟨21,[7,1,12]⟩],[⟨17,[7,1,12]⟩],[⟨13,[0,10]⟩,⟨13,[3,10]⟩],[⟨17,[7,0,10]⟩,⟨17,[7,3,10]⟩],[⟨19,[5,2,13]⟩,⟨19,[5,4,13]⟩,⟨19,[6,2,13]⟩,⟨19,[6,4,13]⟩],[⟨19,[7,0,10]⟩,⟨19,[7,1,12]⟩,⟨19,[7,3,10]⟩],[⟨9,[]⟩],[⟨13,[2,13]⟩,⟨13,[4,13]⟩],[⟨17,[5,2,13]⟩,⟨17,[5,4,13]⟩,⟨17,[6,2,13]⟩,⟨17,[6,4,13]⟩]]
def valuesB12 (i : Nat) : List AClo := tableBlock% i 12 [[⟨6,[9]⟩],[⟨8,[9]⟩]]
def values (i : Nat) : List AClo := if i < 14 then (if i < 12 then valuesB0 i else valuesB12 i) else []
def kontsB0 (i : Nat) : List Frame := tableBlock% i 0 [[],[⟨⟨23,[]⟩,0⟩],[⟨⟨22,[]⟩,1⟩],[⟨⟨13,[0,10]⟩,0⟩],[⟨⟨13,[1,12]⟩,1⟩],[⟨⟨13,[2,13]⟩,1⟩],[⟨⟨13,[3,10]⟩,7⟩],[⟨⟨13,[3,11]⟩,0⟩,⟨⟨13,[3,11]⟩,7⟩,⟨⟨13,[3,11]⟩,13⟩,⟨⟨13,[3,11]⟩,15⟩],[⟨⟨13,[4,13]⟩,14⟩],[⟨⟨21,[5,2,13]⟩,0⟩,⟨⟨21,[5,2,13]⟩,7⟩],[⟨⟨21,[5,4,13]⟩,0⟩,⟨⟨21,[5,4,13]⟩,7⟩],[⟨⟨21,[6,2,13]⟩,13⟩,⟨⟨21,[6,2,13]⟩,15⟩]]
def kontsB12 (i : Nat) : List Frame := tableBlock% i 12 [[⟨⟨21,[6,4,13]⟩,13⟩,⟨⟨21,[6,4,13]⟩,15⟩],[⟨⟨21,[7,0,10]⟩,7⟩],[⟨⟨21,[7,1,12]⟩,7⟩],[⟨⟨21,[7,3,10]⟩,7⟩],[⟨⟨17,[5,2,13]⟩,9⟩],[⟨⟨17,[5,4,13]⟩,10⟩],[⟨⟨17,[6,2,13]⟩,11⟩],[⟨⟨17,[6,4,13]⟩,12⟩],[⟨⟨17,[7,0,10]⟩,13⟩],[⟨⟨17,[7,1,12]⟩,14⟩],[⟨⟨17,[7,3,10]⟩,15⟩],[⟨⟨19,[5,2,13]⟩,7⟩]]
def kontsB24 (i : Nat) : List Frame := tableBlock% i 24 [[⟨⟨19,[5,4,13]⟩,7⟩],[⟨⟨19,[6,2,13]⟩,7⟩],[⟨⟨19,[6,4,13]⟩,7⟩],[⟨⟨19,[7,0,10]⟩,25⟩,⟨⟨19,[7,0,10]⟩,26⟩],[⟨⟨19,[7,1,12]⟩,25⟩,⟨⟨19,[7,1,12]⟩,26⟩],[⟨⟨19,[7,3,10]⟩,25⟩,⟨⟨19,[7,3,10]⟩,26⟩],[⟨⟨9,[]⟩,2⟩],[⟨⟨6,[9]⟩,2⟩],[⟨⟨8,[9]⟩,4⟩],[⟨⟨8,[9]⟩,21⟩]]
def konts (i : Nat) : List Frame := if i < 34 then (if i < 12 then kontsB0 i else (if i < 24 then kontsB12 i else kontsB24 i)) else []
def getStB0 (i : Nat) : AState := tableBlock% i 0 [⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[]⟩,30⟩,⟨⟨4,[9]⟩,2⟩,⟨⟨5,[9]⟩,31⟩,⟨⟨6,[9]⟩,4⟩,⟨⟨6,[9]⟩,21⟩,⟨⟨7,[9]⟩,32⟩,⟨⟨7,[9]⟩,33⟩,⟨⟨8,[9]⟩,5⟩,⟨⟨8,[9]⟩,8⟩]
def getStB12 (i : Nat) : AState := tableBlock% i 12 [⟨⟨8,[9]⟩,16⟩,⟨⟨8,[9]⟩,17⟩,⟨⟨8,[9]⟩,18⟩,⟨⟨8,[9]⟩,19⟩,⟨⟨9,[]⟩,5⟩,⟨⟨9,[]⟩,8⟩,⟨⟨9,[]⟩,16⟩,⟨⟨9,[]⟩,17⟩,⟨⟨9,[]⟩,18⟩,⟨⟨9,[]⟩,19⟩,⟨⟨9,[]⟩,31⟩,⟨⟨9,[]⟩,32⟩]
def getStB24 (i : Nat) : AState := tableBlock% i 24 [⟨⟨9,[]⟩,33⟩,⟨⟨10,[10]⟩,1⟩,⟨⟨10,[10]⟩,14⟩,⟨⟨10,[11]⟩,9⟩,⟨⟨10,[11]⟩,10⟩,⟨⟨10,[11]⟩,11⟩,⟨⟨10,[11]⟩,12⟩,⟨⟨10,[12]⟩,2⟩,⟨⟨10,[13]⟩,4⟩,⟨⟨10,[13]⟩,21⟩,⟨⟨11,[0,10]⟩,0⟩,⟨⟨11,[1,12]⟩,1⟩]
def getStB36 (i : Nat) : AState := tableBlock% i 36 [⟨⟨11,[2,13]⟩,1⟩,⟨⟨11,[3,10]⟩,7⟩,⟨⟨11,[3,11]⟩,0⟩,⟨⟨11,[3,11]⟩,7⟩,⟨⟨11,[3,11]⟩,13⟩,⟨⟨11,[3,11]⟩,15⟩,⟨⟨11,[4,13]⟩,14⟩,⟨⟨12,[0,10]⟩,3⟩,⟨⟨12,[1,12]⟩,4⟩,⟨⟨12,[2,13]⟩,5⟩,⟨⟨12,[3,10]⟩,6⟩,⟨⟨12,[3,11]⟩,7⟩]
def getStB48 (i : Nat) : AState := tableBlock% i 48 [⟨⟨12,[4,13]⟩,8⟩,⟨⟨13,[0,10]⟩,23⟩,⟨⟨13,[0,10]⟩,24⟩,⟨⟨13,[1,12]⟩,25⟩,⟨⟨13,[1,12]⟩,26⟩,⟨⟨13,[2,13]⟩,3⟩,⟨⟨13,[2,13]⟩,6⟩,⟨⟨13,[2,13]⟩,20⟩,⟨⟨13,[2,13]⟩,22⟩,⟨⟨13,[3,10]⟩,23⟩,⟨⟨13,[3,10]⟩,24⟩,⟨⟨13,[4,13]⟩,3⟩]
def getStB60 (i : Nat) : AState := tableBlock% i 60 [⟨⟨13,[4,13]⟩,6⟩,⟨⟨13,[4,13]⟩,20⟩,⟨⟨13,[4,13]⟩,22⟩,⟨⟨14,[5,2,13]⟩,0⟩,⟨⟨14,[5,2,13]⟩,7⟩,⟨⟨14,[5,4,13]⟩,0⟩,⟨⟨14,[5,4,13]⟩,7⟩,⟨⟨14,[6,2,13]⟩,13⟩,⟨⟨14,[6,2,13]⟩,15⟩,⟨⟨14,[6,4,13]⟩,13⟩,⟨⟨14,[6,4,13]⟩,15⟩,⟨⟨14,[7,0,10]⟩,7⟩]
def getStB72 (i : Nat) : AState := tableBlock% i 72 [⟨⟨14,[7,1,12]⟩,7⟩,⟨⟨14,[7,3,10]⟩,7⟩,⟨⟨15,[5,2,13]⟩,9⟩,⟨⟨15,[5,4,13]⟩,10⟩,⟨⟨15,[6,2,13]⟩,11⟩,⟨⟨15,[6,4,13]⟩,12⟩,⟨⟨15,[7,0,10]⟩,13⟩,⟨⟨15,[7,1,12]⟩,14⟩,⟨⟨15,[7,3,10]⟩,15⟩,⟨⟨16,[5,2,13]⟩,16⟩,⟨⟨16,[5,4,13]⟩,17⟩,⟨⟨16,[6,2,13]⟩,18⟩]
def getStB84 (i : Nat) : AState := tableBlock% i 84 [⟨⟨16,[6,4,13]⟩,19⟩,⟨⟨16,[7,0,10]⟩,20⟩,⟨⟨16,[7,1,12]⟩,21⟩,⟨⟨16,[7,3,10]⟩,22⟩,⟨⟨17,[5,2,13]⟩,7⟩,⟨⟨17,[5,4,13]⟩,7⟩,⟨⟨17,[6,2,13]⟩,7⟩,⟨⟨17,[6,4,13]⟩,7⟩,⟨⟨17,[7,0,10]⟩,25⟩,⟨⟨17,[7,0,10]⟩,26⟩,⟨⟨17,[7,1,12]⟩,25⟩,⟨⟨17,[7,1,12]⟩,26⟩]
def getStB96 (i : Nat) : AState := tableBlock% i 96 [⟨⟨17,[7,3,10]⟩,25⟩,⟨⟨17,[7,3,10]⟩,26⟩,⟨⟨18,[5,2,13]⟩,23⟩,⟨⟨18,[5,4,13]⟩,24⟩,⟨⟨18,[6,2,13]⟩,25⟩,⟨⟨18,[6,4,13]⟩,26⟩,⟨⟨18,[7,0,10]⟩,27⟩,⟨⟨18,[7,1,12]⟩,28⟩,⟨⟨18,[7,3,10]⟩,29⟩,⟨⟨19,[5,2,13]⟩,27⟩,⟨⟨19,[5,2,13]⟩,28⟩,⟨⟨19,[5,2,13]⟩,29⟩]
def getStB108 (i : Nat) : AState := tableBlock% i 108 [⟨⟨19,[5,4,13]⟩,27⟩,⟨⟨19,[5,4,13]⟩,28⟩,⟨⟨19,[5,4,13]⟩,29⟩,⟨⟨19,[6,2,13]⟩,27⟩,⟨⟨19,[6,2,13]⟩,28⟩,⟨⟨19,[6,2,13]⟩,29⟩,⟨⟨19,[6,4,13]⟩,27⟩,⟨⟨19,[6,4,13]⟩,28⟩,⟨⟨19,[6,4,13]⟩,29⟩,⟨⟨20,[8,5,2,13]⟩,25⟩,⟨⟨20,[8,5,2,13]⟩,26⟩,⟨⟨20,[8,5,4,13]⟩,25⟩]
def getStB120 (i : Nat) : AState := tableBlock% i 120 [⟨⟨20,[8,5,4,13]⟩,26⟩,⟨⟨20,[8,6,2,13]⟩,25⟩,⟨⟨20,[8,6,2,13]⟩,26⟩,⟨⟨20,[8,6,4,13]⟩,25⟩,⟨⟨20,[8,6,4,13]⟩,26⟩]
def getSt (i : Nat) : AState := if i < 125 then (if i < 60 then (if i < 24 then (if i < 12 then getStB0 i else getStB12 i) else (if i < 36 then getStB24 i else (if i < 48 then getStB36 i else getStB48 i))) else (if i < 96 then (if i < 72 then getStB60 i else (if i < 84 then getStB72 i else getStB84 i)) else (if i < 108 then getStB96 i else (if i < 120 then getStB108 i else getStB120 i)))) else entry
def hintsB0 (i : Nat) : List Nat := tableBlock% i 0 [[1],[2],[3],[4],[5],[22],[8],[9],[23],[24],[16],[17]]
def hintsB12 (i : Nat) : List Nat := tableBlock% i 12 [[18],[19],[20],[21],[25],[26],[27],[28],[29],[30],[31],[32]]
def hintsB24 (i : Nat) : List Nat := tableBlock% i 24 [[33],[34],[37],[38,39],[38,39],[40,41],[40,41],[35],[36],[42],[43],[44]]
def hintsB36 (i : Nat) : List Nat := tableBlock% i 36 [[45],[46],[47],[47],[47],[47],[48],[53,59],[6],[10],[54,60],[88,89,90,91]]
def hintsB48 (i : Nat) : List Nat := tableBlock% i 48 [[11],[71],[71],[72],[72],[63],[64],[67],[68],[73],[73],[65]]
def hintsB60 (i : Nat) : List Nat := tableBlock% i 60 [[66],[69],[70],[74],[74],[75],[75],[76],[76],[77],[77],[78]]
def hintsB72 (i : Nat) : List Nat := tableBlock% i 72 [[79],[80],[81],[82],[83],[84],[85],[86],[87],[12],[13],[14]]
def hintsB84 (i : Nat) : List Nat := tableBlock% i 84 [[15],[55,61],[7],[56,62],[98],[99],[100],[101],[102],[102],[103],[103]]
def hintsB96 (i : Nat) : List Nat := tableBlock% i 96 [[104],[104],[49,57],[50,58],[92,96],[93,97],[105,108,111,114],[106,109,112,115],[107,110,113,116],[117,118],[117,118],[117,118]]
def hintsB108 (i : Nat) : List Nat := tableBlock% i 108 [[119,120],[119,120],[119,120],[121,122],[121,122],[121,122],[123,124],[123,124],[123,124],[51],[52],[94]]
def hintsB120 (i : Nat) : List Nat := tableBlock% i 120 [[95],[51],[52],[94],[95]]
def hints (i : Nat) : List Nat := if i < 125 then (if i < 60 then (if i < 24 then (if i < 12 then hintsB0 i else hintsB12 i) else (if i < 36 then hintsB24 i else (if i < 48 then hintsB36 i else hintsB48 i))) else (if i < 96 then (if i < 72 then hintsB60 i else (if i < 84 then hintsB72 i else hintsB84 i)) else (if i < 108 then hintsB96 i else (if i < 120 then hintsB108 i else hintsB120 i)))) else []
def ck (i : Nat) := FloorIndex.check pCode values konts (RegProof.states 125 getSt) i (hints i)
end Blc.Floor45.Reg9676620424762
