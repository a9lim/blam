import Blc.SelfintResidual45.TableNotation
import Blc.SelfintResidual45.RegProof

set_option Elab.async false
namespace Blc.Floor45.Reg9692402104538
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
def pCodeB0 (i : Nat) : Certgen.Code := tableBlock% i 0 [.app 1 41,.app 2 17,.lam 3,.app 4 16,.app 5 6,.var 0,.lam 7,.lam 8,.app 9 15,.app 10 11,.var 2,.app 12 13]
def pCodeB12 (i : Nat) : Certgen.Code := tableBlock% i 12 [.var 1,.lam 14,.var 1,.var 1,.var 0,.lam 18,.lam 19,.app 20 40,.app 21 36,.lam 22,.app 23 35,.app 24 25]
def pCodeB24 (i : Nat) : Certgen.Code := tableBlock% i 24 [.var 0,.lam 26,.lam 27,.app 28 34,.app 29 30,.var 2,.app 31 32,.var 1,.lam 33,.var 1,.var 1,.var 0]
def pCodeB36 (i : Nat) : Certgen.Code := tableBlock% i 36 [.app 37 38,.var 1,.lam 39,.var 1,.var 1,.lam 42,.app 43 55,.app 44 45,.var 0,.lam 46,.lam 47,.app 48 54]
def pCodeB48 (i : Nat) : Certgen.Code := tableBlock% i 48 [.app 49 50,.var 2,.app 51 52,.var 1,.lam 53,.var 1,.var 1,.var 0]
def pCode (i : Nat) : Certgen.Code := if i < 56 then (if i < 24 then (if i < 12 then pCodeB0 i else pCodeB12 i) else (if i < 36 then pCodeB24 i else (if i < 48 then pCodeB36 i else pCodeB48 i))) else .opaque
def lit55 : Term := .var 0
def lit54 : Term := .var 1
def lit49 : Term := .var 2
def lit52 : Term := .lam lit54
def lit50 : Term := .app lit54 lit52
def lit48 : Term := .app lit49 lit50
def lit47 : Term := .app lit48 lit54
def lit46 : Term := .lam lit47
def lit45 : Term := .lam lit46
def lit43 : Term := .app lit55 lit45
def lit42 : Term := .app lit43 lit55
def lit41 : Term := .lam lit42
def lit20 : Term := .app lit41 lit50
def lit19 : Term := .app lit20 lit54
def lit18 : Term := .lam lit19
def lit17 : Term := .lam lit18
def lit1 : Term := .app lit41 lit17
def lit0 : Term := .app lit1 lit41
def getTermB0 (i : Nat) : Term := tableBlock% i 0 [lit0,lit1,lit41,lit42,lit43,lit55,lit45,lit46,lit47,lit48,lit49,lit50]
def getTermB12 (i : Nat) : Term := tableBlock% i 12 [lit54,lit52,lit54,lit54,lit55,lit17,lit18,lit19,lit20,lit41,lit42,lit43]
def getTermB24 (i : Nat) : Term := tableBlock% i 24 [lit55,lit45,lit46,lit47,lit48,lit49,lit50,lit54,lit52,lit54,lit54,lit55]
def getTermB36 (i : Nat) : Term := tableBlock% i 36 [lit50,lit54,lit52,lit54,lit54,lit41,lit42,lit43,lit55,lit45,lit46,lit47]
def getTermB48 (i : Nat) : Term := tableBlock% i 48 [lit48,lit49,lit50,lit54,lit52,lit54,lit54,lit55]
def getTerm (i : Nat) : Term := if i < 56 then (if i < 24 then (if i < 12 then getTermB0 i else getTermB12 i) else (if i < 36 then getTermB24 i else (if i < 48 then getTermB36 i else getTermB48 i))) else .var 0
def align := RegProof.aligned getTerm pCode
theorem al0 : RegProof.Span align 0 10 := RegProof.block (n := 10) (by decide +kernel)
theorem al10 : RegProof.Span align 10 20 := RegProof.block (n := 10) (by decide +kernel)
theorem al20 : RegProof.Span align 20 30 := RegProof.block (n := 10) (by decide +kernel)
theorem al30 : RegProof.Span align 30 40 := RegProof.block (n := 10) (by decide +kernel)
theorem al40 : RegProof.Span align 40 50 := RegProof.block (n := 10) (by decide +kernel)
theorem al50 : RegProof.Span align 50 56 := RegProof.block (n := 6) (by decide +kernel)
theorem alAll : RegProof.Span align 0 56 := (RegProof.merge (RegProof.merge al0 (RegProof.merge al10 al20)) (RegProof.merge al30 (RegProof.merge al40 al50)))
def mdl : Model pCode := RegProof.alignedModel getTerm pCode (by
  intro i
  by_cases h : i < 56
  · exact alAll i (by omega) h
  · simp [RegProof.aligned,pCode,h])
