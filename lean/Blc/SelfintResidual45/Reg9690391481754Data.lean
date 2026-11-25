import Blc.SelfintResidual45.TableNotation
import Blc.SelfintResidual45.RegProof

set_option Elab.async false
namespace Blc.Floor45.Reg9690391481754
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
def pCodeB0 (i : Nat) : Certgen.Code := tableBlock% i 0 [.app 1 23,.app 2 22,.app 3 7,.lam 4,.app 5 6,.var 0,.var 0,.lam 8,.lam 9,.app 10 11,.var 1,.lam 12]
def pCodeB12 (i : Nat) : Certgen.Code := tableBlock% i 12 [.app 13 19,.app 14 18,.app 15 16,.var 2,.lam 17,.var 1,.var 1,.app 20 21,.var 0,.var 0,.opaque,.lam 24]
def pCodeB24 (i : Nat) : Certgen.Code := tableBlock% i 24 [.app 25 30,.app 26 27,.var 0,.lam 28,.lam 29,.var 1,.lam 31,.app 32 37,.app 33 34,.var 0,.lam 35,.lam 36]
def pCodeB36 (i : Nat) : Certgen.Code := tableBlock% i 36 [.var 1,.lam 38,.app 39 44,.app 40 41,.var 0,.lam 42,.lam 43,.var 0,.lam 45,.app 46 51,.app 47 48,.var 0]
def pCodeB48 (i : Nat) : Certgen.Code := tableBlock% i 48 [.lam 49,.lam 50,.var 1,.opaque]
def pCode (i : Nat) : Certgen.Code := if i < 52 then (if i < 24 then (if i < 12 then pCodeB0 i else pCodeB12 i) else (if i < 36 then pCodeB24 i else (if i < 48 then pCodeB36 i else pCodeB48 i))) else .opaque
def lit47 : Term := .var 0
def lit50 : Term := .var 1
def lit15 : Term := .var 2
def lit42 : Term := .lam lit47
def lit49 : Term := .lam lit50
def lit19 : Term := .app lit47 lit47
def lit41 : Term := .lam lit42
def lit51 : Term := .var 4
def lit48 : Term := .lam lit49
def lit3 : Term := .lam lit19
def lit39 : Term := .app lit47 lit41
def lit14 : Term := .app lit15 lit49
def lit46 : Term := .app lit47 lit48
def lit13 : Term := .app lit14 lit50
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
def getTermB0 (i : Nat) : Term := tableBlock% i 0 [lit0,lit1,lit2,lit3,lit19,lit47,lit47,lit7,lit8,lit9,lit50,lit11]
def getTermB12 (i : Nat) : Term := tableBlock% i 12 [lit12,lit13,lit14,lit15,lit49,lit50,lit50,lit19,lit47,lit47,lit50,lit23]
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
def valuesB0 (i : Nat) : List AClo := tableBlock% i 0 [[⟨19,[10,32,29]⟩],[⟨18,[7,31,30]⟩,⟨18,[8,31,30]⟩],[⟨18,[9,31,30]⟩],[⟨16,[0,31,30]⟩],[⟨16,[1,31,30]⟩,⟨16,[2,31,30]⟩],[⟨16,[7,31,30]⟩,⟨16,[8,31,30]⟩],[⟨16,[9,31,30]⟩],[⟨21,[7,31,30]⟩,⟨21,[8,31,30]⟩],[⟨21,[9,31,30]⟩],[⟨21,[10,32,29]⟩],[⟨11,[31,30]⟩],[⟨19,[3,32,29]⟩]]
def valuesB12 (i : Nat) : List AClo := tableBlock% i 12 [[⟨19,[4,32,29]⟩],[⟨19,[5,32,29]⟩,⟨19,[6,32,29]⟩],[⟨11,[33,25]⟩,⟨11,[34,26]⟩,⟨11,[35,27]⟩],[⟨11,[36,28]⟩],[⟨18,[1,31,30]⟩,⟨18,[2,31,30]⟩],[⟨27,[16]⟩],[⟨30,[16]⟩],[⟨27,[17]⟩],[⟨19,[1,31,30]⟩,⟨19,[2,31,30]⟩],[⟨30,[17]⟩],[⟨7,[]⟩],[⟨19,[7,31,30]⟩,⟨19,[8,31,30]⟩]]
def valuesB24 (i : Nat) : List AClo := tableBlock% i 24 [[⟨19,[9,31,30]⟩],[⟨16,[3,32,29]⟩],[⟨16,[4,32,29]⟩],[⟨16,[5,32,29]⟩,⟨16,[6,32,29]⟩],[⟨16,[10,32,29]⟩],[⟨6,[22]⟩],[⟨11,[32,29]⟩],[⟨23,[]⟩],[⟨22,[]⟩],[⟨18,[3,32,29]⟩],[⟨18,[4,32,29]⟩],[⟨18,[5,32,29]⟩,⟨18,[6,32,29]⟩]]
def valuesB36 (i : Nat) : List AClo := [⟨18,[10,32,29]⟩]
def values (i : Nat) : List AClo := if i < 37 then (if i < 24 then (if i < 12 then valuesB0 i else valuesB12 i) else (if i < 36 then valuesB24 i else valuesB36 i)) else []
def kontsB0 (i : Nat) : List Frame := tableBlock% i 0 [[],[⟨⟨23,[]⟩,0⟩],[⟨⟨22,[]⟩,1⟩],[⟨⟨19,[0,31,30]⟩,0⟩],[⟨⟨19,[1,31,30]⟩,10⟩,⟨⟨19,[1,31,30]⟩,11⟩],[⟨⟨19,[2,31,30]⟩,12⟩],[⟨⟨19,[3,32,29]⟩,14⟩],[⟨⟨19,[4,32,29]⟩,15⟩,⟨⟨19,[4,32,29]⟩,16⟩],[⟨⟨19,[5,32,29]⟩,21⟩,⟨⟨19,[5,32,29]⟩,22⟩],[⟨⟨19,[6,32,29]⟩,23⟩],[⟨⟨19,[7,31,30]⟩,47⟩],[⟨⟨19,[8,31,30]⟩,48⟩]]
def kontsB12 (i : Nat) : List Frame := tableBlock% i 12 [[⟨⟨19,[9,31,30]⟩,14⟩],[⟨⟨19,[10,32,29]⟩,0⟩],[⟨⟨18,[0,31,30]⟩,3⟩],[⟨⟨18,[1,31,30]⟩,4⟩],[⟨⟨18,[2,31,30]⟩,5⟩],[⟨⟨18,[3,32,29]⟩,6⟩],[⟨⟨18,[4,32,29]⟩,7⟩],[⟨⟨18,[5,32,29]⟩,8⟩],[⟨⟨18,[6,32,29]⟩,9⟩],[⟨⟨18,[7,31,30]⟩,10⟩],[⟨⟨18,[8,31,30]⟩,11⟩],[⟨⟨18,[9,31,30]⟩,12⟩]]
def kontsB24 (i : Nat) : List Frame := tableBlock% i 24 [[⟨⟨18,[10,32,29]⟩,13⟩],[⟨⟨16,[0,31,30]⟩,14⟩],[⟨⟨16,[1,31,30]⟩,15⟩],[⟨⟨16,[2,31,30]⟩,16⟩],[⟨⟨16,[3,32,29]⟩,17⟩],[⟨⟨16,[4,32,29]⟩,18⟩],[⟨⟨16,[5,32,29]⟩,19⟩],[⟨⟨16,[6,32,29]⟩,20⟩],[⟨⟨16,[7,31,30]⟩,21⟩],[⟨⟨16,[8,31,30]⟩,22⟩],[⟨⟨16,[9,31,30]⟩,23⟩],[⟨⟨16,[10,32,29]⟩,24⟩]]
def kontsB36 (i : Nat) : List Frame := tableBlock% i 36 [[⟨⟨21,[7,31,30]⟩,47⟩],[⟨⟨21,[8,31,30]⟩,47⟩],[⟨⟨21,[9,31,30]⟩,48⟩],[⟨⟨21,[10,32,29]⟩,14⟩],[⟨⟨7,[]⟩,2⟩],[⟨⟨30,[16]⟩,4⟩,⟨⟨30,[16]⟩,5⟩],[⟨⟨30,[17]⟩,41⟩],[⟨⟨27,[16]⟩,41⟩],[⟨⟨27,[17]⟩,42⟩],[⟨⟨37,[23,16]⟩,47⟩,⟨⟨37,[23,16]⟩,48⟩],[⟨⟨37,[24,16]⟩,14⟩],[⟨⟨34,[23,16]⟩,45⟩]]
def kontsB48 (i : Nat) : List Frame := tableBlock% i 48 [[⟨⟨34,[24,16]⟩,46⟩],[⟨⟨6,[22]⟩,2⟩],[⟨⟨11,[31,30]⟩,0⟩],[⟨⟨11,[32,29]⟩,1⟩],[⟨⟨11,[33,25]⟩,6⟩],[⟨⟨11,[34,26]⟩,7⟩],[⟨⟨11,[35,27]⟩,8⟩,⟨⟨11,[35,27]⟩,9⟩],[⟨⟨11,[36,28]⟩,13⟩]]
def konts (i : Nat) : List Frame := if i < 56 then (if i < 24 then (if i < 12 then kontsB0 i else kontsB12 i) else (if i < 36 then kontsB24 i else (if i < 48 then kontsB36 i else kontsB48 i))) else []
def getStB0 (i : Nat) : AState := tableBlock% i 0 [⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[]⟩,40⟩,⟨⟨4,[22]⟩,2⟩,⟨⟨5,[22]⟩,49⟩,⟨⟨6,[22]⟩,28⟩,⟨⟨6,[22]⟩,29⟩,⟨⟨6,[22]⟩,30⟩,⟨⟨6,[22]⟩,31⟩,⟨⟨6,[22]⟩,35⟩,⟨⟨6,[22]⟩,51⟩]
def getStB12 (i : Nat) : AState := tableBlock% i 12 [⟨⟨7,[]⟩,28⟩,⟨⟨7,[]⟩,29⟩,⟨⟨7,[]⟩,30⟩,⟨⟨7,[]⟩,31⟩,⟨⟨7,[]⟩,35⟩,⟨⟨7,[]⟩,49⟩,⟨⟨7,[]⟩,51⟩,⟨⟨8,[25]⟩,17⟩,⟨⟨8,[26]⟩,18⟩,⟨⟨8,[27]⟩,19⟩,⟨⟨8,[27]⟩,20⟩,⟨⟨8,[28]⟩,24⟩]
def getStB24 (i : Nat) : AState := tableBlock% i 24 [⟨⟨8,[29]⟩,2⟩,⟨⟨8,[30]⟩,1⟩,⟨⟨9,[31,30]⟩,0⟩,⟨⟨9,[32,29]⟩,1⟩,⟨⟨9,[33,25]⟩,6⟩,⟨⟨9,[34,26]⟩,7⟩,⟨⟨9,[35,27]⟩,8⟩,⟨⟨9,[35,27]⟩,9⟩,⟨⟨9,[36,28]⟩,13⟩,⟨⟨10,[31,30]⟩,50⟩,⟨⟨10,[32,29]⟩,51⟩,⟨⟨10,[33,25]⟩,52⟩]
def getStB36 (i : Nat) : AState := tableBlock% i 36 [⟨⟨10,[34,26]⟩,53⟩,⟨⟨10,[35,27]⟩,54⟩,⟨⟨10,[36,28]⟩,55⟩,⟨⟨11,[31,30]⟩,13⟩,⟨⟨11,[31,30]⟩,21⟩,⟨⟨11,[31,30]⟩,22⟩,⟨⟨11,[31,30]⟩,23⟩,⟨⟨11,[31,30]⟩,36⟩,⟨⟨11,[31,30]⟩,37⟩,⟨⟨11,[31,30]⟩,38⟩,⟨⟨11,[31,30]⟩,39⟩,⟨⟨11,[32,29]⟩,25⟩]
def getStB48 (i : Nat) : AState := tableBlock% i 48 [⟨⟨11,[32,29]⟩,26⟩,⟨⟨11,[32,29]⟩,27⟩,⟨⟨11,[32,29]⟩,32⟩,⟨⟨11,[32,29]⟩,33⟩,⟨⟨11,[32,29]⟩,34⟩,⟨⟨11,[32,29]⟩,50⟩,⟨⟨12,[0,31,30]⟩,0⟩,⟨⟨12,[1,31,30]⟩,10⟩,⟨⟨12,[1,31,30]⟩,11⟩,⟨⟨12,[2,31,30]⟩,12⟩,⟨⟨12,[3,32,29]⟩,14⟩,⟨⟨12,[4,32,29]⟩,15⟩]
def getStB60 (i : Nat) : AState := tableBlock% i 60 [⟨⟨12,[4,32,29]⟩,16⟩,⟨⟨12,[5,32,29]⟩,21⟩,⟨⟨12,[5,32,29]⟩,22⟩,⟨⟨12,[6,32,29]⟩,23⟩,⟨⟨12,[7,31,30]⟩,47⟩,⟨⟨12,[8,31,30]⟩,48⟩,⟨⟨12,[9,31,30]⟩,14⟩,⟨⟨12,[10,32,29]⟩,0⟩,⟨⟨13,[0,31,30]⟩,3⟩,⟨⟨13,[1,31,30]⟩,4⟩,⟨⟨13,[2,31,30]⟩,5⟩,⟨⟨13,[3,32,29]⟩,6⟩]
def getStB72 (i : Nat) : AState := tableBlock% i 72 [⟨⟨13,[4,32,29]⟩,7⟩,⟨⟨13,[5,32,29]⟩,8⟩,⟨⟨13,[6,32,29]⟩,9⟩,⟨⟨13,[7,31,30]⟩,10⟩,⟨⟨13,[8,31,30]⟩,11⟩,⟨⟨13,[9,31,30]⟩,12⟩,⟨⟨13,[10,32,29]⟩,13⟩,⟨⟨14,[0,31,30]⟩,14⟩,⟨⟨14,[1,31,30]⟩,15⟩,⟨⟨14,[2,31,30]⟩,16⟩,⟨⟨14,[3,32,29]⟩,17⟩,⟨⟨14,[4,32,29]⟩,18⟩]
def getStB84 (i : Nat) : AState := tableBlock% i 84 [⟨⟨14,[5,32,29]⟩,19⟩,⟨⟨14,[6,32,29]⟩,20⟩,⟨⟨14,[7,31,30]⟩,21⟩,⟨⟨14,[8,31,30]⟩,22⟩,⟨⟨14,[9,31,30]⟩,23⟩,⟨⟨14,[10,32,29]⟩,24⟩,⟨⟨15,[0,31,30]⟩,25⟩,⟨⟨15,[1,31,30]⟩,26⟩,⟨⟨15,[2,31,30]⟩,27⟩,⟨⟨15,[3,32,29]⟩,28⟩,⟨⟨15,[4,32,29]⟩,29⟩,⟨⟨15,[5,32,29]⟩,30⟩]
def getStB96 (i : Nat) : AState := tableBlock% i 96 [⟨⟨15,[6,32,29]⟩,31⟩,⟨⟨15,[7,31,30]⟩,32⟩,⟨⟨15,[8,31,30]⟩,33⟩,⟨⟨15,[9,31,30]⟩,34⟩,⟨⟨15,[10,32,29]⟩,35⟩,⟨⟨16,[0,31,30]⟩,6⟩,⟨⟨16,[1,31,30]⟩,7⟩,⟨⟨16,[2,31,30]⟩,7⟩,⟨⟨16,[3,32,29]⟩,52⟩,⟨⟨16,[4,32,29]⟩,53⟩,⟨⟨16,[5,32,29]⟩,54⟩,⟨⟨16,[6,32,29]⟩,54⟩]
def getStB108 (i : Nat) : AState := tableBlock% i 108 [⟨⟨16,[7,31,30]⟩,8⟩,⟨⟨16,[7,31,30]⟩,9⟩,⟨⟨16,[8,31,30]⟩,8⟩,⟨⟨16,[8,31,30]⟩,9⟩,⟨⟨16,[9,31,30]⟩,8⟩,⟨⟨16,[9,31,30]⟩,9⟩,⟨⟨16,[10,32,29]⟩,55⟩,⟨⟨17,[11,0,31,30]⟩,14⟩,⟨⟨17,[12,1,31,30]⟩,15⟩,⟨⟨17,[12,1,31,30]⟩,16⟩,⟨⟨17,[12,2,31,30]⟩,15⟩,⟨⟨17,[12,2,31,30]⟩,16⟩]
def getStB120 (i : Nat) : AState := tableBlock% i 120 [⟨⟨17,[13,7,31,30]⟩,21⟩,⟨⟨17,[13,7,31,30]⟩,22⟩,⟨⟨17,[13,7,31,30]⟩,23⟩,⟨⟨17,[13,8,31,30]⟩,21⟩,⟨⟨17,[13,8,31,30]⟩,22⟩,⟨⟨17,[13,8,31,30]⟩,23⟩,⟨⟨17,[13,9,31,30]⟩,21⟩,⟨⟨17,[13,9,31,30]⟩,22⟩,⟨⟨17,[13,9,31,30]⟩,23⟩,⟨⟨17,[14,3,32,29]⟩,6⟩,⟨⟨17,[14,4,32,29]⟩,7⟩,⟨⟨17,[14,5,32,29]⟩,8⟩]
def getStB132 (i : Nat) : AState := tableBlock% i 132 [⟨⟨17,[14,5,32,29]⟩,9⟩,⟨⟨17,[14,6,32,29]⟩,8⟩,⟨⟨17,[14,6,32,29]⟩,9⟩,⟨⟨17,[15,10,32,29]⟩,13⟩,⟨⟨18,[1,31,30]⟩,43⟩,⟨⟨18,[2,31,30]⟩,43⟩,⟨⟨18,[7,31,30]⟩,15⟩,⟨⟨18,[7,31,30]⟩,16⟩,⟨⟨18,[8,31,30]⟩,15⟩,⟨⟨18,[8,31,30]⟩,16⟩,⟨⟨18,[9,31,30]⟩,15⟩,⟨⟨18,[9,31,30]⟩,16⟩]
def getStB144 (i : Nat) : AState := tableBlock% i 144 [⟨⟨19,[7,31,30]⟩,47⟩,⟨⟨19,[8,31,30]⟩,47⟩,⟨⟨19,[9,31,30]⟩,48⟩,⟨⟨19,[10,32,29]⟩,14⟩,⟨⟨20,[7,31,30]⟩,36⟩,⟨⟨20,[8,31,30]⟩,37⟩,⟨⟨20,[9,31,30]⟩,38⟩,⟨⟨20,[10,32,29]⟩,39⟩,⟨⟨21,[7,31,30]⟩,21⟩,⟨⟨21,[7,31,30]⟩,22⟩,⟨⟨21,[7,31,30]⟩,23⟩,⟨⟨21,[7,31,30]⟩,36⟩]
def getStB156 (i : Nat) : AState := tableBlock% i 156 [⟨⟨21,[8,31,30]⟩,21⟩,⟨⟨21,[8,31,30]⟩,22⟩,⟨⟨21,[8,31,30]⟩,23⟩,⟨⟨21,[8,31,30]⟩,36⟩,⟨⟨21,[9,31,30]⟩,21⟩,⟨⟨21,[9,31,30]⟩,22⟩,⟨⟨21,[9,31,30]⟩,23⟩,⟨⟨21,[9,31,30]⟩,36⟩,⟨⟨21,[9,31,30]⟩,37⟩,⟨⟨21,[10,32,29]⟩,21⟩,⟨⟨21,[10,32,29]⟩,22⟩,⟨⟨21,[10,32,29]⟩,23⟩]
def getStB168 (i : Nat) : AState := tableBlock% i 168 [⟨⟨21,[10,32,29]⟩,36⟩,⟨⟨21,[10,32,29]⟩,37⟩,⟨⟨21,[10,32,29]⟩,38⟩,⟨⟨23,[]⟩,15⟩,⟨⟨23,[]⟩,16⟩,⟨⟨23,[]⟩,43⟩,⟨⟨24,[16]⟩,4⟩,⟨⟨24,[16]⟩,5⟩,⟨⟨24,[17]⟩,41⟩,⟨⟨25,[16]⟩,41⟩,⟨⟨25,[17]⟩,42⟩,⟨⟨26,[16]⟩,43⟩]
def getStB180 (i : Nat) : AState := tableBlock% i 180 [⟨⟨26,[17]⟩,44⟩,⟨⟨27,[16]⟩,44⟩,⟨⟨27,[17]⟩,41⟩,⟨⟨28,[18,17]⟩,4⟩,⟨⟨28,[18,17]⟩,5⟩,⟨⟨28,[19,16]⟩,42⟩,⟨⟨29,[20,18,17]⟩,10⟩,⟨⟨29,[20,18,17]⟩,11⟩,⟨⟨29,[20,18,17]⟩,12⟩,⟨⟨29,[21,19,16]⟩,41⟩,⟨⟨30,[16]⟩,10⟩,⟨⟨30,[16]⟩,11⟩]
def getStB192 (i : Nat) : AState := tableBlock% i 192 [⟨⟨30,[16]⟩,12⟩,⟨⟨31,[23,16]⟩,47⟩,⟨⟨31,[23,16]⟩,48⟩,⟨⟨31,[24,16]⟩,14⟩,⟨⟨32,[23,16]⟩,45⟩,⟨⟨32,[24,16]⟩,46⟩,⟨⟨33,[23,16]⟩,47⟩,⟨⟨33,[24,16]⟩,48⟩]
def getSt (i : Nat) : AState := if i < 200 then (if i < 96 then (if i < 48 then (if i < 24 then (if i < 12 then getStB0 i else getStB12 i) else (if i < 36 then getStB24 i else getStB36 i)) else (if i < 72 then (if i < 60 then getStB48 i else getStB60 i) else (if i < 84 then getStB72 i else getStB84 i))) else (if i < 144 then (if i < 120 then (if i < 108 then getStB96 i else getStB108 i) else (if i < 132 then getStB120 i else getStB132 i)) else (if i < 168 then (if i < 156 then getStB144 i else getStB156 i) else (if i < 180 then getStB168 i else (if i < 192 then getStB180 i else getStB192 i))))) else entry
def hintsB0 (i : Nat) : List Nat := tableBlock% i 0 [[1],[2],[3],[4],[5],[17],[12],[13],[14],[15],[16],[18]]
def hintsB12 (i : Nat) : List Nat := tableBlock% i 12 [[19],[20],[21],[22],[23],[24],[25],[28],[29],[30],[31],[32]]
def hintsB24 (i : Nat) : List Nat := tableBlock% i 24 [[27],[26],[33],[34],[35],[36],[37],[37],[38],[53],[11],[104]]
def hintsB36 (i : Nat) : List Nat := tableBlock% i 36 [[105],[106,107],[114],[54],[55],[56],[57],[64],[64],[65],[66],[58]]
def hintsB48 (i : Nat) : List Nat := tableBlock% i 48 [[59],[60],[61],[62],[63],[67],[68],[69],[69],[70],[71],[72]]
def hintsB60 (i : Nat) : List Nat := tableBlock% i 60 [[72],[73],[73],[74],[75],[76],[77],[78],[79],[80],[81],[82]]
def hintsB72 (i : Nat) : List Nat := tableBlock% i 72 [[83],[84],[85],[86],[87],[88],[89],[90],[91],[92],[93],[94]]
def hintsB84 (i : Nat) : List Nat := tableBlock% i 84 [[95],[96],[97],[98],[99],[100],[47],[48],[49],[6],[7],[8]]
def hintsB96 (i : Nat) : List Nat := tableBlock% i 96 [[9],[50],[51],[52],[10],[115],[116,117],[118,119],[129],[130],[131,132],[133,134]]
def hintsB108 (i : Nat) : List Nat := tableBlock% i 108 [[120,121],[122],[123,124],[125],[126,127],[128],[135],[147],[138,140],[139,141],[142],[143]]
def hintsB120 (i : Nat) : List Nat := tableBlock% i 120 [[152,156],[153,157],[154,158],[160],[161],[162],[165],[166],[167],[101],[102,103],[108,110]]
def hintsB132 (i : Nat) : List Nat := tableBlock% i 132 [[109,111],[112],[113],[39],[173],[173],[171],[172],[171],[172],[171],[172]]
def hintsB144 (i : Nat) : List Nat := tableBlock% i 144 [[148],[149],[150],[151],[155,159],[164],[170],[46],[152,156],[153,157],[154,158],[155,159]]
def hintsB156 (i : Nat) : List Nat := tableBlock% i 156 [[160],[161],[162],[163],[165],[166],[167],[168],[169],[40],[41],[42]]
def hintsB168 (i : Nat) : List Nat := tableBlock% i 168 [[43],[44],[45],[174],[175],[176],[177],[177],[178],[179],[180],[136,137]]
def hintsB180 (i : Nat) : List Nat := tableBlock% i 180 [[181],[185],[183,184],[186,187],[188],[189],[190],[191],[192],[182],[193],[194]]
def hintsB192 (i : Nat) : List Nat := tableBlock% i 192 [[195],[196],[196],[197],[198],[199],[144,145],[146]]
def hints (i : Nat) : List Nat := if i < 200 then (if i < 96 then (if i < 48 then (if i < 24 then (if i < 12 then hintsB0 i else hintsB12 i) else (if i < 36 then hintsB24 i else hintsB36 i)) else (if i < 72 then (if i < 60 then hintsB48 i else hintsB60 i) else (if i < 84 then hintsB72 i else hintsB84 i))) else (if i < 144 then (if i < 120 then (if i < 108 then hintsB96 i else hintsB108 i) else (if i < 132 then hintsB120 i else hintsB132 i)) else (if i < 168 then (if i < 156 then hintsB144 i else hintsB156 i) else (if i < 180 then hintsB168 i else (if i < 192 then hintsB180 i else hintsB192 i))))) else []
def ck (i : Nat) := FloorIndex.check pCode values konts (RegProof.states 200 getSt) i (hints i)
end Blc.Floor45.Reg9690391481754
