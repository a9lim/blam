import Blc.SelfintResidual45.TableNotation
import Blc.SelfintResidual45.RegProof

set_option Elab.async false
namespace Blc.Floor45.Reg9692683219930
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
def pCodeB0 (i : Nat) : Certgen.Code := tableBlock% i 0 [.app 1 23,.app 2 22,.app 3 7,.lam 4,.app 5 6,.var 0,.var 0,.lam 8,.app 9 10,.var 0,.lam 11,.lam 12]
def pCodeB12 (i : Nat) : Certgen.Code := tableBlock% i 12 [.app 13 14,.var 2,.lam 15,.app 16 21,.app 17 18,.var 0,.app 19 20,.var 2,.var 1,.var 0,.opaque,.lam 24]
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
def lit18 : Term := .app lit19 lit50
def lit39 : Term := .app lit47 lit41
def lit46 : Term := .app lit47 lit48
def lit16 : Term := .app lit47 lit18
def lit15 : Term := .app lit16 lit47
def lit14 : Term := .lam lit15
def lit45 : Term := .app lit46 lit51
def lit44 : Term := .lam lit45
def lit12 : Term := .app lit19 lit14
def lit11 : Term := .lam lit12
def lit10 : Term := .lam lit11
def lit8 : Term := .app lit47 lit10
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
def getTermB0 (i : Nat) : Term := tableBlock% i 0 [lit0,lit1,lit2,lit3,lit4,lit47,lit47,lit7,lit8,lit47,lit10,lit11]
def getTermB12 (i : Nat) : Term := tableBlock% i 12 [lit12,lit19,lit14,lit15,lit16,lit47,lit18,lit19,lit50,lit47,lit50,lit23]
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
def valuesB0 (i : Nat) : List AClo := tableBlock% i 0 [[⟨14,[6,2,14]⟩],[⟨18,[9,6,2,14]⟩,⟨18,[10,4,3,13]⟩,⟨18,[10,5,0,13]⟩],[⟨20,[7,4,3,13]⟩],[⟨10,[14]⟩],[⟨22,[]⟩],[⟨21,[8,5,1,12]⟩,⟨21,[9,6,2,14]⟩,⟨21,[10,4,3,13]⟩,⟨21,[10,5,0,13]⟩],[⟨18,[8,5,1,12]⟩,⟨18,[9,6,2,14]⟩],[⟨14,[5,1,12]⟩],[⟨18,[7,4,3,13]⟩,⟨18,[7,5,0,13]⟩],[⟨20,[7,5,0,13]⟩],[⟨10,[12]⟩],[⟨7,[]⟩]]
def valuesB12 (i : Nat) : List AClo := tableBlock% i 12 [[⟨14,[4,3,13]⟩,⟨14,[5,0,13]⟩],[⟨6,[11]⟩],[⟨10,[13]⟩]]
def values (i : Nat) : List AClo := if i < 15 then (if i < 12 then valuesB0 i else valuesB12 i) else []
def kontsB0 (i : Nat) : List Frame := tableBlock% i 0 [[],[⟨⟨23,[]⟩,0⟩],[⟨⟨22,[]⟩,1⟩],[⟨⟨14,[4,3,13]⟩,1⟩],[⟨⟨14,[5,0,13]⟩,7⟩,⟨⟨14,[5,0,13]⟩,8⟩,⟨⟨14,[5,0,13]⟩,15⟩,⟨⟨14,[5,0,13]⟩,16⟩],[⟨⟨14,[5,1,12]⟩,1⟩,⟨⟨14,[5,1,12]⟩,7⟩,⟨⟨14,[5,1,12]⟩,8⟩,⟨⟨14,[5,1,12]⟩,15⟩,⟨⟨14,[5,1,12]⟩,16⟩],[⟨⟨14,[6,2,14]⟩,9⟩,⟨⟨14,[6,2,14]⟩,10⟩],[⟨⟨21,[7,4,3,13]⟩,1⟩,⟨⟨21,[7,4,3,13]⟩,7⟩,⟨⟨21,[7,4,3,13]⟩,8⟩,⟨⟨21,[7,4,3,13]⟩,15⟩,⟨⟨21,[7,4,3,13]⟩,16⟩],[⟨⟨21,[7,5,0,13]⟩,1⟩,⟨⟨21,[7,5,0,13]⟩,7⟩,⟨⟨21,[7,5,0,13]⟩,8⟩,⟨⟨21,[7,5,0,13]⟩,15⟩,⟨⟨21,[7,5,0,13]⟩,16⟩],[⟨⟨21,[8,5,1,12]⟩,7⟩,⟨⟨21,[8,5,1,12]⟩,8⟩],[⟨⟨21,[9,6,2,14]⟩,15⟩,⟨⟨21,[9,6,2,14]⟩,16⟩],[⟨⟨21,[10,4,3,13]⟩,1⟩,⟨⟨21,[10,4,3,13]⟩,7⟩,⟨⟨21,[10,4,3,13]⟩,8⟩,⟨⟨21,[10,4,3,13]⟩,15⟩,⟨⟨21,[10,4,3,13]⟩,16⟩]]
def kontsB12 (i : Nat) : List Frame := tableBlock% i 12 [[⟨⟨21,[10,5,0,13]⟩,1⟩,⟨⟨21,[10,5,0,13]⟩,7⟩,⟨⟨21,[10,5,0,13]⟩,8⟩,⟨⟨21,[10,5,0,13]⟩,15⟩,⟨⟨21,[10,5,0,13]⟩,16⟩],[⟨⟨18,[7,4,3,13]⟩,7⟩],[⟨⟨18,[7,5,0,13]⟩,8⟩],[⟨⟨18,[8,5,1,12]⟩,9⟩],[⟨⟨18,[9,6,2,14]⟩,10⟩],[⟨⟨18,[10,4,3,13]⟩,11⟩],[⟨⟨18,[10,5,0,13]⟩,12⟩],[⟨⟨20,[7,4,3,13]⟩,15⟩],[⟨⟨20,[7,4,3,13]⟩,16⟩],[⟨⟨20,[7,5,0,13]⟩,15⟩],[⟨⟨20,[7,5,0,13]⟩,16⟩],[⟨⟨7,[]⟩,2⟩]]
def kontsB24 (i : Nat) : List Frame := tableBlock% i 24 [[⟨⟨6,[11]⟩,2⟩],[⟨⟨10,[12]⟩,1⟩,⟨⟨10,[12]⟩,7⟩,⟨⟨10,[12]⟩,8⟩,⟨⟨10,[12]⟩,15⟩,⟨⟨10,[12]⟩,16⟩],[⟨⟨10,[13]⟩,2⟩],[⟨⟨10,[14]⟩,2⟩]]
def konts (i : Nat) : List Frame := if i < 28 then (if i < 12 then kontsB0 i else (if i < 24 then kontsB12 i else kontsB24 i)) else []
def getStB0 (i : Nat) : AState := tableBlock% i 0 [⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[]⟩,23⟩,⟨⟨4,[11]⟩,2⟩,⟨⟨5,[11]⟩,24⟩,⟨⟨6,[11]⟩,3⟩,⟨⟨6,[11]⟩,4⟩,⟨⟨6,[11]⟩,26⟩,⟨⟨7,[]⟩,3⟩,⟨⟨7,[]⟩,4⟩,⟨⟨7,[]⟩,24⟩]
def getStB12 (i : Nat) : AState := tableBlock% i 12 [⟨⟨7,[]⟩,26⟩,⟨⟨8,[12]⟩,1⟩,⟨⟨8,[12]⟩,7⟩,⟨⟨8,[12]⟩,8⟩,⟨⟨8,[12]⟩,15⟩,⟨⟨8,[12]⟩,16⟩,⟨⟨8,[13]⟩,2⟩,⟨⟨8,[14]⟩,2⟩,⟨⟨9,[12]⟩,25⟩,⟨⟨9,[13]⟩,26⟩,⟨⟨9,[14]⟩,27⟩,⟨⟨10,[12]⟩,16⟩]
def getStB24 (i : Nat) : AState := tableBlock% i 24 [⟨⟨10,[12]⟩,17⟩,⟨⟨10,[12]⟩,18⟩,⟨⟨10,[13]⟩,6⟩,⟨⟨10,[13]⟩,27⟩,⟨⟨10,[14]⟩,19⟩,⟨⟨10,[14]⟩,20⟩,⟨⟨11,[0,13]⟩,9⟩,⟨⟨11,[0,13]⟩,10⟩,⟨⟨11,[1,12]⟩,10⟩,⟨⟨11,[1,12]⟩,11⟩,⟨⟨11,[1,12]⟩,12⟩,⟨⟨11,[2,14]⟩,15⟩]
def getStB36 (i : Nat) : AState := tableBlock% i 36 [⟨⟨11,[2,14]⟩,16⟩,⟨⟨11,[3,13]⟩,2⟩,⟨⟨12,[4,3,13]⟩,1⟩,⟨⟨12,[5,0,13]⟩,7⟩,⟨⟨12,[5,0,13]⟩,8⟩,⟨⟨12,[5,0,13]⟩,15⟩,⟨⟨12,[5,0,13]⟩,16⟩,⟨⟨12,[5,1,12]⟩,1⟩,⟨⟨12,[5,1,12]⟩,7⟩,⟨⟨12,[5,1,12]⟩,8⟩,⟨⟨12,[5,1,12]⟩,15⟩,⟨⟨12,[5,1,12]⟩,16⟩]
def getStB48 (i : Nat) : AState := tableBlock% i 48 [⟨⟨12,[6,2,14]⟩,9⟩,⟨⟨12,[6,2,14]⟩,10⟩,⟨⟨13,[4,3,13]⟩,3⟩,⟨⟨13,[5,0,13]⟩,4⟩,⟨⟨13,[5,1,12]⟩,5⟩,⟨⟨13,[6,2,14]⟩,6⟩,⟨⟨14,[4,3,13]⟩,5⟩,⟨⟨14,[4,3,13]⟩,25⟩,⟨⟨14,[5,0,13]⟩,5⟩,⟨⟨14,[5,0,13]⟩,25⟩,⟨⟨14,[5,1,12]⟩,13⟩,⟨⟨14,[5,1,12]⟩,14⟩]
def getStB60 (i : Nat) : AState := tableBlock% i 60 [⟨⟨14,[6,2,14]⟩,21⟩,⟨⟨14,[6,2,14]⟩,22⟩,⟨⟨15,[7,4,3,13]⟩,1⟩,⟨⟨15,[7,4,3,13]⟩,7⟩,⟨⟨15,[7,4,3,13]⟩,8⟩,⟨⟨15,[7,4,3,13]⟩,15⟩,⟨⟨15,[7,4,3,13]⟩,16⟩,⟨⟨15,[7,5,0,13]⟩,1⟩,⟨⟨15,[7,5,0,13]⟩,7⟩,⟨⟨15,[7,5,0,13]⟩,8⟩,⟨⟨15,[7,5,0,13]⟩,15⟩,⟨⟨15,[7,5,0,13]⟩,16⟩]
def getStB72 (i : Nat) : AState := tableBlock% i 72 [⟨⟨15,[8,5,1,12]⟩,7⟩,⟨⟨15,[8,5,1,12]⟩,8⟩,⟨⟨15,[9,6,2,14]⟩,15⟩,⟨⟨15,[9,6,2,14]⟩,16⟩,⟨⟨15,[10,4,3,13]⟩,1⟩,⟨⟨15,[10,4,3,13]⟩,7⟩,⟨⟨15,[10,4,3,13]⟩,8⟩,⟨⟨15,[10,4,3,13]⟩,15⟩,⟨⟨15,[10,4,3,13]⟩,16⟩,⟨⟨15,[10,5,0,13]⟩,1⟩,⟨⟨15,[10,5,0,13]⟩,7⟩,⟨⟨15,[10,5,0,13]⟩,8⟩]
def getStB84 (i : Nat) : AState := tableBlock% i 84 [⟨⟨15,[10,5,0,13]⟩,15⟩,⟨⟨15,[10,5,0,13]⟩,16⟩,⟨⟨16,[7,4,3,13]⟩,7⟩,⟨⟨16,[7,5,0,13]⟩,8⟩,⟨⟨16,[8,5,1,12]⟩,9⟩,⟨⟨16,[9,6,2,14]⟩,10⟩,⟨⟨16,[10,4,3,13]⟩,11⟩,⟨⟨16,[10,5,0,13]⟩,12⟩,⟨⟨17,[7,4,3,13]⟩,13⟩,⟨⟨17,[7,5,0,13]⟩,14⟩,⟨⟨17,[8,5,1,12]⟩,15⟩,⟨⟨17,[9,6,2,14]⟩,16⟩]
def getStB96 (i : Nat) : AState := tableBlock% i 96 [⟨⟨17,[10,4,3,13]⟩,17⟩,⟨⟨17,[10,5,0,13]⟩,18⟩,⟨⟨18,[7,4,3,13]⟩,15⟩,⟨⟨18,[7,4,3,13]⟩,16⟩,⟨⟨18,[7,5,0,13]⟩,15⟩,⟨⟨18,[7,5,0,13]⟩,16⟩,⟨⟨19,[7,4,3,13]⟩,19⟩,⟨⟨19,[7,4,3,13]⟩,20⟩,⟨⟨19,[7,5,0,13]⟩,21⟩,⟨⟨19,[7,5,0,13]⟩,22⟩,⟨⟨20,[7,5,0,13]⟩,16⟩,⟨⟨21,[8,5,1,12]⟩,16⟩]
def getStB108 (i : Nat) : AState := tableBlock% i 108 [⟨⟨21,[9,6,2,14]⟩,16⟩,⟨⟨21,[10,4,3,13]⟩,16⟩,⟨⟨21,[10,5,0,13]⟩,16⟩]
def getSt (i : Nat) : AState := if i < 111 then (if i < 60 then (if i < 24 then (if i < 12 then getStB0 i else getStB12 i) else (if i < 36 then getStB24 i else (if i < 48 then getStB36 i else getStB48 i))) else (if i < 84 then (if i < 72 then getStB60 i else getStB72 i) else (if i < 96 then getStB84 i else (if i < 108 then getStB96 i else getStB108 i)))) else entry
def hintsB0 (i : Nat) : List Nat := tableBlock% i 0 [[1],[2],[3],[4],[5],[11],[9],[10],[12],[13],[14,15,16,17],[18]]
def hintsB12 (i : Nat) : List Nat := tableBlock% i 12 [[19],[20],[20],[20],[20],[20],[21],[22],[55,57],[8],[27],[32]]
def hintsB24 (i : Nat) : List Nat := tableBlock% i 24 [[33],[34],[30,31],[37],[35],[36],[39,40],[41,42],[46,47],[43,44,45,46,47],[43,44,45,46,47],[48]]
def hintsB36 (i : Nat) : List Nat := tableBlock% i 36 [[49],[38],[50],[51],[51],[51],[51],[52],[52],[52],[52],[52]]
def hintsB48 (i : Nat) : List Nat := tableBlock% i 48 [[53],[53],[6],[7],[54,56],[26],[62,63,64,65,66],[76,77,78,79,80],[67,68,69,70,71],[81,82,83,84,85],[72],[73]]
def hintsB60 (i : Nat) : List Nat := tableBlock% i 60 [[74],[75],[86],[86],[86],[86],[86],[87],[87],[87],[87],[87]]
def hintsB72 (i : Nat) : List Nat := tableBlock% i 72 [[88],[88],[89],[89],[90],[90],[90],[90],[90],[91],[91],[91]]
def hintsB84 (i : Nat) : List Nat := tableBlock% i 84 [[91],[91],[92],[93],[94],[95],[96],[97],[58],[59],[98,100],[106]]
def hintsB96 (i : Nat) : List Nat := tableBlock% i 96 [[24],[25],[102],[103],[104],[105],[28],[29],[60],[61],[107,108,109,110],[99,101]]
def hintsB108 (i : Nat) : List Nat := tableBlock% i 108 [[106],[23],[23]]
def hints (i : Nat) : List Nat := if i < 111 then (if i < 60 then (if i < 24 then (if i < 12 then hintsB0 i else hintsB12 i) else (if i < 36 then hintsB24 i else (if i < 48 then hintsB36 i else hintsB48 i))) else (if i < 84 then (if i < 72 then hintsB60 i else hintsB72 i) else (if i < 96 then hintsB84 i else (if i < 108 then hintsB96 i else hintsB108 i)))) else []
def ck (i : Nat) := FloorIndex.check pCode values konts (RegProof.states 111 getSt) i (hints i)
end Blc.Floor45.Reg9692683219930