def valuesB0 (i : Nat) : List AClo := tableBlock% i 0 [[⟨35,[16,9,3]⟩,⟨35,[16,9,4]⟩],[⟨25,[14,7,0]⟩],[⟨30,[21,20,14,7,0]⟩],[⟨38,[10,2]⟩],[⟨38,[12,6]⟩],[⟨6,[13]⟩],[⟨11,[28,27,13]⟩],[⟨40,[9,3]⟩,⟨40,[9,4]⟩],[⟨35,[14,7,0]⟩],[⟨25,[17,10,2]⟩,⟨25,[19,12,6]⟩],[⟨34,[21,20,14,7,0]⟩],[⟨16,[13]⟩]]
def valuesB12 (i : Nat) : List AClo := tableBlock% i 12 [[⟨15,[28,27,13]⟩],[⟨17,[]⟩],[⟨36,[7,0]⟩],[⟨36,[8,1]⟩],[⟨36,[9,3]⟩,⟨36,[9,4]⟩],[⟨36,[10,2]⟩],[⟨36,[11,5]⟩],[⟨36,[12,6]⟩],[⟨38,[8,1]⟩],[⟨25,[15,8,1]⟩],[⟨13,[28,27,13]⟩],[⟨25,[16,9,3]⟩,⟨25,[16,9,4]⟩]]
def valuesB24 (i : Nat) : List AClo := tableBlock% i 24 [[⟨32,[21,20,14,7,0]⟩],[⟨38,[7,0]⟩],[⟨38,[9,3]⟩,⟨38,[9,4]⟩],[⟨38,[11,5]⟩],[⟨25,[18,11,5]⟩]]
def values (i : Nat) : List AClo := if i < 29 then (if i < 12 then valuesB0 i else (if i < 24 then valuesB12 i else valuesB24 i)) else []
def kontsB0 (i : Nat) : List Frame := tableBlock% i 0 [[],[⟨⟨41,[]⟩,0⟩],[⟨⟨17,[]⟩,1⟩],[⟨⟨13,[28,27,13]⟩,56⟩],[⟨⟨40,[7,0]⟩,22⟩,⟨⟨40,[7,0]⟩,24⟩],[⟨⟨40,[8,1]⟩,4⟩],[⟨⟨40,[9,3]⟩,22⟩],[⟨⟨40,[9,4]⟩,24⟩],[⟨⟨40,[10,2]⟩,19⟩],[⟨⟨40,[11,5]⟩,1⟩],[⟨⟨40,[12,6]⟩,23⟩],[⟨⟨36,[7,0]⟩,4⟩]]
def kontsB12 (i : Nat) : List Frame := tableBlock% i 12 [[⟨⟨36,[8,1]⟩,5⟩],[⟨⟨36,[9,3]⟩,6⟩],[⟨⟨36,[9,4]⟩,7⟩],[⟨⟨36,[10,2]⟩,8⟩],[⟨⟨36,[11,5]⟩,9⟩],[⟨⟨36,[12,6]⟩,10⟩],[⟨⟨35,[14,7,0]⟩,4⟩],[⟨⟨35,[15,8,1]⟩,5⟩],[⟨⟨35,[16,9,3]⟩,6⟩],[⟨⟨35,[16,9,4]⟩,7⟩],[⟨⟨35,[17,10,2]⟩,8⟩],[⟨⟨35,[18,11,5]⟩,9⟩]]
def kontsB24 (i : Nat) : List Frame := tableBlock% i 24 [[⟨⟨35,[19,12,6]⟩,10⟩],[⟨⟨25,[14,7,0]⟩,18⟩],[⟨⟨25,[15,8,1]⟩,19⟩],[⟨⟨25,[16,9,3]⟩,20⟩],[⟨⟨25,[16,9,4]⟩,21⟩],[⟨⟨25,[17,10,2]⟩,22⟩],[⟨⟨25,[18,11,5]⟩,23⟩],[⟨⟨25,[19,12,6]⟩,24⟩],[⟨⟨34,[21,20,14,7,0]⟩,19⟩],[⟨⟨30,[21,20,14,7,0]⟩,32⟩],[⟨⟨16,[13]⟩,1⟩],[⟨⟨32,[21,20,14,7,0]⟩,54⟩]]
def kontsB36 (i : Nat) : List Frame := tableBlock% i 36 [[⟨⟨38,[7,0]⟩,25⟩],[⟨⟨38,[7,0]⟩,33⟩],[⟨⟨38,[7,0]⟩,20⟩,⟨⟨38,[7,0]⟩,21⟩],[⟨⟨38,[7,0]⟩,54⟩],[⟨⟨38,[7,0]⟩,20⟩,⟨⟨38,[7,0]⟩,21⟩,⟨⟨38,[7,0]⟩,25⟩,⟨⟨38,[7,0]⟩,33⟩,⟨⟨38,[7,0]⟩,54⟩],[⟨⟨38,[8,1]⟩,26⟩],[⟨⟨38,[9,3]⟩,36⟩],[⟨⟨38,[9,3]⟩,27⟩,⟨⟨38,[9,3]⟩,28⟩],[⟨⟨38,[9,3]⟩,37⟩],[⟨⟨38,[9,3]⟩,38⟩],[⟨⟨38,[9,3]⟩,39⟩],[⟨⟨38,[9,3]⟩,40⟩]]
def kontsB48 (i : Nat) : List Frame := tableBlock% i 48 [[⟨⟨38,[9,4]⟩,36⟩],[⟨⟨38,[9,4]⟩,27⟩,⟨⟨38,[9,4]⟩,28⟩],[⟨⟨38,[9,4]⟩,37⟩],[⟨⟨38,[9,4]⟩,38⟩],[⟨⟨38,[9,4]⟩,39⟩],[⟨⟨38,[9,4]⟩,40⟩],[⟨⟨38,[10,2]⟩,29⟩],[⟨⟨38,[11,5]⟩,30⟩],[⟨⟨38,[12,6]⟩,31⟩],[⟨⟨6,[13]⟩,34⟩],[⟨⟨15,[28,27,13]⟩,23⟩],[⟨⟨11,[28,27,13]⟩,58⟩]]
def konts (i : Nat) : List Frame := if i < 60 then (if i < 24 then (if i < 12 then kontsB0 i else kontsB12 i) else (if i < 36 then kontsB24 i else (if i < 48 then kontsB36 i else kontsB48 i))) else []
def getStB0 (i : Nat) : AState := tableBlock% i 0 [⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[13]⟩,1⟩,⟨⟨4,[13]⟩,34⟩,⟨⟨5,[13]⟩,57⟩,⟨⟨6,[13]⟩,55⟩,⟨⟨7,[27,13]⟩,30⟩,⟨⟨8,[28,27,13]⟩,23⟩,⟨⟨9,[28,27,13]⟩,58⟩,⟨⟨10,[28,27,13]⟩,59⟩,⟨⟨11,[28,27,13]⟩,56⟩]
def getStB12 (i : Nat) : AState := tableBlock% i 12 [⟨⟨12,[28,27,13]⟩,3⟩,⟨⟨15,[28,27,13]⟩,27⟩,⟨⟨15,[28,27,13]⟩,28⟩,⟨⟨15,[28,27,13]⟩,36⟩,⟨⟨15,[28,27,13]⟩,37⟩,⟨⟨15,[28,27,13]⟩,38⟩,⟨⟨15,[28,27,13]⟩,39⟩,⟨⟨15,[28,27,13]⟩,40⟩,⟨⟨16,[13]⟩,20⟩,⟨⟨16,[13]⟩,21⟩,⟨⟨16,[13]⟩,25⟩,⟨⟨16,[13]⟩,33⟩]
def getStB24 (i : Nat) : AState := tableBlock% i 24 [⟨⟨16,[13]⟩,54⟩,⟨⟨16,[13]⟩,56⟩,⟨⟨17,[]⟩,20⟩,⟨⟨17,[]⟩,21⟩,⟨⟨17,[]⟩,25⟩,⟨⟨17,[]⟩,33⟩,⟨⟨17,[]⟩,54⟩,⟨⟨17,[]⟩,56⟩,⟨⟨17,[]⟩,57⟩,⟨⟨17,[]⟩,59⟩,⟨⟨18,[0]⟩,6⟩,⟨⟨18,[0]⟩,7⟩]
def getStB36 (i : Nat) : AState := tableBlock% i 36 [⟨⟨18,[1]⟩,18⟩,⟨⟨18,[2]⟩,32⟩,⟨⟨18,[3]⟩,29⟩,⟨⟨18,[4]⟩,31⟩,⟨⟨18,[5]⟩,34⟩,⟨⟨18,[6]⟩,58⟩,⟨⟨19,[7,0]⟩,22⟩,⟨⟨19,[7,0]⟩,24⟩,⟨⟨19,[8,1]⟩,4⟩,⟨⟨19,[9,3]⟩,22⟩,⟨⟨19,[9,4]⟩,24⟩,⟨⟨19,[10,2]⟩,19⟩]
def getStB48 (i : Nat) : AState := tableBlock% i 48 [⟨⟨19,[11,5]⟩,1⟩,⟨⟨19,[12,6]⟩,23⟩,⟨⟨20,[7,0]⟩,4⟩,⟨⟨20,[8,1]⟩,5⟩,⟨⟨20,[9,3]⟩,6⟩,⟨⟨20,[9,4]⟩,7⟩,⟨⟨20,[10,2]⟩,8⟩,⟨⟨20,[11,5]⟩,9⟩,⟨⟨20,[12,6]⟩,10⟩,⟨⟨21,[7,0]⟩,11⟩,⟨⟨21,[8,1]⟩,12⟩,⟨⟨21,[9,3]⟩,13⟩]
def getStB60 (i : Nat) : AState := tableBlock% i 60 [⟨⟨21,[9,4]⟩,14⟩,⟨⟨21,[10,2]⟩,15⟩,⟨⟨21,[11,5]⟩,16⟩,⟨⟨21,[12,6]⟩,17⟩,⟨⟨22,[14,7,0]⟩,4⟩,⟨⟨22,[15,8,1]⟩,5⟩,⟨⟨22,[16,9,3]⟩,6⟩,⟨⟨22,[16,9,4]⟩,7⟩,⟨⟨22,[17,10,2]⟩,8⟩,⟨⟨22,[18,11,5]⟩,9⟩,⟨⟨22,[19,12,6]⟩,10⟩,⟨⟨23,[14,7,0]⟩,18⟩]
def getStB72 (i : Nat) : AState := tableBlock% i 72 [⟨⟨23,[15,8,1]⟩,19⟩,⟨⟨23,[16,9,3]⟩,20⟩,⟨⟨23,[16,9,4]⟩,21⟩,⟨⟨23,[17,10,2]⟩,22⟩,⟨⟨23,[18,11,5]⟩,23⟩,⟨⟨23,[19,12,6]⟩,24⟩,⟨⟨24,[14,7,0]⟩,25⟩,⟨⟨24,[15,8,1]⟩,26⟩,⟨⟨24,[16,9,3]⟩,27⟩,⟨⟨24,[16,9,4]⟩,28⟩,⟨⟨24,[17,10,2]⟩,29⟩,⟨⟨24,[18,11,5]⟩,30⟩]
def getStB84 (i : Nat) : AState := tableBlock% i 84 [⟨⟨24,[19,12,6]⟩,31⟩,⟨⟨25,[14,7,0]⟩,41⟩,⟨⟨26,[20,14,7,0]⟩,26⟩,⟨⟨27,[21,20,14,7,0]⟩,19⟩,⟨⟨28,[21,20,14,7,0]⟩,32⟩,⟨⟨29,[21,20,14,7,0]⟩,33⟩,⟨⟨30,[21,20,14,7,0]⟩,54⟩,⟨⟨31,[21,20,14,7,0]⟩,35⟩,⟨⟨34,[21,20,14,7,0]⟩,27⟩,⟨⟨34,[21,20,14,7,0]⟩,28⟩,⟨⟨34,[21,20,14,7,0]⟩,36⟩,⟨⟨34,[21,20,14,7,0]⟩,37⟩]
def getStB96 (i : Nat) : AState := tableBlock% i 96 [⟨⟨34,[21,20,14,7,0]⟩,38⟩,⟨⟨34,[21,20,14,7,0]⟩,39⟩,⟨⟨34,[21,20,14,7,0]⟩,40⟩,⟨⟨35,[14,7,0]⟩,20⟩,⟨⟨35,[14,7,0]⟩,21⟩,⟨⟨35,[14,7,0]⟩,25⟩,⟨⟨35,[14,7,0]⟩,33⟩,⟨⟨35,[14,7,0]⟩,54⟩,⟨⟨35,[16,9,3]⟩,36⟩,⟨⟨35,[16,9,3]⟩,37⟩,⟨⟨35,[16,9,3]⟩,38⟩,⟨⟨35,[16,9,3]⟩,39⟩]
def getStB108 (i : Nat) : AState := tableBlock% i 108 [⟨⟨35,[16,9,3]⟩,40⟩,⟨⟨35,[16,9,4]⟩,36⟩,⟨⟨35,[16,9,4]⟩,37⟩,⟨⟨35,[16,9,4]⟩,38⟩,⟨⟨35,[16,9,4]⟩,39⟩,⟨⟨35,[16,9,4]⟩,40⟩,⟨⟨36,[7,0]⟩,20⟩,⟨⟨36,[7,0]⟩,21⟩,⟨⟨36,[7,0]⟩,25⟩,⟨⟨36,[7,0]⟩,33⟩,⟨⟨36,[7,0]⟩,54⟩,⟨⟨36,[8,1]⟩,26⟩]
def getStB120 (i : Nat) : AState := tableBlock% i 120 [⟨⟨36,[9,3]⟩,27⟩,⟨⟨36,[9,3]⟩,28⟩,⟨⟨36,[9,3]⟩,36⟩,⟨⟨36,[9,3]⟩,37⟩,⟨⟨36,[9,3]⟩,38⟩,⟨⟨36,[9,3]⟩,39⟩,⟨⟨36,[9,3]⟩,40⟩,⟨⟨36,[9,4]⟩,27⟩,⟨⟨36,[9,4]⟩,28⟩,⟨⟨36,[9,4]⟩,36⟩,⟨⟨36,[9,4]⟩,37⟩,⟨⟨36,[9,4]⟩,38⟩]
def getStB132 (i : Nat) : AState := tableBlock% i 132 [⟨⟨36,[9,4]⟩,39⟩,⟨⟨36,[9,4]⟩,40⟩,⟨⟨36,[10,2]⟩,29⟩,⟨⟨36,[11,5]⟩,30⟩,⟨⟨36,[12,6]⟩,31⟩,⟨⟨37,[7,0]⟩,36⟩,⟨⟨37,[7,0]⟩,37⟩,⟨⟨37,[7,0]⟩,38⟩,⟨⟨37,[7,0]⟩,39⟩,⟨⟨37,[7,0]⟩,40⟩,⟨⟨37,[8,1]⟩,41⟩,⟨⟨37,[9,3]⟩,42⟩]
def getStB144 (i : Nat) : AState := tableBlock% i 144 [⟨⟨37,[9,3]⟩,43⟩,⟨⟨37,[9,3]⟩,44⟩,⟨⟨37,[9,3]⟩,45⟩,⟨⟨37,[9,3]⟩,46⟩,⟨⟨37,[9,3]⟩,47⟩,⟨⟨37,[9,4]⟩,48⟩,⟨⟨37,[9,4]⟩,49⟩,⟨⟨37,[9,4]⟩,50⟩,⟨⟨37,[9,4]⟩,51⟩,⟨⟨37,[9,4]⟩,52⟩,⟨⟨37,[9,4]⟩,53⟩,⟨⟨37,[10,2]⟩,54⟩]
def getStB156 (i : Nat) : AState := tableBlock% i 156 [⟨⟨37,[11,5]⟩,55⟩,⟨⟨37,[12,6]⟩,56⟩,⟨⟨38,[8,1]⟩,27⟩,⟨⟨38,[8,1]⟩,28⟩,⟨⟨38,[8,1]⟩,35⟩,⟨⟨38,[8,1]⟩,36⟩,⟨⟨38,[8,1]⟩,37⟩,⟨⟨38,[8,1]⟩,38⟩,⟨⟨38,[8,1]⟩,39⟩,⟨⟨38,[8,1]⟩,40⟩,⟨⟨38,[10,2]⟩,42⟩,⟨⟨38,[10,2]⟩,43⟩]
def getStB168 (i : Nat) : AState := tableBlock% i 168 [⟨⟨38,[10,2]⟩,44⟩,⟨⟨38,[10,2]⟩,45⟩,⟨⟨38,[10,2]⟩,46⟩,⟨⟨38,[10,2]⟩,47⟩,⟨⟨38,[11,5]⟩,3⟩,⟨⟨38,[11,5]⟩,27⟩,⟨⟨38,[11,5]⟩,28⟩,⟨⟨38,[11,5]⟩,36⟩,⟨⟨38,[11,5]⟩,37⟩,⟨⟨38,[11,5]⟩,38⟩,⟨⟨38,[11,5]⟩,39⟩,⟨⟨38,[11,5]⟩,40⟩]
def getStB180 (i : Nat) : AState := tableBlock% i 180 [⟨⟨38,[12,6]⟩,48⟩,⟨⟨38,[12,6]⟩,49⟩,⟨⟨38,[12,6]⟩,50⟩,⟨⟨38,[12,6]⟩,51⟩,⟨⟨38,[12,6]⟩,52⟩,⟨⟨38,[12,6]⟩,53⟩,⟨⟨39,[22,11,5]⟩,56⟩,⟨⟨39,[23,8,1]⟩,20⟩,⟨⟨39,[23,8,1]⟩,21⟩,⟨⟨39,[23,11,5]⟩,20⟩,⟨⟨39,[23,11,5]⟩,21⟩,⟨⟨39,[24,8,1]⟩,54⟩]
def getStB192 (i : Nat) : AState := tableBlock% i 192 [⟨⟨39,[25,8,1]⟩,20⟩,⟨⟨39,[25,8,1]⟩,21⟩,⟨⟨39,[25,8,1]⟩,25⟩,⟨⟨39,[25,8,1]⟩,33⟩,⟨⟨39,[25,8,1]⟩,54⟩,⟨⟨39,[25,11,5]⟩,20⟩,⟨⟨39,[25,11,5]⟩,21⟩,⟨⟨39,[25,11,5]⟩,25⟩,⟨⟨39,[25,11,5]⟩,33⟩,⟨⟨39,[25,11,5]⟩,54⟩,⟨⟨39,[26,10,2]⟩,27⟩,⟨⟨39,[26,10,2]⟩,28⟩]
def getStB204 (i : Nat) : AState := tableBlock% i 204 [⟨⟨39,[26,10,2]⟩,36⟩,⟨⟨39,[26,10,2]⟩,37⟩,⟨⟨39,[26,10,2]⟩,38⟩,⟨⟨39,[26,10,2]⟩,39⟩,⟨⟨39,[26,10,2]⟩,40⟩,⟨⟨39,[26,12,6]⟩,27⟩,⟨⟨39,[26,12,6]⟩,28⟩,⟨⟨39,[26,12,6]⟩,36⟩,⟨⟨39,[26,12,6]⟩,37⟩,⟨⟨39,[26,12,6]⟩,38⟩,⟨⟨39,[26,12,6]⟩,39⟩,⟨⟨39,[26,12,6]⟩,40⟩]
def getSt (i : Nat) : AState := if i < 216 then (if i < 108 then (if i < 48 then (if i < 24 then (if i < 12 then getStB0 i else getStB12 i) else (if i < 36 then getStB24 i else getStB36 i)) else (if i < 72 then (if i < 60 then getStB48 i else getStB60 i) else (if i < 84 then getStB72 i else (if i < 96 then getStB84 i else getStB96 i)))) else (if i < 156 then (if i < 132 then (if i < 120 then getStB108 i else getStB120 i) else (if i < 144 then getStB132 i else getStB144 i)) else (if i < 180 then (if i < 168 then getStB156 i else getStB168 i) else (if i < 192 then getStB180 i else (if i < 204 then getStB192 i else getStB204 i))))) else entry
def hintsB0 (i : Nat) : List Nat := tableBlock% i 0 [[1],[2],[3],[4],[5],[32],[7],[8],[9],[10],[33],[12]]
def hintsB12 (i : Nat) : List Nat := tableBlock% i 12 [[172],[173],[174],[175],[176],[177],[178],[179],[26],[27],[28],[29]]
def hintsB24 (i : Nat) : List Nat := tableBlock% i 24 [[30],[31],[34],[35],[36],[37],[38],[39],[40],[41],[42],[43]]
def hintsB36 (i : Nat) : List Nat := tableBlock% i 36 [[44],[47],[45],[46],[48],[49],[50],[50],[51],[52],[53],[54]]
def hintsB48 (i : Nat) : List Nat := tableBlock% i 48 [[55],[56],[57],[58],[59],[60],[61],[62],[63],[64],[65],[66]]
def hintsB60 (i : Nat) : List Nat := tableBlock% i 60 [[67],[68],[69],[70],[71],[72],[73],[74],[75],[76],[77],[78]]
def hintsB72 (i : Nat) : List Nat := tableBlock% i 72 [[79],[80],[81],[82],[83],[84],[116],[119],[120,127],[121,128],[134],[135]]
def hintsB84 (i : Nat) : List Nat := tableBlock% i 84 [[136],[86],[87],[88],[89],[117],[91],[160],[158],[159],[161],[162]]
def hintsB96 (i : Nat) : List Nat := tableBlock% i 96 [[163],[164],[165],[114],[115],[116],[117],[118],[122,129],[123,130],[124,131],[125,132]]
def hintsB108 (i : Nat) : List Nat := tableBlock% i 108 [[126,133],[122,129],[123,130],[124,131],[125,132],[126,133],[139],[139],[137],[138],[140],[142]]
def hintsB120 (i : Nat) : List Nat := tableBlock% i 120 [[144],[144],[143],[145],[146],[147],[148],[150],[150],[149],[151],[152]]
def hintsB132 (i : Nat) : List Nat := tableBlock% i 132 [[153],[154],[155],[156],[157],[104,109],[105,110],[106,111],[107,112],[108,113],[85],[166]]
def hintsB144 (i : Nat) : List Nat := tableBlock% i 144 [[167],[168],[169],[170],[171],[180],[181],[182],[183],[184],[185],[90]]
def hintsB156 (i : Nat) : List Nat := tableBlock% i 156 [[6],[11],[187],[188],[191],[194],[195],[192,193],[196],[192,193,194,195,196],[204],[202,203]]
def hintsB168 (i : Nat) : List Nat := tableBlock% i 168 [[205],[206],[207],[208],[186],[189],[190],[199],[200],[197,198],[201],[197,198,199,200,201]]
def hintsB180 (i : Nat) : List Nat := tableBlock% i 180 [[211],[209,210],[212],[213],[214],[215],[25],[99],[100],[20],[21],[103]]
def hintsB192 (i : Nat) : List Nat := tableBlock% i 192 [[99],[100],[101],[102],[103],[20],[21],[22],[23],[24],[92],[93]]
def hintsB204 (i : Nat) : List Nat := tableBlock% i 204 [[94],[95],[96],[97],[98],[13],[14],[15],[16],[17],[18],[19]]
def hints (i : Nat) : List Nat := if i < 216 then (if i < 108 then (if i < 48 then (if i < 24 then (if i < 12 then hintsB0 i else hintsB12 i) else (if i < 36 then hintsB24 i else hintsB36 i)) else (if i < 72 then (if i < 60 then hintsB48 i else hintsB60 i) else (if i < 84 then hintsB72 i else (if i < 96 then hintsB84 i else hintsB96 i)))) else (if i < 156 then (if i < 132 then (if i < 120 then hintsB108 i else hintsB120 i) else (if i < 144 then hintsB132 i else hintsB144 i)) else (if i < 180 then (if i < 168 then hintsB156 i else hintsB168 i) else (if i < 192 then hintsB180 i else (if i < 204 then hintsB192 i else hintsB204 i))))) else []
def ck (i : Nat) := FloorIndex.check pCode values konts (RegProof.states 216 getSt) i (hints i)
end Blc.Floor45.Reg9692402104538
